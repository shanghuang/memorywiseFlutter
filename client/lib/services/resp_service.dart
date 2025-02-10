
import 'package:http/http.dart' as http;
import 'dart:convert';
//import '../utils/jwt_storage.dart';
import 'package:client/models/user_response.dart';
import 'package:client/services/local_services.dart';
import 'package:client/services/remote_services.dart';

Future<UserResponse> login(String email, String password) async {
  final response = await http.post(
    Uri.parse('http://192.168.1.77:4000/api/users/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
    }),
  );

  dynamic res = jsonDecode(response.body);
  dynamic status = res["success"];
  dynamic value = res["data"];
  if (response.statusCode == 200) {
    //return value['token'];
    var token = value["token"];
    var userName = value["email"];
    var userId = value["userId"];
    var date = DateTime.now().add(const Duration(hours: 24));
    await localServices.writeUserData(
        userName, userId, token, date.toString());
    //return authResponseFromJson(response.body);

    return UserResponse(
        id:value['userId'],
        email:value['email'],
        token:value['token'],
        //userName:value['userName'],    //todo:
        userName:value['email'],
    );
  } else {
    throw Exception('Failed to login');
  }
}
/*
Future<String> getUserInfo(String id) async {
  String? token = await getToken();

  if(token == null){
    return "";
  }
  final response = await http.get(
    Uri.parse('http://192.168.1.77:4000/api/users/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      HttpHeaders.authorizationHeader: token,
    },
  );

  dynamic res = jsonDecode(response.body);
  dynamic status = res
  ["success"];
  dynamic value = res["data"];
  if (response.statusCode == 200) {
    return value['email'];
  } else {
    throw Exception('Failed to get user info');
  }
}

Future<String> getAllUsers() async {

  final dynamic getUserQuery = gql(r'''
      query Users {
          users {
              email
              password
          }
      }
''');

  final readRespositoriesResult = useQuery(
    QueryOptions(
      document: getUserQuery, // this is the query string you just created
      variables: {
        'nRepositories': 50,
      },
      pollInterval: const Duration(seconds: 10),
    ),
  );
  final result = readRespositoriesResult.result;

  if (result.hasException) {
    return result.exception.toString();
  }

  if (result.isLoading) {
    return 'Loading';
  }

  List? repositories = result.data?['users'];

  if (repositories == null) {
    return 'No repositories';
  }

  return "";
}*/
