import 'dart:convert';

import 'package:container_sized/Model/PostModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class apiintegration extends StatefulWidget {
  const apiintegration({super.key});

  @override
  State<apiintegration> createState() => _apiintegrationState();
}

class _apiintegrationState extends State<apiintegration> {
  List<PostModel> postList = [];

  Future<List<PostModel>> getPostApi() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      for (Map<String, dynamic> i in data) {
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Integration"),
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        future: getPostApi(),
        builder: (context, AsyncSnapshot<List<PostModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<PostModel> posts = snapshot.data!;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(posts[index].title),
                  subtitle: Text(posts[index].body),
                );
              },
            );
          }
        },
      ),
    );
  }
}
