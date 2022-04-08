import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_620710669/homepage/home.dart';

class HomeChina extends StatefulWidget {
  const HomeChina({Key? key}) : super(key: key);

  @override
  State<HomeChina> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeChina> {
  int _counter = 0;
  var _thb = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.yellow.shade600,
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
                          height: 50.0,
                        ),
                        Text(
                          'แปลงจากเงินบาท(THB) เป็น หยวน(CNY)',
                          style: TextStyle(fontSize: 40.0, color: Colors.black54),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          '1 CNY = 5.27 THB',
                          style: TextStyle(fontSize: 30.0, color: Colors.black54),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '1 THB = 0.19 CNY',
                          style: TextStyle(fontSize: 30.0, color: Colors.black54),
                        ),
                        SizedBox(
                          width: 50.0,
                          height: 70.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Image.asset(
                            'assets/images/Thai.png',
                            height: 150.0,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: SizedBox(
                            width: 300.0,
                            height: 100.0,
                            child: TextField(
                              textAlign: TextAlign.center,
                              controller: _thb,
                              decoration: InputDecoration(
                                labelText: 'เงินบาท(THB)',
                                prefixIcon: Icon(Icons.money_outlined),
                                filled: true,
                                fillColor: Colors.white.withOpacity(1.0),
                                border: OutlineInputBorder(),
                                hintText: 'Enter THB',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                            child: Text('คำนวณ',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white)),
                            onPressed: () {
                              var input = _thb.text;
                              var THB = double.tryParse(input);
                              var total = THB! * 0.19;
                              //double num = double.parse((total).toStringAsFixed(3));
                              showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return CupertinoAlertDialog(
                                      title: Text("ผลจากการแปลงค่าเงิน",
                                          style: TextStyle(fontSize: 25)),
                                      content: Text("เท่ากับ $total CNY",
                                          style: TextStyle(fontSize: 20)),
                                      actions: [
                                        CupertinoDialogAction(
                                            child: Text("OK"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            })
                                      ],
                                    );
                                  });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellow.shade900, // background
                              //onPrimary: Colors.white, // foreground
                            ),
                          ),
                        ),
                        SizedBox(height: 200,),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: FloatingActionButton(
                                  child: Icon(Icons.home ,size: 50,),
                                  tooltip: 'Homepage',
                                  backgroundColor: Colors.red,
                                  onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder : (context) => MyHomePage()
                                    ));
                                  }),
                            ),
                          ],
                        ),
                      ],
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
