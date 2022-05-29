import 'package:flutter/material.dart';
import 'package:multimedia_app/components/body.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int index = 4;

  final screens = [
    const Center(child: Text("Listen")),
    const Center(child: Text("Search")),
    const Center(child: Text("Add")),
    const Center(child: Text("Notifications")),
    const Body()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
        ],
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: index,
        showSelectedLabels: true,
        iconSize: 35,
        onTap: (anyValue) => setState(() => index = anyValue),
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.play_circle_filled_outlined,
              ),
              label: "Listen"),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.add,
              ),
              label: "Feed"),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.notifications_none_outlined,
              ),
              label: "Notifications"),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.person_outline_rounded,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
