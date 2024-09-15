import 'package:flutter/material.dart';
import 'package:hackers_handbook/pages/anasayfa.dart';
import 'package:hackers_handbook/pages/nmap.dart';
import 'package:hackers_handbook/pages/ucuncusayfa.dart';
import 'package:hackers_handbook/pages/usefullinuxcoms.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade500,
      width: MediaQuery.of(context).size.width / (3 / 2),
      child: Container(
        color: Color(0xff446df6),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Hackers Handbook",
                textAlign: TextAlign.center,
                
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Colors.white  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text(
                  "Reverse Shells",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w800),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Anasayfa()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.visibility,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text(
                  "Nmap",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w800),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Nmap()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.attach_money,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text(
                  "Useful Linux Commands",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w800),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UsefullLinuxCommands()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text(
                  "Info",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w800),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Info()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
