import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:get_it/get_it.dart';

import 'package:client/models/comment.dart';
import 'package:client/models/post.dart';
import 'package:client/palette.dart';
import 'package:client/services/local_services.dart';
import 'package:client/services/remote_services.dart';
import 'package:client/views/app_bar.dart';
import 'package:client/views/comment_list_view.dart';
import 'package:client/views/home_page.dart';
import 'package:client/views/user_page.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:client/graphql/graphql_service.dart';

class FullScreenPostWidget extends StatefulWidget {
  final Post post;

  const FullScreenPostWidget({super.key, required this.post});

  @override
  FullScreenPostWidgetState createState() => FullScreenPostWidgetState();
}

class FullScreenPostWidgetState extends State<FullScreenPostWidget> {
  //late List<Comment> comments = [];
  late List<dynamic> comments = [];
  late Post post;
  //late String id;
  int page = 0;
  bool end = false;
  bool isLoaded = false;
  TextEditingController commentController = TextEditingController();
  bool isOwnPost = false;
  Image? image;
  Uint8List? imageBytes;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    commentController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    post = widget.post;
    getData();
  }

  getData() async {
    /*RemoteService().getPostPicture(post.id).then((value) {
      setState(() {
        imageBytes = value;
        image = Image.memory(value);
      });
    });*/
    String getComments = '''
      query queryCommentsById(\$id:ID!) {
        comments : queryCommentsById(id:\$id){
            id
            userId
            username
            text
            comments
        }
      }
''';
    final QueryOptions options = QueryOptions(
      document: gql(getComments),
      variables: <String, dynamic>{
        'id': post.comments,
      },
    );
    final locator = GetIt.instance;
    final _graphqlService = locator<GraphqlService>();
    final GraphQLClient gqlClient = _graphqlService.client;
    final QueryResult result = await gqlClient.query(options);

    //comments = await remoteService.getComments(0, post.id);
    comments = result.data?["comments"] as List<dynamic>;
    setState(() {
      isLoaded = true;
    });
    /*LocalServices().getUserId().then((value) {
      if (value == post.userId) {
        setState(() {
          isOwnPost = true;
        });
      }
    });*/
  }

  Future<bool> addComment(String parent, String comment_text) async{
    bool res = true;

    String getPosts = """
      mutation AddComment(\$comment:CommentInput!) {
          addComment(comment : \$comment) {
              id
              userId
              username
              text
          }
      }

""";
    final MutationOptions options = MutationOptions(
      document: gql(getPosts),
      variables: <String, dynamic>{
        'comment': {
          "userId" : await localServices.getUserId(),// "6761a3cafa3ed9777aec29c5",
          "username" : await localServices.getUserName(),//"test123@test.com",
          "text" : comment_text,
          "parent" : parent,
          //"title" : "title"
        },
      },
    );
    final locator = GetIt.instance;
    final _graphqlService = locator<GraphqlService>();
    final GraphQLClient gqlClient = _graphqlService.client;
    final QueryResult result = await gqlClient.mutate(options);

    if (result.hasException) {
      print(result.exception.toString());
    }

    //final List<dynamic> repositories =
    //List<dynamic> posts = result.data?['addPosts'] as List<dynamic>;

    return res;

  }

  addNextPage() {
    /*page++;
    remoteService.getComments(page, post.id).then((value) => setState(() {
          comments.addAll(value);
          if (value.isEmpty) end = true;
        }));*/
    //reload the page
  }

  //Page to display a post in full screen including the post Content and Comments
  @override
  Widget build(BuildContext context) {
    String date = LocalServices().getFormatedDate(post.date);

    return Scaffold(
      backgroundColor: Palette.BlueToDark,
      appBar: isOwnPost
          ? buildEditAppBar(context, post, image)
          : buildAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: Palette.BlueToDark,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Palette.BlueToLight[400],
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 16, right: 16),
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.account_circle,
                          size: 15,
                          color: Colors.black54,
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserPage(
                                  userId: post.userId,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            post.userName,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Icon(
                          Icons.access_time,
                          size: 15,
                          color: Colors.black54,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(width: 16),
                        if (post.edited)
                          const Text(
                            '(Edited)',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      post.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      post.content,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    // Picture here if it exists
                    if (image != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child:  GestureDetector(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FullScreenImage(image: imageBytes!),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageHero',
                            child: image!,
                          ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Palette.BlueToLight,
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 16, right: 16),
                child: Row(
                  children: const [
                    Text(
                      'Comments',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Palette.OrangeToDark,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 16, left: 16, right: 16),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: commentController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () async {
                          String text = commentController.text;
                          if (commentController.text.isNotEmpty) {
                            bool res = await addComment(post.comments, text);
                            if (res == true)
                            {
                              setState(() {
                                comments.insert(
                                    0,
                                    Comment(
                                        userId: '0',
                                        content: text,
                                        date: DateTime.now(),
                                        userName: 'Me',
                                        id: '0'));
                              });
                            }
                            /*remoteService
                                .addComment(post.id, text)
                                .then((value) => {
                                      if (value == true)
                                        {
                                          setState(() {
                                            comments.insert(
                                                0,
                                                Comment(
                                                    userId: '0',
                                                    content: text,
                                                    date: DateTime.now(),
                                                    userName: 'Me',
                                                    id: '0'));
                                          })
                                        }
                                    });*/
                            commentController.clear();
                          }
                        },
                        icon: const Icon(Icons.send)),
                    fillColor: Palette.Back,
                    filled: true,
                    hintText: 'Write a comment',
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    int? postLength = comments.length;
                    if (index == postLength && !end) {
                      addNextPage();
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else if (index < postLength) {
                      final comment = Comment.fromJson(comments[index]);
                      return CommentWidget(comment: comment);
                    }
                    return null;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final Uint8List  image;

  const FullScreenImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.BlueToDark,
      appBar: buildAppBar(context),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: InteractiveViewer(
          maxScale: 10.0,
          minScale: 0.75,
          boundaryMargin: const EdgeInsets.all(30.0),
          scaleEnabled: true,
          constrained: true,
          child: Hero(
            tag: 'imageHero',
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.memory(image),
              ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          final tempDir = await getTemporaryDirectory();
          String fileExtension = 'jpg';
          if (image[0] == 0x47) {
            fileExtension = 'gif';
          } else if (image[0] == 0x89) {
            fileExtension = 'png';
          }
          final file = File('${tempDir.path}/image.$fileExtension');
          await file.writeAsBytes(image);
          Share.shareXFiles([XFile(file.path)]);
        },
        tooltip: 'Share Image',
        child: const Icon(Icons.share),
      ),
    );
  }
}