import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  late String tempname;
  final _textname = TextEditingController();
  final _textpass = TextEditingController();
  bool _validatename = false;
  bool _validatepass = false;

  @override
  void dispose() {
    _textname.dispose();
    _textpass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  'assets/logoafter.png',
                  height: 128,
                  width: 128,
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Octashop'),
                SizedBox(
                  height: 40,
                ),
                TextField(
                    controller: _textname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      errorText: _validatename
                          ? 'Value Can\'t Be Empty, must be greater than 6'
                          : null,
                    )),
                SizedBox(
                  height: 40,
                ),
                TextField(
                    controller: _textpass,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      errorText: _validatepass
                          ? 'Value Can\'t Be Empty, must be 4 to 16 char'
                          : null,
                    )),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    child: Text('Login'),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        textStyle: const TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                        padding: EdgeInsets.fromLTRB(50, 10, 50, 10)),
                    onPressed: () {
                      if (_textname.text.isEmpty) {
                        setState(() {
                          _validatename = true;
                        });
                      } else {
                        setState(() {
                          _validatename = false;
                        });
                      }
                      if (_textpass.text.isEmpty) {
                        setState(() {
                          _validatepass = true;
                        });
                      } else {
                        setState(() {
                          _validatepass = false;
                        });
                      }
                      if (_textname.text.length <= 6) {
                        setState(() {
                          _validatename = true;
                        });
                      } else {
                        setState(() {
                          _validatename = false;
                        });
                      }
                      if (_textpass.text.length < 4 ||
                          _textpass.text.length > 16) {
                        setState(() {
                          _validatepass = true;
                        });
                      } else {
                        setState(() {
                          _validatepass = false;
                        });
                      }
                      if (_validatename == false && _validatepass == false) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HomeScreen()),
                        // );
                        tempname = _textname.text;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen(tempname),
                        ));
                      }
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
