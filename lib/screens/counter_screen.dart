
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase(){
    counter ++;
    setState(() {});
  }

  void decrement(){
    counter --;
    setState(() {});
  }

  void zero(){
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text('Numero de clicks', style: fontSize30),
              Text('$counter', style: fontSize30),
            ],
          ),
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation. centerFloat,
      floatingActionButton: CustomFloatAction(
        increseFn: increase, 
        decrementFn: decrement, 
        zeroFn: zero,
      ),
    );
  }
}

class CustomFloatAction extends StatelessWidget {

  final Function increseFn;
  final Function decrementFn;
  final Function zeroFn;

  const CustomFloatAction({
    Key? key, 
    required this.increseFn, 
    required this.decrementFn, 
    required this.zeroFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        FloatingActionButton(
          onPressed: () => increseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
          
        ),
        
        FloatingActionButton(
          onPressed: () => zeroFn(),
          child: const Icon(Icons.exposure_outlined),
        ),
        
        FloatingActionButton(
          onPressed: () => decrementFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}