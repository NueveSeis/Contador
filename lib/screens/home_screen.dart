
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    int counter = 10;
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Numero de clicks', style: fontSize30),
              Text('$counter', style: fontSize30),
            ],
          ),
          ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop ,
      floatingActionButton: FloatingActionButton(
        child:const  Icon(Icons.add),
        onPressed:(){
          print('Holamdos');
          counter ++;
        } ,
      ),
    );
  }


}