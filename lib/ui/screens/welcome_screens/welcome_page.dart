import 'package:flutter/material.dart';
import 'package:whats_app_template/theme.dart';
import 'package:whats_app_template/ui/screens/welcome_screens/get_contact_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Welcome to WhatsApp',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(18, 140, 126, 1.0)),
          ),
          Container(
            width: screenWidth - 100,
            height: screenWidth - 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    AssetImage('assets/images/whatsapp_green_background.jpg'),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  12.0,
                  8.0,
                  12.0,
                  0.0,
                ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: fadedBlack,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Read our'),
                      TextSpan(
                          text: ' Privacy Policy.',
                          style: TextStyle(color: Colors.lightBlueAccent)),
                      TextSpan(text: ' Tap "Agree and continue" to'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'accept the',
                      style: TextStyle(color: fadedBlack),
                    ),
                    const Text(
                      'Terms of Service.',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenWidth / 9,
                width: screenWidth - 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                      primary: whatsAppGreen),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GetContactPage()),
                    );
                  },
                  child: const Text('AGREE AND CONTINUE'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
