import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext ctxt) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact Us"),
        ),
        body: Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/images/front-plate.jpg"),
            fit: BoxFit.cover,
            ),
        ),

        child: const MyCustomForm(),
    ),
    );
  }
}


class MyCustomForm extends StatelessWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: Center(
            child: Text('How Can We Help?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)

            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: TextField(
            style: TextStyle(
              color: Colors.white),

            decoration: InputDecoration(
              border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
              ),
              hintText: 'Enter Name',
              labelText: 'Name: *required',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              hintText: 'Enter Email',
              labelText: 'Email: *required',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              hintText: 'Enter Phone Number',
              labelText: 'Phone',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              labelText: 'Message: *required',
              fillColor: Colors.white,
              filled: true,
            ),
            maxLines: 3,
            keyboardType: TextInputType.multiline,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Center(
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                    )
                )
              ),
              onPressed: () { },
              child: const Text('Contact Us',
                style: TextStyle(
                fontSize: 20),

              ),
            )
          ),
        ),

      ],
    );
  }
}