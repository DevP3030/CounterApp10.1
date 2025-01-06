import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Counter App",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900,),
              ),
              //Container(child:Text("Margin and padding",style: TextStyle(fontSize: 25),), height: 300,width: 300, color: Color.fromRGBO(20, 20, 20, 0.03),),
              Text("$i",style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900,),),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(onPressed:()
                {
                  i++;
                setState(() {});
              }, child: Text("PLUS",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900,),),),
                Container(width: 40,),
                ElevatedButton(onPressed:() {
                  i--;
                  setState(() {});
                }, child: Text("Minus",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900,),)),

              ],
              ),
              // ElevatedButton(onPressed:()
              // {
              //   i++;
              //   setState(() {});
              // }, child: Text("PLUS",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900,),),),
              // SizedBox(height: 10),
              // ElevatedButton(onPressed:() {
              //   i--;
              //   setState(() {});
              // }, child: Text("Minus",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900,),),),
            ],
          ),
        ),
      ),
    );
  }
}
