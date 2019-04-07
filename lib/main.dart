import 'package:flutter/material.dart';
import 'package:treva/constants/constants.dart';
import 'package:treva/screens/home/home_screen.dart';
import 'package:treva/screens/notification_screen.dart';
import 'package:treva/screens/message_screen.dart';
import 'package:treva/screens/me/me_screen.dart';
import 'package:treva/screens/search/search_screen.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpLink link = HttpLink(
      uri: serverUrl,
    );
    ValueNotifier<GraphQLClient> client = ValueNotifier(GraphQLClient(
      link: link,
      cache: InMemoryCache(),
    ));
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Treva',
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/second': (context) => SearchScreen(),
          '/notification': (context) => NotificationScreen(),
          '/message': (context) => MessageScreen(),
          '/me': (context) => MeScreen(),
        },
      ),
    );
  }
}
