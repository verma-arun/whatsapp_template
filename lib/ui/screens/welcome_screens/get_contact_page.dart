import 'package:flutter/material.dart';
import 'package:whats_app_template/theme.dart';
import 'package:whats_app_template/ui/screens/welcome_screens/verify_phone_number_page.dart';

class GetContactPage extends StatefulWidget {
  const GetContactPage({Key? key}) : super(key: key);

  @override
  State<GetContactPage> createState() => _GetContactPageState();
}

class _GetContactPageState extends State<GetContactPage> {
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
                    'Enter your phone number',
                    style: TextStyle(fontSize: 18, color: whatsAppGreen),
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
              const Text('WhatsApp will need to verify your phone number.'),
              Text(
                'What\'s my number',
                style: TextStyle(color: fadedBlue),
              ),
              SizedBox(
                width: 250,
                child: DropdownButton<String>(
                  // value: dropdownValue,
                  isExpanded: true,
                  hint: Center(child: Text(dropdownValue)),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: whatsAppGreen,
                  ),
                  elevation: 16,
                  // style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: whatsAppGreen,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Choose a country',
                    'India',
                    'USA',
                    'China',
                    'Nepal',
                    'Pakistan',
                    'Bhutan',
                    'Japan'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            labelText: '+',
                            labelStyle: TextStyle(color: fadedBlack)),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextFormField(
                        controller: myController,
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            labelText: 'phone number',
                            labelStyle: TextStyle(color: fadedBlack)),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Carrier charges may apply',
                style: TextStyle(color: fadedBlack),
              ),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => VerifyPhoneNumberPage(phoneNumber: myController.text,)),
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
