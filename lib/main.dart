import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: Image.asset('assets/flutter.gif'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: TextFormField(
                controller: _usernameController,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                cursorColor: Colors.black45,
                decoration: const InputDecoration(
                  hintText: ('Input username'),
                  hintStyle: TextStyle(color: Colors.grey),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                textAlign: TextAlign.center,
                enableSuggestions: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                cursorColor: Colors.black45,
                decoration: const InputDecoration(
                  hintText: ('Input Password'),
                  hintStyle: TextStyle(color: Colors.grey),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                textAlign: TextAlign.center,
                enableSuggestions: false,
              ),
            ),
            // OutlinedButton(onPressed: () {}, child: Text('Clock tick'))
            Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    color: Colors.amber),
                child: MaterialButton(
                    onPressed: () {
                      print('Username =  ' + _usernameController.text);
                      print('password =  ' + _passwordController.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text('presesed')))
          ],
        ),
      ),
    );
  }
}
