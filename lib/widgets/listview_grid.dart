import 'package:flutter/material.dart';

// ignore: camel_case_types
class listview_grid extends StatefulWidget {
  const listview_grid({super.key});

  @override
  State<listview_grid> createState() => _listview_gridState();
}

// ignore: camel_case_types
class _listview_gridState extends State<listview_grid> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['orange', 'Apple', 'Banana', 'Mango'];
    Map fruitsPersons = {
      'fruitss': ['orange', 'apple', 'banana', 'mango'],
      'persons': ['Rahul', 'Arpan', 'Tusar', 'Rohit'],
    };
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("List view and Grid View"),
          elevation: 8,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: GridView.builder(
              itemCount: fruits.length ,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Card(
                  child: Center(
                    child: Text(fruits[index]),
                  ),
                );
              }),
        ));
  }
}




/* 

List View Code Sample 




 ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("Rahul"),
              subtitle: Text("Coder"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rahul"),
              subtitle: Text("Coder"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rahul"),
              subtitle: Text("Coder"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rahul"),
              subtitle: Text("Coder"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rahul"),
              subtitle: Text("Coder"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rahul"),
              subtitle: Text("Coder"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rahul"),
              subtitle: Text("Coder"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Rahul"),
              subtitle: Text("Coder"),
            ),
          ),
        ],
      ),

                                  listviw.builder
                              ________________________

 List<String> fruits = ['orange', 'Apple', 'Banana', 'Mango'];
    Map fruitsPersons = {
      'fruitss': ['orange', 'apple', 'banana', 'mango'],
      'persons': ['Rahul', 'Arpan', 'Tusar', 'Rohit'],
    };


       ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              onTap: () {
                print((fruitsPersons['fruitss'][index]));
              },
              leading: Icon(Icons.person),
              title: Text(fruitsPersons['fruitss'][index]),
              subtitle: Text(fruitsPersons['persons'][index]),
            ));
          },
        ),


                                 GridView
                            |_________________|     

child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 2 / 3),
            children: const [
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
              Card(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  "Orange",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
              ),
            ],
          ),
     


*/