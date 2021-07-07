import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_payment_report/admin_page.dart';
import 'package:school_payment_report/student_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return LoginPageMobile();
        } else {
          return LoginPageWeb();
        }
      },
    ));
  }
}

class LoginPageMobile extends StatefulWidget {
  @override
  _LoginPageMobileState createState() => _LoginPageMobileState();
}

class _LoginPageMobileState extends State<LoginPageMobile> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'images/login_icon.jpg',
                  height: 250,
                  width: 250,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 16, right: 16),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Rubik',
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        validator: (value) => value == null || value.isEmpty
                            ? 'Please enter full name'
                            : null,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20),
                            isDense: true,
                            hintText: 'Input your name',
                            labelText: 'Full Name',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, left: 5, right: 0, bottom: 13),
                              child: Icon(Icons.person),
                            )),
                        controller: _controller,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      TextFormField(
                        validator: (valuePass) {
                          if (valuePass == null || valuePass.isEmpty) {
                            return 'Please enter password';
                          } else if (valuePass.length < 6) {
                            return 'password must be more than 6 characters';
                          }
                          return null;
                        },
                        enableSuggestions: false,
                        obscureText: true,
                        autocorrect: false,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20),
                            isDense: true,
                            hintText: 'Input your password',
                            labelText: 'Password',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, left: 5, right: 0, bottom: 13),
                              child: Icon(Icons.person),
                            )),
                        controller: _controllerPass,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _sendDataAdmin(context);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF407BFF),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 20.0)),
                                child: Text(
                                  'Login \nAdmin',
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _sendDataStudent(context);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF407BFF),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15.0, horizontal: 20.0)),
                              child: Text(
                                'Login \nStudent',
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _sendDataStudent(BuildContext context) {
    String dataName = _controller.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StudentPage(
            name: dataName,
          ),
        ));
  }

  void _sendDataAdmin(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AdminPage(),
        ));
  }

  @override //
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void disposePass() {
    _controllerPass.dispose();
    super.dispose();
  }
}

class LoginPageWeb extends StatefulWidget {
  const LoginPageWeb({Key? key}) : super(key: key);

  @override
  _LoginPageWebState createState() => _LoginPageWebState();
}

class _LoginPageWebState extends State<LoginPageWeb> {
  TextEditingController _controllerWeb = TextEditingController();
  TextEditingController _controllerPassWeb = TextEditingController();

  final _formKeyWeb = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeyWeb,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/login_icon.jpg',
                    height: 350,
                    width: 350,
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadiusDirectional.circular(10),
                    ),
                    margin: EdgeInsets.only(left: 16, right: 16),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Rubik',
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextFormField(
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter full name'
                              : null,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20),
                              isDense: true,
                              hintText: 'Input your name',
                              labelText: 'Full Name',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 5, right: 0, bottom: 13),
                                child: Icon(Icons.person),
                              )),
                          controller: _controllerWeb,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        TextFormField(
                          validator: (valuePass) {
                            if (valuePass == null || valuePass.isEmpty) {
                              return 'Please enter password';
                            } else if (valuePass.length < 6) {
                              return 'password must be more than 6 characters';
                            }
                            return null;
                          },
                          enableSuggestions: false,
                          obscureText: true,
                          autocorrect: false,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20),
                              isDense: true,
                              hintText: 'Input your password',
                              labelText: 'Password',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 5, right: 0, bottom: 13),
                                child: Icon(Icons.person),
                              )),
                          controller: _controllerPassWeb,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKeyWeb.currentState!.validate()) {
                                      _sendDataAdmin(context);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF407BFF),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15.0, horizontal: 20.0)),
                                  child: Text(
                                    'Login \nAdmin',
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKeyWeb.currentState!.validate()) {
                                    _sendDataStudent(context);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF407BFF),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 20.0)),
                                child: Text(
                                  'Login \nStudent',
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _sendDataStudent(BuildContext context) {
    String dataName = _controllerWeb.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StudentPage(
            name: dataName,
          ),
        ));
  }

  void _sendDataAdmin(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AdminPage(),
        ));
  }

  @override //
  void dispose() {
    _controllerWeb.dispose();
    super.dispose();
  }

  void disposePass() {
    _controllerPassWeb.dispose();
    super.dispose();
  }
}
