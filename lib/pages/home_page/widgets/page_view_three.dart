import 'package:flutter/material.dart';

class PageViewThree extends StatefulWidget {
  const PageViewThree({super.key});

  @override
  State<PageViewThree> createState() => _PageViewThreeState();
}

class _PageViewThreeState extends State<PageViewThree> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
        child: Text('Open PopUp'),
        ),
      ),
    );
  }
}
