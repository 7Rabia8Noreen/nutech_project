import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
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
            leading: Icon(
              Icons.school,
              // size: Theme.of(context).iconTheme.size,
              // color: Theme.of(context).iconTheme.color,
            ),
            title: const Text('Qualification'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.login_outlined),
            title: InkWell(
              onTap: () => Navigator.pushReplacementNamed(
                context,
                RouteGenerator.login,
              ),
              child: const Text('Login'),
            ),
            onTap: () {},
          ),
          const Divider(),
        ],
      ),
    );
  }
}
