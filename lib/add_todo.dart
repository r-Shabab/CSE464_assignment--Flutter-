import 'package:flutter/material.dart';

class add_todo extends StatefulWidget {
  const add_todo({super.key});

  @override
  State<add_todo> createState() => _add_todoState();
}

class _add_todoState extends State<add_todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Task Board', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            color: Color(0xffF5F8FB),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text('Task One', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text('Your Personal task management and planning solution for planning your day, week & months', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text('12:55 pm 25th May, 2023', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            color: Color(0xffF5F8FB),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text('Task Two', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text('Your Personal task management and planning solution for planning your day, week & months', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text('12:55 pm 25th May, 2023', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            color: Color(0xffF5F8FB),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text('Task Three', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text('Your Personal task management and planning solution for planning your day, week & months', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text('12:55 pm 25th May, 2023', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),)),
              ],
            ),
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.black87,
          shape: CircleBorder(eccentricity: 1),
          child:
          Icon(
              Icons.add,
              color: Colors.white,
          ),
        ),
    );
  }
}
