import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// single for one animation/ one controller
class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  int leftDice = 1;
  int rightDice = 1;
  AnimationController _controller; //private
  CurvedAnimation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  void animate() {
    _controller = AnimationController(duration: Duration(seconds: 1),
        vsync: this);
    _animation = CurvedAnimation(parent: _controller,curve: Curves.bounceInOut);
    _animation.addListener(() {
      setState(() {

      });
      print(_animation.value);
    });
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed){
        print("Completed");
        setState(() {
          leftDice = Random().nextInt(6) + 1;
          rightDice = Random().nextInt(6) + 1;
        });
        _controller.reverse();
      }
    });
  }

  void roll() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar:AppBar(
          title: Text("Dice"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onDoubleTap: roll,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image(
                              height:200-_animation.value*100,
                              image: AssetImage("assets/images/dice-png-$leftDice.png")),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onDoubleTap: roll,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image(
                              height:200-_animation.value*100,
                              image: AssetImage("assets/images/dice-png-$rightDice.png")),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                  onPressed: roll,
                  color: Colors.black,
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 100,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.red,
                          Colors.deepOrangeAccent,
                          Colors.redAccent,
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(5.0),
                    child:
                    const Text('Roll', style: TextStyle(fontSize: 25),  textAlign: TextAlign.center,),
                  ),),
              )
            ],
          ),
        )
    );
  }
}