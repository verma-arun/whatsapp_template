import 'package:flutter/material.dart';
import 'package:whats_app_template/theme.dart';
import 'package:whats_app_template/ui/screens/welcome_screens/profile_info_page.dart';

class VerifyPhoneNumberPage extends StatefulWidget {
  final String phoneNumber;

  const VerifyPhoneNumberPage({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  State<VerifyPhoneNumberPage> createState() => _VerifyPhoneNumberPageState();
}

class _VerifyPhoneNumberPageState extends State<VerifyPhoneNumberPage> {
  String dropdownValue = 'Choose a country';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    'Verifying your number',
                    style: TextStyle(
                        fontSize: 18,
                        color: whatsAppGreen,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  PopupMenuButton(
                      icon: Icon(
                        Icons.more_vert,
                        size: 20,
                        color: fadedBlack,
                      ),
                      elevation: 40,
                      itemBuilder: (context) => [
                            const PopupMenuItem(
                              child: Text("First"),
                              value: 1,
                            ),
                            const PopupMenuItem(
                              child: Text("Second"),
                              value: 2,
                            ),
                          ])
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Waiting to automatically detect an SMS sent to'),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.phoneNumber != null ? widget.phoneNumber + '.' : '',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Wrong number?',
                    style: TextStyle(color: fadedBlue),
                  ),
                ],
              ),
              SizedBox(
                width: 150,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        // labelText: '',
                        labelStyle: TextStyle(color: fadedBlack)),
                  ),
                ),
              ),
              Text(
                'Enter 6-digit code',
                style: TextStyle(color: fadedBlack),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.sms, color: fadedBlack),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Resend SMS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: fadedBlack),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: fadedBlack,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Call me',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: fadedBlack),
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileInfoPage()),
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
