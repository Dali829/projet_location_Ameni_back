import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myapp/app-design/usersDashboard.dart';
import 'package:myapp/app-design/veloDashboard.dart';
import 'ScooterDashboard.dart';

class NavBarAdmin extends StatefulWidget {
  @override
  State<NavBarAdmin> createState() => _NavBarAdminState();
}

class _NavBarAdminState extends State<NavBarAdmin> {
  @override
  static List<Widget> _widgetOptions = <Widget>[
    TableVelo(),
    TableScooter(),
    Users()
  ];
  int _selectedIndex = 0;

  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return MaterialApp(
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          color: Color(0xffd1ffef),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Color(0xffd1ffef),
              color: Colors.grey.shade800,
              activeColor: Colors.white,
              rippleColor: Colors.black,
              tabBackgroundColor: Colors.grey.shade800,
              padding: EdgeInsets.all(16),
              gap: 8,
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.directions_bike,
                  text: "Bicycles",
                ),
                GButton(
                  icon: Icons.electric_scooter_rounded,
                  text: "Scooters",
                ),
                GButton(
                  icon: Icons.person,
                  text: "Users",
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
