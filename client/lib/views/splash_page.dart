import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:get_it/get_it.dart';

import 'package:client/palette.dart';
import 'package:client/services/remote_services.dart';
import 'package:client/views/home_page.dart';
import 'package:client/views/login_page.dart';
import 'package:client/graphql/graphql_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    checkIfLoggedIn();
  }

  Future<void> checkIfLoggedIn() async {
    RemoteService remoteService = RemoteService();
    await remoteService.isLoggedIn().then((value) {
      if (value!=null) {
        final locator = GetIt.instance;
        final _graphqlService = locator<GraphqlService>();
        final ValueNotifier<GraphQLClient> gqlClient = _graphqlService.graphql_connect(value);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => GraphQLProvider(
              client: gqlClient,
              child: const HomePage()
            )
          )
        );
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : Column(
                children: <Widget>[
                  const SizedBox(height: 150),
                  Image.asset(
                    'assets/images/ghse-banner.png',
                    fit: BoxFit.contain,
                    height: 150,
                  ),
                  const SizedBox(height: 200),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text('Log In'),
                  ),
                ],
              ),
      ),
      backgroundColor: Palette.BlueToLight[500],
    );
  }
}
