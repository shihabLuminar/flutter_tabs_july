import 'package:flutter/material.dart';
import 'package:flutter_tabs_july/view/home_screen/tabs/home_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("my tab bar"),
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,

            onTap: (value) {
              print(value);
            },
            // labelColor: Colors.red,
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 15),
            dividerColor: Colors.transparent,
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "favourite",
              ),
              Tab(
                text: "profile",
              ),
              Tab(
                text: "Home",
              ),
              Tab(
                text: "favourite",
              ),
              Tab(
                text: "profile",
              ),
              Tab(
                text: "Home",
              ),
              Tab(
                text: "favourite",
              ),
              Tab(
                text: "profile",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          HomeTab(),
          Container(color: Colors.blue),
          Container(color: Colors.red),
          Container(color: Colors.green),
          HomeTab(),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.red),
        ]),
      ),
    );
  }
}
