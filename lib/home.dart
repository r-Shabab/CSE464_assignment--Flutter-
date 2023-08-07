import 'package:flutter/material.dart';
import 'package:to_do_app/add_todo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(90, 300, 90, 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text('Welcome to', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, height: 0.5),),
            Text('Plan IT', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 32),),
            SizedBox(
              height: 270,
            ),
            Text('Your Personal task management', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
            Text('and planning solution', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>add_todo()));
              },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Text("Let's get started"),
                  ),

                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black87),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))
                ),),
            )
          ],
        )
      ),
    );
  }
}
