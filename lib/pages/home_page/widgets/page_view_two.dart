import 'package:flutter/material.dart';
class PageViewTwo extends StatefulWidget {
  const PageViewTwo({super.key});

  @override
  State<PageViewTwo> createState() => _PageViewTwoState();
}

class _PageViewTwoState extends State<PageViewTwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExpansionTile(
            title: Text("Islamic Books",style: TextStyle(fontSize: 25,color: Colors.green),),
            children: [
              Text("Taskiratun avliyo",style: TextStyle(fontSize: 20,color: Colors.indigo),),
              Text("Jannatdan maktub",style: TextStyle(fontSize: 20,color: Colors.indigo),),
              Text("Lison ut-Tayr",style: TextStyle(fontSize: 20,color: Colors.indigo),),
              Text("Ibodat islomiya",style: TextStyle(fontSize: 20,color: Colors.indigo),),
            ],
          ),
        ],
      ),
    );

  }
}
