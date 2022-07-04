import 'package:dtrecipe/pages/signup.dart';
import 'package:dtrecipe/utills/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widget/mytextfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Flexible(
                flex: 7,
                fit: FlexFit.tight,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Image.asset(
                    "assets/images/applogin.png",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        margin: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: textfieldcolor,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 20,
                                  child: Image.asset(
                                      "assets/images/loginEmail.png",
                                      width: 10,
                                      height: 10),
                                ),
                              ),
                              Flexible(
                                  flex: 6,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: MyTextField(
                                      hinttext: "Email Id",
                                      size: 14,
                                      color: textfieldcolor,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      controller: emailcontroller,
                                      keyboardType: TextInputType.text,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        margin: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: textfieldcolor,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 20,
                                  child: Image.asset(
                                      "assets/images/loginPassword.png",
                                      width: 10,
                                      height: 10),
                                ),
                              ),
                              Flexible(
                                  flex: 6,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: MyTextField(
                                      hinttext: "Password",
                                      size: 14,
                                      color: textfieldcolor,
                                      textInputAction: TextInputAction.done,
                                      obscureText: obscureText,
                                      controller: passwordcontroller,
                                      keyboardType: TextInputType.number,
                                    ),
                                  )),
                              Flexible(
                                flex: 1,
                                child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      },
                                      icon: Icon(
                                        obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 4,
                fit: FlexFit.tight,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: const Text(
                            "Forgot Password?",
                            textAlign: TextAlign.right,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                color: forgotPass,
                                fontFamily: "assets/fonts/",
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          alignment: Alignment.center,
                          child: TextButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.fromLTRB(
                                          40, 10, 40, 10)),
                                  backgroundColor:
                                      MaterialStateProperty.all(primarycolor),
                                  foregroundColor: MaterialStateProperty.all<Color>(
                                      primarycolor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(26),
                                          side: const BorderSide(
                                              color: primarycolor)))),
                              child: const Text("Login",
                                  style: TextStyle(fontSize: 14, color: white)),
                              onPressed: () {
                                String email = emailcontroller.text.toString();
                                String password =
                                    passwordcontroller.text.toString();
                                bool emailValidation = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(email);
                                // bool passwordValidation = RegExp('^[0-9]{6}').hasMatch(password);
                                print("login email : $email");
                                print("login Password : $password");

                                if (email.isEmpty) {
                                  print("Please Enter your email");
                                  Fluttertoast.showToast(
                                      msg: "Please Enter your email",
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 2,
                                      backgroundColor: primarycolor,
                                      textColor: white,
                                      fontSize: 14);
                                  return;
                                }
                                if (password.isEmpty) {
                                  print("Please Enter your Password");
                                  Fluttertoast.showToast(
                                      msg: "Please Enter your Password",
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 2,
                                      backgroundColor: primarycolor,
                                      textColor: white,
                                      fontSize: 14);
                                  return;
                                }
                                if (emailValidation) {
                                  print("Email Format is Valid");
                                  Fluttertoast.showToast(
                                      msg: "Email Format is Valid",
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 2,
                                      backgroundColor: primarycolor,
                                      textColor: white,
                                      fontSize: 14);
                                } else {
                                  print("Invalid Email Format");
                                  Fluttertoast.showToast(
                                      msg: "Invalid Email Format",
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 2,
                                      backgroundColor: primarycolor,
                                      textColor: white,
                                      fontSize: 14);
                                }
                                if (password.length == 6) {
                                  print("Password Format is Valid");
                                  Fluttertoast.showToast(
                                      msg: "Password Format is Valid",
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 2,
                                      backgroundColor: primarycolor,
                                      textColor: white,
                                      fontSize: 14);
                                } else {
                                  print("Invalid Password");
                                  Fluttertoast.showToast(
                                      msg: "Invalid Password",
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 2,
                                      backgroundColor: primarycolor,
                                      textColor: white,
                                      fontSize: 14);
                                }
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signup()),
                                );
                              }),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: const Text(
                            "Or",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: forgotPass,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    decoration: const BoxDecoration(
                                        // border: Border.all(
                                        //   color: textfieldcolor,
                                        // ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                    child:
                                        Image.asset("assets/images/google.png"),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    margin:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    decoration: const BoxDecoration(
                                        // border: Border.all(
                                        //   color: textfieldcolor,
                                        // ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                    child: Image.asset("assets/images/fb.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                fit: FlexFit.tight,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.bottomRight,
                  child: Image.asset("assets/images/loginVeg.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
