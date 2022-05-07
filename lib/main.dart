import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/2.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: const Color(0xFFcdeaeb),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50,250,50,10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset('assets/1.png', height: 10, width: 10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17,10,17,10),
                  child: Column(
                    children: [
                      Wrap(
                        children: const [
                        Text(
                          "The personality first connecting app",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 48
                          ),
                        )
                      ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0,20,0,0),
                        child: Text(
                            "If you were a fruit, then you'd be a fine-apple",
                          style: TextStyle(
                            fontSize: 18
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Text(
                            "Login",
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                      )
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10,15,10,15),
                        child: Text(
                            "Sign Up",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF71cce3)
                          ),
                        ),
                      ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      side: const BorderSide(color: Color(0xFF71cce3), width: 1),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
