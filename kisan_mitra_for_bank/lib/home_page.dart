import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kisan_mitra_for_bank/Drawer/drawer.dart';

import 'HomePage/dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of Widgets
  final pages = [
    const Dashboard(),
    const Placeholder(),
  ];
  int currentPageIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      //Drawer
      drawer: DrawerPage(),

      //App Bar
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Anish 👋🏾",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("Enjoy our services",
                style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),

      body: pages[currentPageIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Home",
            activeIcon: Icon(Icons.dashboard),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Loan Applicants",
            activeIcon: Icon(Icons.chat),
          ),
        ],
      ),
    );
  }
}
