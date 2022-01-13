import 'package:flutter/material.dart';
import 'package:whats_app_template/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: whatsAppGreen,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
          title: const Text('WhatsApp'),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert),
            SizedBox(width: 10,)
          ],
        ),
        body: TabBarView(
          children: [
            const Icon(Icons.camera_alt),
            getChatScreenWidget(),
            getStatusScreenWidget(),
            getCallsScreenWidget(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: whatsAppGreen,
          child: const Icon(Icons.chat),
        ),
      ),
    );
  }

  Widget getChatScreenWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/arun.heic'),
                ),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Arun Ji'),
              Text(
                '12:05 AM',
                style: TextStyle(fontSize: 12.0, color: fadedBlack),
              ),
            ],
          ),
          subtitle: Text(
            'Hiii, how are you?',
            style: TextStyle(color: fadedBlack),
          ),
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/arun.heic'),
                ),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Arun Ji'),
              Text(
                '12:05 AM',
                style: TextStyle(fontSize: 12.0, color: fadedBlack),
              ),
            ],
          ),
          subtitle: Text(
            'Hiii, how are you?',
            style: TextStyle(color: fadedBlack),
          ),
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/arun.heic'),
                ),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Arun Ji'),
              Text(
                '12:05 AM',
                style: TextStyle(fontSize: 12.0, color: fadedBlack),
              ),
            ],
          ),
          subtitle: Text(
            'Hiii, how are you?',
            style: TextStyle(color: fadedBlack),
          ),
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/arun.heic'),
                ),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Arun Ji'),
              Text(
                '12:05 AM',
                style: TextStyle(fontSize: 12.0, color: fadedBlack),
              ),
            ],
          ),
          subtitle: Text(
            'Hiii, how are you?',
            style: TextStyle(color: fadedBlack),
          ),
        ),
      ],
    );
  }

  Widget getStatusScreenWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: SizedBox(
            height: 50,
            width: 50,
            child: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/no_profile.png',
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Stack(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whatsAppGreen,
                        )
                      ),
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          title: const Text('My status', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
          subtitle: Text(
            'Tap to add status update',
            style: TextStyle(color: fadedBlack),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 8.0),
          child: Text('Recent updates', style: TextStyle(
            color: fadedBlack,
            fontWeight: FontWeight.bold
          ),),
        )
      ],
    );
  }

  Widget getCallsScreenWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/arun.heic'),
                ),
              ),
            ),
          ),
          title: const Text('Arun', style: TextStyle(fontSize: 18.0),),
          subtitle: Row(
            children: [
              Icon(Icons.call_missed_outgoing, color: whatsAppGreenLight,),
              Text(
                '2 minutes ago',
                style: TextStyle(color: fadedBlack),
              ),
            ],
          ),
          trailing: Icon(Icons.call, color: whatsAppGreen,),
        ),
      ],
    );
  }
}
