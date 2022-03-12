import 'package:flutter/material.dart';
import 'package:kingsmen_mobile_demo/screens/aboutscreen.dart';
import 'package:kingsmen_mobile_demo/screens/qrcodescreen.dart';

import 'dart:async';

import 'screens/aboutscreen.dart';
import 'screens/careerscreen.dart';
import 'screens/contactscreen.dart';
import 'screens/mapscreen.dart';
import 'screens/offeringscreen.dart';
import 'package:kingsmen_mobile_demo/screens/takepicturescreen.dart';
import 'package:camera/camera.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(camera1: firstCamera));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,
    required this.camera1}) : super(key: key);

  final CameraDescription camera1;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kingsmen Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,

      ),
      home:  MyHomePage(title: 'Kingsmen Software', camera2: camera1,),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key
              , required this.title
              , required this.camera2}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final CameraDescription camera2;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset("assets/images/kslogo.jpg",
              fit: BoxFit.cover,
              height: 50,
              width:250
          ),
        // leading: IconButton(
        //     icon: const Icon(Icons.list,
        //         color: Colors.black),
        //   onPressed: () => Scaffold.of(context).openDrawer(), // <-- Opens drawer.
        // ),

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset("assets/images/kscircle.jpg", fit: BoxFit.contain),

    ),
            ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('About'),
                onTap : () {
                  Navigator.of(context).pop();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                }
            ),

            ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Careers'),
                onTap : () {
                  Navigator.of(context).pop();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CareerScreen(),
                    ),
                  );
                }
            ),

            ListTile(
                leading: const Icon(Icons.dock_rounded),
                title: const Text('Contact Us'),
                onTap : () {
                  Navigator.of(context).pop();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactScreen(),
                    ),
                  );

                }
            ),

            ListTile(
                leading: const Icon(Icons.dock_rounded),
                title: const Text('Locations'),
                onTap : () {
                  Navigator.of(context).pop();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MapScreen(),
                    ),
                  );
                }
            ),

            ListTile(
                leading: const Icon(Icons.dock_rounded),
                title: const Text('Offerings'),
                onTap : () {
                  Navigator.of(context).pop();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OfferingScreen(),
                    ),
                  );
                }
            ),

            ListTile(
                leading: const Icon(Icons.dock_rounded),
                title: const Text('QR Codes'),
                onTap : () {
                  Navigator.of(context).pop();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QRCodeScreen(),
                    ),
                  );
                }
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Open Camera'),
              onTap : () {
                Navigator.of(context).pop();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TakePictureScreen(camera: widget.camera2),
                  ),
                );
              }
            ),
          ],
        ),
      ),
      body:
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/front-plate.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                    child: Center(
                      child: Text('How Can We Help?',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)
                      ),
                    ),
                  ),
                ],
              ),

          ),
    );
  }
}
