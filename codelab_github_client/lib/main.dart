import 'dart:io';
import 'package:platform/platform.dart';
import 'package:codelab_github_client/github_oauth_credentials.dart';
import 'package:codelab_github_client/src/github_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github GraphQL API Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Github GraphQL API Client'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  
  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
      builder: (context, httpClient){
        return Scaffold(
          appBar: AppBar(title:Text(title)),
          body: Center(
            child: Text("You are logged in to Github"),
          ),
        );
    },
      githubClientId: githubClientId,
      githubClientSecret: githubClientSecret,
      githubScopes: githubScopes
    );
  }
}
