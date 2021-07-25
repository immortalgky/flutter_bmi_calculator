import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

const textColor = Colors.white;
const primaryBackgroundColor = Color(0xFFFFC947);
const secondaryBackgroundColor = Color(0xFFFFB74D);

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        backgroundColor: primaryBackgroundColor,
        appBar: AppBar(
          title: Text(
            'Vaccine Calculator',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: primaryBackgroundColor,
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: secondaryBackgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/prayuth.png',
                      scale: 1.5,
                    ),
                    Icon(
                      Icons.male,
                      size: 40,
                      color: Colors.blue,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/pom.png',
                      scale: 1.8,
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      colorBlendMode: BlendMode.modulate,
                    ),
                    Icon(
                      Icons.female,
                      size: 40,
                      color: Colors.pink,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Height',
                style: TextStyle(fontSize: 20, color: textColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '178',
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        color: textColor),
                  ),
                  Text(
                    'cm',
                    style: TextStyle(fontSize: 30, color: textColor),
                  ),
                ],
              ),
              CupertinoSlider(
                  value: 180, min: 0, max: 300, onChanged: (value) => {})
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Container(
                    color: secondaryBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(fontSize: 20, color: textColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '82',
                              style: TextStyle(fontSize: 60, color: textColor),
                            ),
                            Text(
                              'kg',
                              style: TextStyle(fontSize: 20, color: textColor),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () => {},
                              child: Text('-'),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                                primary: Colors.white, // <-- Button color
                                onPrimary: Colors.black, // <-- Splash color
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => {},
                              child: Text('+'),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                                primary: Colors.white, // <-- Button color
                                onPrimary: Colors.black, // <-- Splash color
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Container(
                    color: secondaryBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(fontSize: 20, color: textColor),
                        ),
                        Text(
                          '67',
                          style: TextStyle(fontSize: 60, color: textColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () => {},
                              child: Text('-'),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                                primary: Colors.white,
                                onPrimary: Colors.black,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => {},
                              child: Text('+'),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                                primary: Colors.white,
                                onPrimary: Colors.black,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '💉 คุณได้รับ Sinovac x10 ช่องถัดไป 💉',
                    style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 20,
                        color: textColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
