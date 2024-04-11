import 'package:flutter/material.dart';

class day19UI extends StatefulWidget {
  const day19UI({super.key});

  @override
  State<day19UI> createState() => _day19UIState();
}

class _day19UIState extends State<day19UI> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 500,
                    //  color: Colors.yellow,
                    child: Stack(children: [
                      Positioned(
                          child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://www.freecodecamp.org/news/content/images/2022/12/main-image.png"))),
                        height: 450,
                      )),
                      const Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://scontent.frdp4-1.fna.fbcdn.net/v/t39.30808-6/320158751_882275946134335_1860491858246035526_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=bOHGj_7miNIAX9T3INA&_nc_ht=scontent.frdp4-1.fna&oh=00_AfC7Ksrsu0c0tcunhxSZXYBy8CUtQggy36McfdqhkrQiyg&oe=65CA4027"),
                            radius: 50,
                          )),
                    ]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: w,
                //color: Colors.blue,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mardid Tour for Designers",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "This is a random description of the Topic",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('34', Icons.upload),
                  rowIconText('82', Icons.message),
                  rowIconText('295', Icons.face),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: const Text(
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,'''),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}
