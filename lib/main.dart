import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffFBB034), Color(0xffF8B313)],
            ),
          ),
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold),),
                centerTitle: true,
                leading: Icon(Icons.arrow_back),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/logo.png'),
                  )
                ],
              ),
              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(1, 2),
                          spreadRadius: 1.0,
                          blurRadius: 5.0)
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: 'Email'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'Password',
                              suffixIcon: Icon(Icons.remove_red_eye)),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: InkWell(
                            onTap: () {
                              print("Forget Password tap");
                            },
                            child: Text(
                              'Forget Password?',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Color(0xffFBB034),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: InkWell(
                          onTap: () {
                            print("login using mobile number tap");
                          },
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              text: 'Login using ',
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Mobile Number and OTP',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: (){},
                            child: Container(
                              margin: EdgeInsets.only(right: 20, top: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xffFBB034),
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.navigate_next,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ClipPath(
                clipper: TopClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(1, 2),
                          spreadRadius: 1.0,
                          blurRadius: 5.0)
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Or",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff898989),
                        ),
                      ),
                      Text(
                        "Login with Social Media",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff898989),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/fb_icon.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/g_plus_icon.png'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: InkWell(
                  onTap: () {
                    print("don't have an account tap");
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Click here to signup",
                          style:
                          TextStyle(decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height - 50);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, 50);
    path.lineTo(size.width, size.height + 10);
    path.lineTo(0, size.height + 10);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
