import 'package:flutter/material.dart';
import 'package:projectb/drawer/About.dart';
import 'package:projectb/drawer/Contactus.dart';
import 'package:projectb/drawer/Login.dart';
import 'package:projectb/SecondPage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 45),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                icon: Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.black54)),
          )
        ],
        backgroundColor: Color(0xFFF1E8E8),
        title: Text(
          "General Flowers",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      drawer: Drawer(
        width: 180,
        backgroundColor: Colors.white, //back ground color
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFF1E8E8),
                ),
                child: Text(
                  'Tuwaiq Flowers',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Divider(thickness: 1, color: Colors.amber),
            Column(
              children: [
                IconButton(
                    iconSize: 90,
                    onPressed: () {},
                    icon: Icon(Icons.settings, color: Colors.red)),
                Text("Settings"),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: IconButton(
                      iconSize: 90,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => About()));
                      },
                      icon:
                          Icon(Icons.info_outline_rounded, color: Colors.red)),
                ),
                Text("About us"),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: IconButton(
                      iconSize: 70,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Contact()));
                      },
                      icon: Icon(Icons.quick_contacts_mail_rounded,
                          color: Colors.red)),
                ),
                Text("Contact us"),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: IconButton(
                      iconSize: 90,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Grid()));
                      },
                      icon: Icon(Icons.settings_power_outlined,
                          color: Colors.red)),
                ),
                Text("SignOut "),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Grid()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('bouquet-white-roses.jpg'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 232, 161, 213),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        // //   Icons.home,
                        // //   size: 50,
                        // //   color: Colors.white,
                        // ),
                        // Text(
                        //   "Home",
                        //   style: TextStyle(color: Colors.white, fontSize: 30),
                        // )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Grid()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 232, 161, 213),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.search,
                        //   size: 50,
                        //   color: Colors.white,
                        // ),
                        // Text(
                        //   "Search",
                        //   style: TextStyle(color: Colors.white, fontSize: 30),
                        // )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Grid()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 232, 161, 213),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.settings,
                        //   size: 50,
                        //   color: Colors.white,
                        // ),
                        // Text(
                        //   "Settings",
                        //   style: TextStyle(color: Colors.white, fontSize: 30),
                        // )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Grid()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 232, 161, 213),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.book,
                        //   size: 50,
                        //   color: Colors.white,
                        // ),
                        // Text(
                        //   "Books",
                        //   style: TextStyle(color: Colors.white, fontSize: 30),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            ),
          ),
        ),
      ),
    );
  }
}
