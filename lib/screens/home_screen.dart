import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        actions: [ 
          PopupMenuButton(itemBuilder: (context) {
            return ["Setting","Theme Mode"].map((e) {
              return PopupMenuItem(
              child: Text(e),
              onTap: () {
                print(e);
              },
            );
            }).toList();
            
          },)
        ],
        bottom: const TabBar(tabs: [
          Tab(icon: Icon(Icons.home),
          text: "Home",
          ),
          Tab(icon: Icon(Icons.call),
          text: "Calls",
          ),
          Tab(icon: Icon(Icons.chat),
          text: "Chats",
          )
        ],
        indicatorColor: Colors.black,
        ),
      ),
      body: const TabBarView(children: [
        Center(
          child: Text("Home"),
        ),
        Center(
          child: Text("Calls"),
        ),
        Center(
          child: Text("Chats"),
        )
      ]),
    )
    );
  }
}