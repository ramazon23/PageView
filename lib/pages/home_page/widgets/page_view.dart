import 'package:flutter/material.dart';

class PageViewOne extends StatefulWidget {
  const PageViewOne({super.key});

  @override
  State<PageViewOne> createState() => _PageViewOneState();
}

class _PageViewOneState extends State<PageViewOne> {
  bool isChecking = false;
  bool isChecking2 = false;
  bool isChecking3 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            tileColor: isChecking ? Colors.blue : Colors.red,
            shape: StadiumBorder(),
            title: isChecking
                ? Text("The box checked")
                : Text("The box not checked"),
            value: isChecking,
            onChanged: (bool? value) {
              setState(() {
                isChecking = !isChecking;
              });
            },
          ),
          SizedBox(height: 20),
          CheckboxListTile(
            tileColor: isChecking2 ? Colors.blue : Colors.red,
            shape: StadiumBorder(),
            title: isChecking2
                ? Text("The box checked")
                : Text("The box not checked"),
            value: isChecking2,
            onChanged: (bool? value) {
              setState(() {
                isChecking2 = !isChecking2;
              });
            },
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 58,
            width: 380,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isChecking3 ? Colors.blue : Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${isChecking3 ? "The box checked" : "The box not checked"}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Switch(
                      value: isChecking3,
                      onChanged: (value) {
                        setState(() {
                          isChecking3 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
