import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlService {

  late GraphQLClient client;

  ValueNotifier<GraphQLClient> graphql_connect(String token){
    final HttpLink httpLink = HttpLink(
      "http://192.168.1.77:4000/api/graphql",
      defaultHeaders: {
        'Authorization': 'Bearer $token',
        'AuthorizationSource': 'API',
      },
    );

    client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );

    final ValueNotifier<GraphQLClient> notifier_client = ValueNotifier(GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    ));

    return notifier_client;
  }
}