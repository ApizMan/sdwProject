import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/imgBack.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Title
                Text(
                  "FKAA E-Donation",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.blueGrey.shade500,
                        blurRadius: 15,
                        offset: Offset.fromDirection(10, -3.0),
                      ),
                    ],
                  ),
                ),
                //Space
                SizedBox(
                  height: 20,
                ),
                //ID matrik number
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                        color: Colors.black12,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3.0,
                          blurRadius: 3.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 15),
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                          hintText: "ID Number",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                //Space
                SizedBox(
                  height: 20,
                ),
                //ID matrik number
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                        color: Colors.black12,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3.0,
                          blurRadius: 3.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 15),
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          hintText: "Password",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                //space
                const SizedBox(
                  height: 50,
                ),
                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 120.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueGrey[900],
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
