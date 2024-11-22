import 'package:flutter/material.dart';
import 'package:superjara/api/api_connect/api.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/home/home_page.dart';
import 'package:superjara/members/members_screen.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';
import 'package:superjara/messaging/mtn_share/mtn_share.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [
    const HomeScreen(),
    const MemberScreen(),
    const MtnShare(),
    const API(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.black,
          currentIndex: 0,
          onTap: changeIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.grey,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                size: 28,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Members',
              icon: Icon(
                Icons.people,
                size: 28,
              ),
            ),
            BottomNavigationBarItem(
              label: 'MTN Share',
              icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  'assets/icons/mtn.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Api',
              icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset('assets/icons/api.png'),
              ),
            ),
            const BottomNavigationBarItem(
              label: 'More',
              icon: Icon(
                Icons.more_time_rounded,
                size: 28,
              ),
            ),
          ],
          backgroundColor: const Color(0xffffffff)),
    );
  }
}
