import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:nutech/models/user.dart';
import 'package:nutech/pages/change_password.dart';
import 'package:nutech/providers/login_provider.dart';
import 'package:nutech/providers/logout_provider.dart';
import 'package:nutech/utils/helper.dart';
import 'package:provider/provider.dart';

import '../utils/routes.dart';

class AppDrawer extends StatelessWidget {
  Future<User> userFromHive;
  AppDrawer({Key? key, required this.userFromHive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                Text(
                  'Faizan Abbas',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF000000),
                    fontFamily: 'Red Hat Display',
                  ),
                ),
                Text(
                  'abc.xyz@gmail.com',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5F5F5F),
                    fontFamily: 'Red Hat Display',
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Personal Information'),
            onTap: () => Navigator.restorablePushReplacementNamed(
              context,
              RouteGenerator.personalInformation,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Change Password'),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ChangePassword()),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.school,
              // size: Theme.of(context).iconTheme.size,
              // color: Theme.of(context).iconTheme.color,
            ),
            title: const Text('Qualification'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: InkWell(
              onTap: () {
                Provider.of<LogoutProvider>(context, listen: false)
                    .logout(context);
              },
              child: const Text('Logout'),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
