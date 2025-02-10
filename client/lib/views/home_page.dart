import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:get_it/get_it.dart';

import 'package:client/models/post.dart';
import 'package:client/palette.dart';
import 'package:client/services/remote_services.dart';
import 'package:client/views/app_bar.dart';
import 'package:client/views/create_post.dart';
import 'package:client/views/post_list_view.dart';
import 'package:client/graphql/graphql_service.dart';

RemoteService remoteService = RemoteService();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<dynamic>? posts;
  var isLoaded = false;
  int page = 0;
  bool end = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    /*posts = await remoteService.getPostsPage(0);
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }*/
    String getPosts = """
      query QueryPosts {
        queryPosts {
            id
            user
            username
            keyword
            text
            image
            date
            comments
        }
    }
""";
    final QueryOptions options = QueryOptions(
      document: gql(getPosts),
      variables: <String, dynamic>{
        'nRepositories': 50,
      },
      fetchPolicy: FetchPolicy.noCache,
    );
    final locator = GetIt.instance;
    final _graphqlService = locator<GraphqlService>();
    final GraphQLClient gqlClient = _graphqlService.client;
    final QueryResult result = await gqlClient.query(options);

    if (result.hasException) {
      print(result.exception.toString());
    }

    //final List<dynamic> repositories =
    posts = result.data?['queryPosts'] as List<dynamic>;
    //posts = repositories as List<Post>;
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  addNextPage() {
    page++;
    /*remoteService.getPostsPage(page).then((value) => setState(() {
          posts!.addAll(value!);
          if (value.isEmpty) end = true;
        }));*/
    end = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => const AddPostWidget(),
          ));
        },
        backgroundColor: Palette.OrangeToDark,
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        color: Palette.OrangeToDark,
        backgroundColor: Palette.BlueToLight[50],
        onRefresh: () async {
          page = 0;
          end = false;
          /*await remoteService.getPostsPage(0).then((value) => setState(() {
                posts = value;
              }));*/
          getData();
        },
        child: Visibility(
          visible: isLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              int? postLength = posts?.length;

              if (index == postLength && !end) {
                addNextPage();
                return Container(
                  padding: const EdgeInsets.all(16),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (index < postLength!) {
                final post_map = posts![index];
                Post post = Post.fromJson(post_map);
                return PostWidget(post: post);
              }
              return null;
            },
          ),
        ),
      ),
      backgroundColor: Palette.BlueToDark,
    );
  }
}











