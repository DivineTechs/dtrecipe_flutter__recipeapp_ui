import 'package:dtrecipe/utills/color.dart';
import 'package:dtrecipe/widget/mytextfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() {
    return SignupState();
  }
}

class SignupState extends State<Signup> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController numbercontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController conformPasswordcontroller =
      TextEditingController();

  bool obscureText_Password = true;
  bool obscureText_ConformPass = true;

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
                  flex: 8,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          margin: const EdgeInsets.fromLTRB(20, 3, 20, 3),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: textfieldcolor,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/signupName.png",
                                        width: 10,
                                        height: 10),
                                  ),
                                ),
                                Flexible(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: MyTextField(
                                        hinttext: "Name",
                                        size: 14,
                                        color: textfieldcolor,
                                        textInputAction: TextInputAction.next,
                                        obscureText: false,
                                        controller: namecontroller,
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
                          margin: const EdgeInsets.fromLTRB(20, 3, 20, 3),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: textfieldcolor,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/signupEmail.png",
                                        width: 10,
                                        height: 10),
                                  ),
                                ),
                                Flexible(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
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
                          margin: const EdgeInsets.fromLTRB(20, 3, 20, 3),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: textfieldcolor,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/signupNumber.png",
                                        width: 10,
                                        height: 10),
                                  ),
                                ),
                                Flexible(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: MyTextField(
                                        hinttext: "Mobile No",
                                        size: 14,
                                        color: textfieldcolor,
                                        textInputAction: TextInputAction.next,
                                        obscureText: false,
                                        controller: numbercontroller,
                                        keyboardType: TextInputType.number,
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
                          margin: const EdgeInsets.fromLTRB(20, 3, 20, 3),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: textfieldcolor,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/signupPassword.png",
                                        width: 10,
                                        height: 10),
                                  ),
                                ),
                                Flexible(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: MyTextField(
                                        hinttext: "Password",
                                        size: 14,
                                        color: textfieldcolor,
                                        textInputAction: TextInputAction.next,
                                        obscureText: obscureText_Password,
                                        controller: passwordcontroller,
                                        keyboardType: TextInputType.number,
                                      ),
                                    )),
                                Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 100,
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            obscureText_Password =
                                                !obscureText_Password;
                                          });
                                        },
                                        icon: Icon(
                                          obscureText_Password
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
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          margin: const EdgeInsets.fromLTRB(20, 3, 20, 3),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: textfieldcolor,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/signupPassword.png",
                                        width: 10,
                                        height: 10),
                                  ),
                                ),
                                Flexible(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: MyTextField(
                                        hinttext: "Conform Password",
                                        size: 14,
                                        color: textfieldcolor,
                                        textInputAction: TextInputAction.done,
                                        obscureText: obscureText_ConformPass,
                                        controller: conformPasswordcontroller,
                                        keyboardType: TextInputType.number,
                                      ),
                                    )),
                                Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 100,
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            obscureText_ConformPass =
                                                !obscureText_ConformPass;
                                          });
                                        },
                                        icon: Icon(
                                          obscureText_ConformPass
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
                  )),
              Flexible(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: Container(
                      width: 128,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.all(Radius.circular(26))),
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    onTap: () {
                      String name = namecontroller.text.toString();
                      String email = emailcontroller.text.toString();
                      String number = numbercontroller.text.toString();
                      String password = passwordcontroller.text.toString();
                      String conformPass =
                          conformPasswordcontroller.text.toString();
                      bool emailValidation = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(email);

                      if (name.isEmpty) {
                        print("Please Enter your Name");
                        Fluttertoast.showToast(
                            msg: "Please Enter your Name",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: primarycolor,
                            textColor: white,
                            fontSize: 14);
                        return;
                      }
                      if (email.isEmpty) {
                        print("Please Enter your Email");
                        Fluttertoast.showToast(
                            msg: "Please Enter your Email",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: primarycolor,
                            textColor: white,
                            fontSize: 14);
                        return;
                      }
                      if (number.isEmpty) {
                        print("Please Enter your Number");
                        Fluttertoast.showToast(
                            msg: "Please Enter your Number",
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
                      if (conformPass.isEmpty) {
                        print("Please Re-enter your Password");
                        Fluttertoast.showToast(
                            msg: "Please Re-enter your Password",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: primarycolor,
                            textColor: white,
                            fontSize: 14);
                        return;
                      }

                      if (emailValidation) {
                        print("Email is Valid");
                        Fluttertoast.showToast(
                            msg: "Email is Valid",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: primarycolor,
                            textColor: white,
                            fontSize: 14);
                      } else {
                        print("Invalid Email");
                        Fluttertoast.showToast(
                            msg: "Invalid Email",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: primarycolor,
                            textColor: white,
                            fontSize: 14);
                      }

                      if (password.length == 6 &&
                          conformPass.length == 6 &&
                          password == conformPass) {
                        print("Password is Valid");
                        Fluttertoast.showToast(
                            msg: "Password is Valid",
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
                    },
                  ),
                ),
              ),
              Flexible(
                flex: 4,
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
