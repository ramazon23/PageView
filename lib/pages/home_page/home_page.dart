import 'package:buttoms/pages/home_page/widgets/page_view.dart';
import 'package:buttoms/pages/home_page/widgets/page_view_three.dart';
import 'package:buttoms/pages/home_page/widgets/page_view_two.dart';
import 'package:flutter/material.dart';
import 'custom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int pageNumber = 0;

  int getNotificationNumber = 0;

  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Icon(Icons.notifications),
                    ),
                    Badge(
                      label: Text(getNotification(getNotificationNumber)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: PageView(
        controller: pageController,
        children: [
          PageViewOne(),
          PageViewTwo(),
          PageViewThree(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            getNotificationNumber++;
          });
        },
        shape: const CircleBorder(),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: CustomNavigationBar(
        pageNumber: pageNumber,
        onPageChange: (value) {
          pageNumber = value;
          pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          setState(() {});
        },
      ),
    );
  }
}
String getNotification(int a) {
  if (a <= 9) {
    return a.toString();
  } else {
    return "9+";
  }
}