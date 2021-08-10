import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

//git readded
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveTohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() => changeButton = true);
      await Future.delayed(Duration(seconds: 1));
      print("Login");
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() => changeButton = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            // Padding(padding: const EdgeInsets.only(top: 40)),
            Image.asset(
              "assets/images/hey.png",
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username can not be empty";
                      } else
                        return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can not be empty";
                      } else
                        return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    color: context.theme.buttonColor ,
                    borderRadius: BorderRadius.circular(changeButton ? 45 : 8),
                    child: InkWell(
                      onTap: () => moveTohome(context),
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
                        // decoration: BoxDecoration(
                        //   color: Colors.deepPurple,
                        // ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
