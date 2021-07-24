import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/routes.dart';
//git readded
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          // Padding(padding: const EdgeInsets.only(top: 40)),
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),

          Text("Welcome $name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password", labelText: "Password"),
                ),
                SizedBox(
                  height: 30,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     print("Login Pressed");
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: Text(
                //     "Login",
                //     style: TextStyle(fontSize: 18),
                //   ),
                //   style: TextButton.styleFrom(fixedSize: Size(140, 40)),
                // ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                      // changeButton ? changeButton = false : changeButton = true;
                    });

                    await Future.delayed(Duration(seconds: 1));
                    print("Login");
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),

                    width: changeButton ? 45 : 130,
                    height: 45,
                    // color: Colors.deepPurple,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 45 : 8)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
