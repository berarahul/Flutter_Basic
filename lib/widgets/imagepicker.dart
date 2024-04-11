import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: camel_case_types
class imagepickerWidgets extends StatefulWidget {
  const imagepickerWidgets({super.key});

  @override
  State<imagepickerWidgets> createState() => _imagepickerWidgetsState();
}

// ignore: camel_case_types
class _imagepickerWidgetsState extends State<imagepickerWidgets> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Image Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.grey.shade200,
              child: Center(
                  child: file == null
                      ? Text("Image Not Picked")
                      : Image.file(
                          File(file!.path),
                          fit: BoxFit.cover,
                        )),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print("Image picked");
                print(photo!.path);
              },
              child: const Text("Select Image"),
            ),
             const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print("Images picked");
                for (int i = 0; i < files!.length; i++) {
                  print(files![i].path);
                }
              },
              child: const Text("Select Imagees"),
            ),
          ],
        ),
      ),
    );
  }
}
