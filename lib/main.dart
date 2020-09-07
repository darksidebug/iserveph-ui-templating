import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.white,

        // Define the default font family.
        fontFamily: 'Lato',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        // textTheme: TextTheme(
        //   headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Lato'),
        // ),
      ),
      home: MyHomePage(title: 'iserveph'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(75, 50, 75, 60),
                child: Image.asset("assets/images/APP_logo_circle_new.png")
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: nameController,
                style: new TextStyle(fontSize: 18.0),
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/Message_20px.png"),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(32.0),
                    borderSide:  BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5) ),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(32.0),
                    borderSide:  BorderSide(color: Color.fromRGBO(253, 111, 43, 0.8) ),
                  ),
                  hintText: "Email/Username",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 60),
              child: TextField(
                obscureText: true,
                style: new TextStyle(fontSize: 18.0,),
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/Password 1_20px.png"),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(32.0),
                    borderSide:  BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5) ),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(32.0),
                    borderSide:  BorderSide(color: Color.fromRGBO(253, 111, 43, 0.8) ),
                  ),
                  hintText: "Password",
                ),
              ),
            ),
            
            Container(
              height: 68,
              padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
              child: FlatButton(
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    gradient: new LinearGradient(
                      colors: [
                        Color.fromARGB(255, 244, 73, 107),
                        Color.fromARGB(255, 253, 111, 43)
                      ],
                    )
                  ),
                  padding: EdgeInsets.fromLTRB(85, 15, 85, 15),
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/Unlock_20px.png"),
                      //Icon(Icons.lock_open_rounded),
                      Text(
                        '   SIGN-IN', 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 20, 
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                textColor: Colors.white,
                onPressed: () {
                  // print(nameController.text);
                  //print(passwordController.text);
                },
              )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
              child: FlatButton(
                onPressed: (){
                  //forgot password screen
                },
                textColor: Colors.blue,
                splashColor: Color.fromRGBO(229, 241, 251, 1), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),

            Container(
              child: Row(
                children: <Widget>[
                  Text(
                    "Don't have account yet?",
                    style: TextStyle(fontSize: 17),
                  ),
                  FlatButton(
                    textColor: Colors.blue,
                    splashColor: Color.fromRGBO(229, 241, 251, 1), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Text(
                      'Sign-Up',
                      style: TextStyle(fontSize: 17),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            )
          ],
        )
      )
    );
  }
}
