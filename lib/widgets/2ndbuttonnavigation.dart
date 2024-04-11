// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class secondbuttonnavigation extends StatefulWidget {
  secondbuttonnavigation({super.key});

  @override
  State<secondbuttonnavigation> createState() => _secondbuttonnavigationState();
}

// ignore: camel_case_types
class _secondbuttonnavigationState extends State<secondbuttonnavigation> {
  int selectedindex = 0;
  List<Widget> widgets = [
    Text("Home"),
    Text("Add"),
    Text("search"),
    Text("profile")
  ];
  void onTap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button navigation"),
        backgroundColor: Colors.blue,
      ),
       body: Center(child: widgets.elementAt(selectedindex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: onTap,
      ),
    );
  }
}
