import 'package:flutter/material.dart';
import 'package:whats_app_template/theme.dart';
import 'package:whats_app_template/ui/screens/home_page.dart';
import 'package:whats_app_template/ui/screens/welcome_screens/verify_phone_number_page.dart';

class ProfileInfoPage extends StatefulWidget {
  const ProfileInfoPage({Key? key}) : super(key: key);

  @override
  State<ProfileInfoPage> createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  String dropdownValue = 'Choose a country';
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Profile info',
                style: TextStyle(
                    fontSize: 18,
                    color: whatsAppGreen,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Please provide your name and an optional profile photo',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: fadedBlack),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: screenWidth - 240,
                height: screenWidth - 240,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Icon(
                  Icons.add_a_photo,
                  size: 50,
                  color: fadedBlack,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your username',
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.emoji_emotions_outlined,
                          color: fadedBlack,
                        )),
                  ],
                ),
              ),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      ),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 14),
                      primary: whatsAppGreen),
                  child: const Text('NEXT'))
            ],
          ),
        ),
      ),
    );
  }
}
