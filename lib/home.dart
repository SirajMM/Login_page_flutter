import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_login/login.dart';
import 'package:ui_login/splash.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            SystemNavigator.pop();
          },
        ),
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            ListTile(
              title: Text(
                'Rock',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Good Morning',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/dwayne-the-rock-.jpg')),
              trailing: const Text('1:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Mammokka',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'enthalla?',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: ClipRRect(
                child: Container(
                  width: 41,
                  height: 40,
                  child: Image.asset('assets/images/SOP_Mammootty2016.jpg'),
                ),
              ),
              trailing: const Text('2:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Lalettan',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Hello',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/mohanlal.jpg')),
              trailing: const Text('2:30 PM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Tovino',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Good Morning',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: ClipRRect(
                child: Container(
                  width: 41,
                  height: 40,
                  child: Image.asset('assets/images/tovino-thomas.jpg'),
                ),
              ),
              trailing: const Text('2:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Dulquer',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Heyy',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/Dulquer.jpeg'),
              ),
              trailing: const Text('1:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Sharukh Khan',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'क्या हाल है ?',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: ClipRRect(
                child: Container(
                  width: 41,
                  height: 40,
                  child: Image.asset('assets/images/srk.jpg'),
                ),
              ),
              trailing: const Text('2:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Vijay',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Good Morning',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Vijay.cms')),
              trailing: const Text('1:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Surya',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Good Morning',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: ClipRRect(
                child: Container(
                  width: 41,
                  height: 40,
                  child: Image.asset('assets/images/Surya.jpg'),
                ),
              ),
              trailing: const Text('2:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Vikram',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Good Morning',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/vikram.jpeg')),
              trailing: const Text('1:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Nivin Pauly',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Machaa..',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: ClipRRect(
                child: Container(
                  width: 41,
                  height: 40,
                  child: Image.asset('assets/images/nivinPauly.jpg'),
                ),
              ),
              trailing: const Text('2:00 AM'),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Hrithik Roshan',
                style: GoogleFonts.concertOne(fontStyle: FontStyle.normal),
              ),
              subtitle: Text(
                'Good Morning',
                style: GoogleFonts.lato(fontStyle: FontStyle.italic),
              ),
              leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/hrithik_roshan.jpg')),
              trailing: const Text('1:00 AM'),
            ),
          ],
        ),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedPrfs = await SharedPreferences.getInstance();
    await _sharedPrfs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => LoginScreen()), (route) => false);
  }
}
