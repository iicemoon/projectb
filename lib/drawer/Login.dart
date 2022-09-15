import 'package:flutter/material.dart';
import 'package:projectb/FirstPage.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF1E8E8),
        title: Text(
          "Login Screen",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 35,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 125,
                  height: 45,
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StartPage()));
                    },
                    child: Text("login"),
                    color: Color(0xFFF1E8E8),
                    textColor: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
