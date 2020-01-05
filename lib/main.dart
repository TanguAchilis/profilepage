import 'package:flutter/material.dart';
import 'package:flutter_profilepage/clippaths.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0XFF161d21),
          ),
          ThickBottomPath(),
          TransparentBottomPath(),
          TopPath(),
          Positioned(
            left:MediaQuery.of(context).size.width/1.6,
            top: MediaQuery.of(context).size.height/13,
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ClipOval(child: Container(
                    color: Color(0xFF51fa8f),
                    width: MediaQuery.of(context).size.width/10,
                    height: MediaQuery.of(context).size.height/17,
                  ),),

                  ClipOval(child: Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width/13,
                    height: MediaQuery.of(context).size.height/22,
                  ),),

                  ClipOval(child: Container(
                    color: Color(0xFF51fa8f),
                    width: MediaQuery.of(context).size.width/22,
                    height: MediaQuery.of(context).size.height/34,
                  ),),
                ],
              ),
            ),
          ),
          // TopcircularHolloPath(),
          // TopcircularHallowPathInner1(),
          // TopcircularHallowPathInner2(),
          new ContentContainer()
        ],
      ),
    );
  }
}

class ContentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            Text(
              'Profile',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            ClipOval(
                child: Container(
              color: Colors.grey.shade200,
              width: MediaQuery.of(context).size.width / 3.3,
              height: MediaQuery.of(context).size.height / 5.2,
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Text(
              'Tangu Achils',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            Text(
              'From Los angelos, Mars',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            Text(
              'tanguachilis@gmail.com',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Text(
              'import form relevantsystems',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                  color: Colors.white),
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 100),
              width: MediaQuery.of(context).size.width / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    '  Import',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Gender ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
                Text(
                  'Age ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomContainer(
                  text: 'Male',
                ),
                CustomContainer(
                  text: '22',
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  ' Weight  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
                Text(
                  'Height ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomContainer(
                  text: '62kg',
                ),
                CustomContainer(
                  text: '1.7m',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String text;
  const CustomContainer({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75),
            ),
          ],
          color: Colors.white),
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 100),
      width: MediaQuery.of(context).size.width / 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
