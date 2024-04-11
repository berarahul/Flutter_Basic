import 'package:flutter/material.dart';

class TabBarWidgets extends StatelessWidget {
  const TabBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Whatsapp"),
          bottom: const TabBar(
              indicatorWeight: 4,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.chat,
                  ),
                  text: 'Chats',
                ),
                Tab(
                  icon: Icon(
                    Icons.chat_bubble,
                  ),
                  text: 'Status',
                ),
                Tab(
                  icon: Icon(
                    Icons.call,
                  ),
                  text: 'Calls',
                ),
                Tab(
                  icon: Icon(
                    Icons.history,
                  ),
                  text: 'History',
                ),
              ]),
        ),
        body: TabBarView(children: [
          Container(
            child: const Center(
              child: Text(
                'CHATS',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: const Center(
              child: Text(
                'STATUS',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: const Center(
              child: Text(
                'CALLS',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            child: const Center(
              child: Text(
                'HISTORY',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
