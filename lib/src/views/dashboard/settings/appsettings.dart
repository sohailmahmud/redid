import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redid/src/styles/constants.dart';
import 'package:redid/src/views/auth/signin/signin.dart';
import 'package:redid/src/views/dashboard/settings/laguages_screen.dart';
import 'package:settings_ui/settings_ui.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);
  static String tag = 'AppSettings';

  @override
  AppSettingsState createState() => AppSettingsState();
}

class AppSettingsState extends State<AppSettings> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 50,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: kBaseColor),
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.chevronCircleLeft),
          splashRadius: 25,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'App Settings',
          style: kAppBarTextStyle,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: buildSettingsList(),
    );
  }

  Widget buildSettingsList() {
    return SettingsList(
      brightness: Brightness.light,
      contentPadding: const EdgeInsets.only(top: 15),
      physics: const BouncingScrollPhysics(),
      sections: [
        SettingsSection(
          title: const Text('Common'),
          tiles: [
            SettingsTile(
              title: const Text('Language'),
              value: const Text('English'),
              leading: const Icon(Icons.language),
              onPressed: (context) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const LanguagesScreen(),
                ));
              },
            ),
            SettingsTile(
              title: const Text('Environment'),
              value: const Text('Production'),
              leading: const Icon(Icons.cloud_queue),
            ),
          ],
        ),
        SettingsSection(
          title: const Text('Account'),
          tiles: [
            SettingsTile(
                title: const Text('Phone number'),
                leading: const Icon(Icons.phone)),
            SettingsTile(
                title: const Text('Email'), leading: const Icon(Icons.email)),
            SettingsTile(
              title: const Text('Sign out'),
              leading: const Icon(Icons.exit_to_app),
              onPressed: (context) {
                Navigator.of(context).pushNamed(SignIn.tag);
              },
            ),
          ],
        ),
        SettingsSection(
          title: const Text('Security'),
          tiles: [
            SettingsTile.switchTile(
              title: const Text('Lock app in background'),
              leading: const Icon(Icons.phonelink_lock),
              onToggle: (bool value) {
                setState(() {
                  lockInBackground = value;
                  notificationsEnabled = value;
                });
              },
              initialValue: lockInBackground,
            ),
            SettingsTile.switchTile(
              title: const Text('Use fingerprint'),
              description: const Text(
                  'Allow application to access stored fingerprint IDs.'),
              leading: const Icon(Icons.fingerprint),
              onToggle: (bool value) {},
              initialValue: false,
            ),
            SettingsTile.switchTile(
              title: const Text('Change password'),
              leading: const Icon(Icons.lock),
              onToggle: (bool value) {},
              initialValue: true,
            ),
            SettingsTile.switchTile(
              title: const Text('Enable Notifications'),
              leading: const Icon(Icons.notifications_active),
              onToggle: (value) {},
              initialValue: true,
            ),
          ],
        ),
        SettingsSection(
          title: const Text('Misc'),
          tiles: [
            SettingsTile(
                title: const Text('Terms of Service'),
                leading: const Icon(Icons.description)),
            SettingsTile(
                title: const Text('Open source licenses'),
                leading: const Icon(Icons.collections_bookmark)),
          ],
        ),
        // CustomSection(
        //   child: Column(
        //     children: const [
        //       Padding(
        //         padding: EdgeInsets.only(top: 22, bottom: 4),
        //         child: Text(
        //           'redID',
        //           style: kAppBarTextStyle,
        //         ),
        //       ),
        //       Text(
        //         'Version: 1.0.2_d15',
        //         style: TextStyle(color: Color(0xFF777777)),
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
