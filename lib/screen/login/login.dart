import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fkaa_donation/constant.dart';
import 'package:fkaa_donation/controller/anonymous_controller.dart';
import 'package:fkaa_donation/screen/anonymous/anonymous.dart';
import 'package:fkaa_donation/screen/navigation/alumni/navigation_alumni.dart';
import 'package:fkaa_donation/screen/navigation/staff/navigation_staff.dart';
import 'package:fkaa_donation/screen/navigation/student/navigation_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final AnonymousController _anonymousController = AnonymousController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.email == "alumni@ump.edu.my") {
                    return NavigationAlumni(
                      selectNavDefault: 0,
                    );
                  } else if (snapshot.data!.email == "staff@ump.edu.my") {
                    return NavigationStaff();
                  } else if (snapshot.data!.email == "student@ump.edu.my") {
                    return NavigationStudent(
                      selectNavDefault: 0,
                    );
                  } else {
                    return Login();
                  }
                } else {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/imgBack.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: AspectRatio(
                        aspectRatio: 7 / 10,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              //Logo
                              Container(
                                width: 170,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/logo.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              //Title
                              Text(
                                "FKAA E-Donation",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: kTextPrimary,
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
                                height: 50,
                              ),
                              //Email
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
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
                                      controller: _emailController,
                                      decoration: const InputDecoration(
                                        hintStyle: TextStyle(fontSize: 15),
                                        prefixIcon: Icon(
                                          Icons.person,
                                        ),
                                        hintText: "Email",
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
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
                                      controller: _passwordController,
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
                                height: 70,
                              ),
                              //sign in button
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: GestureDetector(
                                  onTap: signIn,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15.0,
                                      horizontal: 120.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: kButton,
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
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                child: Text(
                                  "I want to donate Anonymously!",
                                  style: TextStyle(
                                    color: kTextLink,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                onTap: () async {
                                  dynamic result = await _anonymousController
                                      .signInAnonymous();
                                  if (result == null) {
                                    print('error sign in');
                                  } else {
                                    print('sign in');
                                    print(result.uid);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Anonymous(),
                                      ),
                                    );
                                  }
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }
}
