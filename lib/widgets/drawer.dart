import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(5),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: CachedNetworkImageProvider(
                          'https://media.licdn.com/dms/image/C5112AQEF7r0X3S6ceg/article-cover_image-shrink_600_2000/0/1520134718540?e=2147483647&v=beta&t=a7iXu21qVqRM5L1ojUjXhgj3VOrvuUsee_nUhdLSv0I',
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sundar Pichai ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("pichaisundar@gmail.com")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Shared with me"),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text("star"),
              ),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text("Share friends"),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text("delete"),
              ),
              Divider(),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer widget"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          child: const Center(child: Text("Hey there")),
        ),
      ),
    );
  }
}
