import 'package:flutter/material.dart';

// ignore: camel_case_types
class instagramProfile extends StatefulWidget {
  const instagramProfile({super.key});

  @override
  State<instagramProfile> createState() => _instagramProfileState();
}

// ignore: camel_case_types
class _instagramProfileState extends State<instagramProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
          )
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 125,
              color: Colors.black,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://scontent.fccu13-4.fna.fbcdn.net/v/t39.30808-6/405252247_1429723427954781_5032879054500088216_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=uWBS6q6io04AX-CCR35&_nc_ht=scontent.fccu13-4.fna&oh=00_AfD1CC7VpJcd9f9epFbyBzjA5B5e61DoZjNKTZs3JJcfcA&oe=65CB40D9"),
                          radius: 50),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Container(
                        width: 190,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 50, top: 0),
                              child: Text(
                                "mr.rahul8037",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: TextButton(
                                style: ButtonStyle(
                                  fixedSize:
                                      const MaterialStatePropertyAll<Size>(
                                          Size(123, 0)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.grey.shade500,
                                  ),
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Edit Profile",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: TextButton(
                              style: ButtonStyle(
                                fixedSize: const MaterialStatePropertyAll<Size>(
                                    Size(123, 0)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.grey.shade500,
                                ),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "View archive",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //  color: const Color.fromRGBO(255, 193, 7, 1),
                    width: 290,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 130),
                          child: Text(
                            "Rahul Bera",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 130, left: 19),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(const Size(198, 1)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.grey.shade500),
                            ),
                            onPressed: () {},
                            child: const Center(
                                child: Text(
                              "@ mr.rahul8037",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              softWrap: false,
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Container(
                            // color: Colors.red,
                            child: const Text(
                              '''
 DREAM- PROFESONAL PROGRAMER...
 🔴BCA_STUDENT
 🔵HOBBIE➡CODING ⌨🖱
 YOUTUBE CHANNEL : Code.Masti
 linktr.ee/code.masti
                            ''',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.black,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fccu13-1.fna.fbcdn.net/v/t39.30808-6/351352111_292240809890921_1745342232946996874_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=ZO_xEdvCrY4AX9RpGJd&_nc_ht=scontent.fccu13-1.fna&oh=00_AfCM6GetFbA4XYsuFpnChBdIesehHKuGnMg53kcJRb4vqg&oe=65CCA760"),
                        radius: 40,
                      ),
                      Text("Thinking", style: TextStyle(color: Colors.white))
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fccu13-3.fna.fbcdn.net/v/t39.30808-6/313342511_1193199074940552_7750682521420848150_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=0DMgGNYCAWcAX91JNtF&_nc_ht=scontent.fccu13-3.fna&oh=00_AfB5zvkpPmA9HGOEP9wHegK3adQEcXkjaLnfBmfTO9w-Sw&oe=65CC519A"),
                        radius: 40,
                      ),
                      Text(
                        "Looking",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fccu13-1.fna.fbcdn.net/v/t39.30808-6/400596008_1418910485702742_8101401733780321554_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=-iQGaf6v7y0AX_opv7N&_nc_ht=scontent.fccu13-1.fna&oh=00_AfDQNQGfCYRiiVYRedi2uoOi2mQQmw16LfMRJqUSqbaQqQ&oe=65CC2530"),
                        radius: 40,
                      ),
                      Text(
                        "Crazy",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fccu13-2.fna.fbcdn.net/v/t39.30808-6/260416660_966996137560848_7427272788326085119_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=ojMUSkDfgOEAX_vSHX7&_nc_ht=scontent.fccu13-2.fna&oh=00_AfClZzPYWawST2-OSuJhK0WVGk3FnUUNIyIAovxYrNbpEg&oe=65CBC174"),
                        radius: 40,
                      ),
                      Text(
                        "Relaxed",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fccu13-1.fna.fbcdn.net/v/t1.6435-9/130248324_749019342691863_7881381969112982095_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=7f8c78&_nc_ohc=xuQrHQnVb90AX9FTEbH&_nc_ht=scontent.fccu13-1.fna&oh=00_AfB4wdTksdSv-0bo8dhtYJXFy9NPJK5wzZyPEIZfaleUZA&oe=65EEB0F9"),
                        radius: 40,
                      ),
                      Text(
                        "Covid-19",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fccu13-1.fna.fbcdn.net/v/t39.30808-6/343475973_545826767705372_5564438510653044864_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=3635dc&_nc_ohc=XT95ZeXaNT4AX8moKJG&_nc_ht=scontent.fccu13-1.fna&oh=00_AfAo7upuB79ZcfWa64YEPcyNUfxGmY_oQ96YF5-aMQdZug&oe=65CBC8E7"),
                        radius: 40,
                      ),
                      Text(
                        "Happy",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 0,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: const Column(
                      children: [
                        Text(
                          "46",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "posts",
                          style: TextStyle(color: Colors.white54),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: const Column(
                      children: [
                        Text(
                          "246",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "followers",
                          style: TextStyle(color: Colors.white54),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: const Column(
                      children: [
                        Text(
                          "218",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "following",
                          style: TextStyle(color: Colors.white54),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0,
            ),
            Container(
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.grid_3x3_rounded,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.square,
                    color: Colors.white54,
                  ),
                  Icon(Icons.video_collection, color: Colors.white54),
                  Icon(Icons.save, color: Colors.white54),
                  Icon(Icons.tag_faces, color: Colors.white54)
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    Card(
                      child: Image.network(
                          "https://scontent.fccu13-1.fna.fbcdn.net/v/t39.30808-6/351352111_292240809890921_1745342232946996874_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=ZO_xEdvCrY4AX-EeMBS&_nc_ht=scontent.fccu13-1.fna&oh=00_AfDSVij7cS4prKFwKAqpugjPzZFSye-RPJ3lzpuvVqiz4w&oe=65CCA760"),
                    ),
                    Card(
                      child: Image.network(
                          "https://scontent.fccu13-3.fna.fbcdn.net/v/t39.30808-6/405524522_1426909721569485_2056692486651441823_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=3635dc&_nc_ohc=uAqZZt3axmsAX8SBqhc&_nc_ht=scontent.fccu13-3.fna&oh=00_AfCHfKp5bfKFMxg9xLHG8Ym3uPl2eHptyuGw-cTFkKS6vw&oe=65CCA3FF"),
                    ),
                    Card(
                      child: Image.network(
                          "https://scontent.fccu13-1.fna.fbcdn.net/v/t39.30808-6/370204861_1377129083214216_4891355193254321887_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=3635dc&_nc_ohc=TBo6ALUHQ_cAX_PXynW&_nc_ht=scontent.fccu13-1.fna&oh=00_AfCNer3IIfo5tK3R2gyUjpoTCpb_YmD0EaBrY6OGtUnq4g&oe=65CBB3E8"),
                    ),
                    Card(
                      child: Image.network(
                          "https://scontent.fccu13-3.fna.fbcdn.net/v/t39.30808-6/359242455_1355674672026324_4101645261986129377_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=3635dc&_nc_ohc=NIAWbtsPJFcAX_0SxFs&_nc_ht=scontent.fccu13-3.fna&oh=00_AfCZTOjq14DiZQHLvQMpvtcF0detznxUekXZd_9E-UcZYg&oe=65CCE88C"),
                    ),
                    Card(
                      child: Image.network(
                          "https://scontent.fccu13-1.fna.fbcdn.net/v/t39.30808-6/400596008_1418910485702742_8101401733780321554_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=-iQGaf6v7y0AX860sps&_nc_ht=scontent.fccu13-1.fna&oh=00_AfAfVK-hAg-XYSVBWHkd_a5RoN73ufuBOiuughubQjpvhw&oe=65CC2530"),
                    ),
                    Card(
                      child: Image.network(
                          "https://scontent.fccu13-3.fna.fbcdn.net/v/t39.30808-6/348444254_962119108314343_2339852805382728971_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=PwT1V5jijggAX-usC3E&_nc_ht=scontent.fccu13-3.fna&oh=00_AfC-sBgQ_TKLjkaPMRsXdkX9oK2iUpUgDFHQKucbRAyv_w&oe=65CC423D"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
