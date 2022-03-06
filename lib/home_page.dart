import 'package:flutter/material.dart';
import 'package:hw7_navigation_app/second_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context){
                    return SecondPage();
                    })
                  
                  )
              },
              child: Text('SecondPage'),
            ),

            ElevatedButton(onPressed: () => {
              Navigator.of(context).pushNamed('/third_page')
            }, child: Text('ThirdPage')),

            ElevatedButton(onPressed: () => {
              Navigator.of(context).pushNamed('/noname')
            }, child: Text('NotFound'))
          ],
        )
      ),
    );
  }
}