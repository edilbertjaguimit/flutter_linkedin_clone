// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
// import 'package:flutter_linkedin_clone/components/alert_dialog.dart';
import 'package:flutter_linkedin_clone/components/job_card.dart';
import 'package:flutter_linkedin_clone/components/job_notification_card.dart';
import 'package:flutter_linkedin_clone/components/my_network_card.dart';
import 'package:flutter_linkedin_clone/components/notification_card.dart';
import 'package:flutter_linkedin_clone/components/post_card.dart';
import 'package:flutter_linkedin_clone/components/toast.dart';
// import 'package:flutter_linkedin_clone/pages/post_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  void routeToPostPage() {
    if (currentPageIndex == 2) {
      setState(() {
        Navigator.pushReplacementNamed(context, 'post');
      });
    }
  }

  FToast? fToast;
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast!.init(context);
    _displayToast();
  }

  Future<void> _displayToast() async {
    await Future.delayed(Duration(milliseconds: 500), () {
      fToast!.showToast(
        child: MyToast(message: 'Login Successfully'),
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 3),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6),
          child: GestureDetector(
            onTap: () {
              print('hello');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/My ID.jpg'),
            ),
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffeaf0f5),
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintStyle: TextStyle(fontSize: 15),
                  // isDense: true, // Added this
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Badge(
              label: Text('4'),
              child: SizedBox(
                child: Image.asset('assets/icons/message icon.png'),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.white,
        backgroundColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            // enabled: true,
            selectedIcon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Color(0xff191919), // Change this to your desired color
                BlendMode.srcIn,
              ),
              child: Image.asset('assets/icons/home icon.png'),
            ),
            icon: Image.asset('assets/icons/home icon.png'),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Color(0xff191919), // Change this to your desired color
                BlendMode.srcIn,
              ),
              child: Image.asset('assets/icons/2 person icon.png'),
            ),
            icon: Badge(
                label: Text('9'),
                child: Image.asset('assets/icons/2 person icon.png')),
            label: 'My Network',
          ),
          NavigationDestination(
            selectedIcon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Color(0xff191919), // Change this to your desired color
                BlendMode.srcIn,
              ),
              child: Image.asset('assets/icons/bg plus icon.png'),
            ),
            icon: Image.asset('assets/icons/bg plus icon.png'),
            // Badge(
            //   label: Text('2'),
            //   child: Image.asset('assets/icons/bg plus icon.png'),
            // ),
            label: 'Post',
          ),
          NavigationDestination(
            selectedIcon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Color(0xff191919), // Change this to your desired color
                BlendMode.srcIn,
              ),
              child: Image.asset('assets/icons/bell icon.png'),
            ),
            icon: Badge(
              label: Text('2'),
              child: Image.asset('assets/icons/bell icon.png'),
            ),
            label: 'Notifications',
          ),
          NavigationDestination(
            selectedIcon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Color(0xff191919), // Change this to your desired color
                BlendMode.srcIn,
              ),
              child: Image.asset('assets/icons/clarity_tools-solid.png'),
            ),
            icon: Badge(
              label: Text('2'),
              child: Image.asset('assets/icons/clarity_tools-solid.png'),
            ),
            label: 'Jobs',
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              // Home Page
              Visibility(
                visible: currentPageIndex == 0,
                child: Container(
                  child: Column(
                    children: [
                      PostCard(),
                      Divider(
                        height: 5,
                        thickness: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(
                              'Edilbert Crist Jaguimit ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'reposted this',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PostCard(),
                    ],
                  ),
                ),
              ),

              // My Networks
              Visibility(
                visible: currentPageIndex == 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            '12,987',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff666666),
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Connections',
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Color(0xff666666),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                          thickness: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Invitations (9)',
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  // color: Color(0xff666666),
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'See all',
                                style: TextStyle(color: Color(0xff0a66c2)),
                              )
                            ],
                          ),
                        ),
                        MyNetworkCard(),
                        MyNetworkCard(),
                        MyNetworkCard(),
                        MyNetworkCard(),
                        MyNetworkCard(),
                        MyNetworkCard(),
                        MyNetworkCard(),
                        MyNetworkCard(),
                        MyNetworkCard(),
                      ],
                    ),
                  ),
                ),
              ),

              // Post
              Visibility(
                visible: currentPageIndex == 2,
                child: AppBar(
                  leading: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacementNamed(context, '/post');
                      });
                    },
                  ),
                ),
              ),
              // Notifications
              Visibility(
                visible: currentPageIndex == 3,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Notifications'),
                              Icon(Icons.settings),
                            ],
                          ),
                        ),
                        NotificationCard(
                          userProfileLocationPath: 'assets/Bill Gates.png',
                          userName: 'Bill Gates',
                          timeNotify: '4m',
                          bgCardColor: Color(0xffe2f0fe),
                        ),
                        NotificationCard(
                          userProfileLocationPath: 'assets/Bill Gates.png',
                          userName: 'Bill Gates',
                          timeNotify: '4m',
                          bgCardColor: Color(0xffe2f0fe),
                        ),
                        NotificationCard(
                          userProfileLocationPath: 'assets/Bill Gates.png',
                          userName: 'Bill Gates',
                          timeNotify: '4m',
                          bgCardColor: Color(0xffe2f0fe),
                        ),
                        NotificationCard(
                          userProfileLocationPath: 'assets/Bill Gates.png',
                          userName: 'Bill Gates',
                          timeNotify: '4m',
                          bgCardColor: Colors.white,
                        ),
                        NotificationCard(
                          userProfileLocationPath: 'assets/Bill Gates.png',
                          userName: 'Bill Gates',
                          timeNotify: '4m',
                          bgCardColor: Colors.white,
                        ),
                        NotificationCard(
                          userProfileLocationPath: 'assets/Bill Gates.png',
                          userName: 'Bill Gates',
                          timeNotify: '4m',
                          bgCardColor: Colors.white,
                        ),
                        NotificationCard(
                          userProfileLocationPath: 'assets/Bill Gates.png',
                          userName: 'Bill Gates',
                          timeNotify: '4m',
                          bgCardColor: Colors.white,
                        ),
                        NotificationCard(
                          userProfileLocationPath: 'assets/Bill Gates.png',
                          userName: 'Bill Gates',
                          timeNotify: '4m',
                          bgCardColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Jobs
              Visibility(
                visible: currentPageIndex == 4,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 1,
                                      color: Color(0xffeaeaea),
                                    ),
                                    top: BorderSide(
                                      width: 1,
                                      color: Color(0xffeaeaea),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        '5',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Color(0xff0a66c2),
                                        ),
                                      ),
                                      Text(
                                        'Saved',
                                        style: TextStyle(
                                            color: Color(0xff666666),
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xffeaeaea))),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        '0',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Color(0xff0a66c2),
                                        ),
                                      ),
                                      Text(
                                        'Applied',
                                        style: TextStyle(
                                            color: Color(0xff666666),
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      width: 1,
                                      color: Color(0xffeaeaea),
                                    ),
                                    bottom: BorderSide(
                                      width: 1,
                                      color: Color(0xffeaeaea),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Column(
                                    children: [
                                      // Text(
                                      //   '5',
                                      //   style: TextStyle(
                                      //     color: Color(0xff0a66c2),
                                      //   ),
                                      // ),
                                      Icon(
                                        Icons.edit,
                                        color: Color(0xff0a66c2),
                                        size: 20,
                                      ),
                                      Text(
                                        'Career Interests',
                                        style: TextStyle(
                                            color: Color(0xff666666),
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 10,
                          thickness: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 15, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your job searches',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Manage',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Color(0xff0a66c2),
                                ),
                              ),
                            ],
                          ),
                        ),
                        JobNotificationCard(
                          jobDescription: 'information technology internship',
                          jobLocation:
                              'Taguig, National Capital Region, Philippines',
                          jobCountNew: '11',
                        ),
                        JobNotificationCard(
                          jobDescription: 'information technology internship',
                          jobLocation:
                              'Taguig, National Capital Region, Philippines',
                          jobCountNew: '11',
                        ),
                        JobNotificationCard(
                          jobDescription: 'information technology internship',
                          jobLocation:
                              'Taguig, National Capital Region, Philippines',
                          jobCountNew: '11',
                        ),
                        JobNotificationCard(
                          jobDescription: 'information technology internship',
                          jobLocation:
                              'Taguig, National Capital Region, Philippines',
                          jobCountNew: '11',
                        ),
                        Divider(
                          height: 7,
                          thickness: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Jobs',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        JobCard(
                          imagePathLocation: 'assets/Microsoft.png',
                          jobDescription: 'Associate Software Engineer',
                          companyName: 'Microsoft',
                          companyLocation: 'Makati • 1d',
                          countConnections: '6',
                        ),
                        JobCard(
                          imagePathLocation: 'assets/Microsoft.png',
                          jobDescription: 'Associate Software Engineer',
                          companyName: 'Microsoft',
                          companyLocation: 'Makati • 1d',
                          countConnections: '6',
                        ),
                        JobCard(
                          imagePathLocation: 'assets/Microsoft.png',
                          jobDescription: 'Associate Software Engineer',
                          companyName: 'Microsoft',
                          companyLocation: 'Makati • 1d',
                          countConnections: '6',
                        ),
                        JobCard(
                          imagePathLocation: 'assets/Microsoft.png',
                          jobDescription: 'Associate Software Engineer',
                          companyName: 'Microsoft',
                          companyLocation: 'Makati • 1d',
                          countConnections: '6',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
