import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login.webp",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("welcome $name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    print("hi");
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                )
                // ElevatedButton(
                //   child: Text("Login"),
                //   onPressed: () {
                //     print("hi");
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                // )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
