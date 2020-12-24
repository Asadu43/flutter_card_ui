import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){}),
        title: Text("Near By",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
          Padding(padding: EdgeInsets.only(right: 8.0,),
            child: IconButton(icon: Icon(Icons.face,color: Colors.black,size: 40.0,), onPressed: (){}),),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 40.0),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(left: 20.0,child: Container(
                  height: 400.0,
                  width: 260.0,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ), ),
                Positioned(left: 20.0,child: Container(
                  height: 400.0,
                  width: 280.0,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                ),
                Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('images/girl.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 340,
                  left: 15.0,
                  child: Container(
                    width: 270.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text("Kalya",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),),
                              SizedBox(width: 7.0,),
                              Icon(Icons.cloud_circle,color: Colors.red,size: 30.0,),
                              SizedBox(width: 100.0,),
                              Text("5.8km",
                                style: TextStyle(fontSize: 20.0, color: Colors.grey),)
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Text(
                                'Fate is Wonderful.',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){},
                child: Icon(Icons.close,size: 25.0,color: Colors.black,),
                backgroundColor: Colors.white,),
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 2.0,
                      style: BorderStyle.solid
                    ),
                  ),
                   child: Container(
                     child: Center(
                       child: IconButton(icon: Icon(Icons.chat_bubble,color: Colors.cyan, size: 40.0,), onPressed: null),
                     ),
                   ),
                ),
                FloatingActionButton(onPressed: (){},
                  child: Icon(Icons.favorite,size: 25.0,color: Colors.red,),
                  backgroundColor: Colors.white,),
              ],
            ),
          ),
        ],
      ),

    );
  }
}

