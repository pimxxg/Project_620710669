import 'package:flutter/material.dart';
import 'package:project_620710669/USA/homeUSA.dart';
import 'package:project_620710669/china/homeChina.dart';
import 'package:project_620710669/eu/homeEU.dart';
import 'package:project_620710669/uk/homeUK.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.greenAccent.shade100,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 50.0,
                          height: 30.0,
                        ),
                        Text(
                          'คํานวณอัตราแลกเปลี่ยนเงินไทยเป็นเงินต่างประเทศ',
                          style:
                              TextStyle(fontSize:45.0, color: Colors.black54),
                        ),
                        Image.asset(
                          'assets/images/1.png',
                          height: 300.0,
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          width: 50.0,
                          height: 30.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(5),//To let the Container background be displayed
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                              builder : (context) => HomeUSA()
                            ));
                          },
                          icon: Image.asset('assets/images/usa.png'),
                          iconSize: 120.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 200, height:50),
                    ClipOval(
                      child: Material(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(5),//To let the Container background be displayed
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder : (context) => HomeEU()
                            ));
                          },
                          icon: Image.asset('assets/images/EU.png'),
                          iconSize: 120.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(5),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder : (context) => HomeUK()
                            ));
                          },
                          icon: Image.asset('assets/images/UK.png'),
                          iconSize: 120.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 200, height:50),
                    ClipOval(
                      child: Material(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(5),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder : (context) => HomeChina()
                            ));
                          },
                          icon: Image.asset('assets/images/China.png'),
                          iconSize: 120.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
