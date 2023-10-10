import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  CustomNavigationBar({
    required this.pageNumber,
    required this.onPageChange,
    super.key,
  });

  int pageNumber;
  void Function(int value) onPageChange;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.blue,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      notchMargin: 10,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              currentIndex = 0;
              widget.onPageChange(currentIndex);
              setState(() {});
            },
            child: Text(
              '1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: currentIndex == 0 ? Colors.red : Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              currentIndex = 1;
              widget.onPageChange(currentIndex);
              setState(() {});
            },
            child: Text(
              '2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: currentIndex == 1 ? Colors.red : Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              currentIndex = 2;
              widget.onPageChange(currentIndex);
              setState(() {});
            },
            child: Text(
              '3',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: currentIndex == 2 ? Colors.red : Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),

        ],
      ),
    );
  }
}