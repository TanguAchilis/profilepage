import 'package:flutter/material.dart';
import 'dart:ui';


class TopPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0xFF51fa8f)),
      ),
      clipper: TopPathClipper(),
    );
  }
}

class TopcircularHolloPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0xFF51fa8f)),
        
      ),
      clipper: TopcircularHolloWaveClipper(),
    );
  }
}

class TopcircularHallowPathInner1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.white),
      ),
      clipper: TopcircularHallowPathInner1WaveClipper(),
    );
  }
}


class TopcircularHallowPathInner2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0xFF51fa8f)),
      ),
      clipper: TopcircularHallowPathInner2WaveClipper(),
    );
  }
}


class ThickBottomPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF51fa8f), Colors.white,Colors.white]

          )
        ),
      ),
      clipper: ThickBottomPathClipper(),
    );
  }
}


class TransparentBottomPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0x1951fa8f)),
      ),
      clipper: TransparentBottomPathClipper(),
    );
  }
}



//section for the paths
class TopPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width / 2.9, 0.0);

    var firstControlPoint = Offset(size.width / 2.5, size.height / 13);
    var firstEndPoint = Offset(size.width / 1.7, size.height/16);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width/1.25, size.height / 25);
    var secondEndPoint = Offset(size.width/1.2, size.height / 9.3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width / 1.21, size.height/9);

//this is the section for the flower
//
    var thirdControlPoint = Offset(size.width /1.21, size.height / 12);
    var thirdEndPoint = Offset(size.width / 1.3, size.height/8.5);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.lineTo(size.width / 1.3, size.height/7.5);

      var forthControlPoint = Offset(size.width / 1.31, size.height/9);
    var forthEndPoint = Offset(size.width / 1.41, size.height/8.5);
    path.quadraticBezierTo(forthControlPoint.dx, forthControlPoint.dy,
        forthEndPoint.dx, forthEndPoint.dy);
//section for circle is to b done here


//////////

    path.lineTo(size.width / 1.41, size.height/7.6);
var fifthControlPoint = Offset(size.width / 1.32, size.height/6);
    var fifthEndPoint = Offset(size.width / 1.28, size.height/6.8);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fifthEndPoint.dx, fifthEndPoint.dy);

    //path.lineTo(size.width / 1.23, size.height/6.5);
var sixthControlPoint = Offset(size.width / 1.24, size.height/6.9);
    var sixthEndPoint = Offset(size.width / 1.2, size.height/7.8);
    path.quadraticBezierTo(sixthControlPoint.dx, sixthControlPoint.dy,
        sixthEndPoint.dx, sixthEndPoint.dy);



    //path.lineTo(size.width / 1.2, size.height/7.8);
    path.lineTo(size.width / 1.15, size.height / 5.9);

    path.lineTo(size.width, size.height / 5.9);

    // var firstControlPoint = Offset(size.width / 1.16, size.height / 18);
    // var firstEndPoint = Offset(size.width / 1.13, size.height / 21);
    // path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
    //     firstEndPoint.dx, firstEndPoint.dy);

    //path.lineTo(size.width/1.15, size.height/12);

    path.lineTo(size.width, 0.0);

    // var secondControlPoint = Offset(size.width / 1.16, size.height / 13);
    // var secondEndPoint = Offset(size.width / 1.22, size.height / 16);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondEndPoint.dx, secondEndPoint.dy);

    // path.lineTo(size.width/1.25, size.height/10);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}







class TopcircularHolloWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    //outer circle
    path.lineTo(size.width / 1.4, size.height/8.5);
    var firstControlPoint = Offset(size.width / 1.4, size.height/9.4);
    var firstEndPoint = Offset(size.width / 1.43, size.height/10.3);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    
    var secondControlPoint = Offset(size.width / 1.4, size.height/13);
    var secondEndPoint = Offset(size.width / 1.43, size.height/10.3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //path.lineTo(size.width / 1.43, size.height/10.3);
    //path.lineTo(size.width / 1.5, size.height/12);
    var thirdControlPoint = Offset(size.width / 1.6, size.height/15);
    var thirdEndPoint = Offset(size.width / 1.64, size.height/8.5);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    // path.lineTo(size.width / 1.6, size.height/11);
    // path.lineTo(size.width / 1.67, size.height/8.5);
    // path.lineTo(size.width / 1.6, size.height/7);


    var forthControlPoint = Offset(size.width / 1.61, size.height/6.5);
    var forthEndPoint = Offset(size.width / 1.47, size.height/6.9);
    path.quadraticBezierTo(forthControlPoint.dx, forthControlPoint.dy,
        forthEndPoint.dx, forthEndPoint.dy);
        
   // path.lineTo(size.width / 1.48, size.height/7);

   var fifthControlPoint = Offset(size.width / 1.4, size.height/7);
    var fifthEndPoint = Offset(size.width / 1.4, size.height/8.5);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fifthEndPoint.dx, fifthEndPoint.dy);

    // path.lineTo(size.width / 1.41, size.height/7.6);
    // path.lineTo(size.width / 1.41, size.height/8.5);


    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class TopcircularHallowPathInner1WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width / 1.42, size.height/8.5);
    var firstControlPoint = Offset(size.width / 1.4, size.height/8);
    var firstEndPoint = Offset(size.width / 1.452, size.height/10.3);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    
    var secondControlPoint = Offset(size.width / 1.45, size.height/10);
    var secondEndPoint = Offset(size.width / 1.45, size.height/9.73);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //path.lineTo(size.width / 1.43, size.height/10.3);
    //path.lineTo(size.width / 1.5, size.height/12);
    var thirdControlPoint = Offset(size.width / 1.61, size.height/13);
    var thirdEndPoint = Offset(size.width / 1.6, size.height/8.5);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    // path.lineTo(size.width / 1.6, size.height/11);
    // path.lineTo(size.width / 1.67, size.height/8.5);
    // path.lineTo(size.width / 1.6, size.height/7);


    var forthControlPoint = Offset(size.width / 1.61, size.height/6.72);
    var forthEndPoint = Offset(size.width / 1.47, size.height/7.3);
    path.quadraticBezierTo(forthControlPoint.dx, forthControlPoint.dy,
        forthEndPoint.dx, forthEndPoint.dy);
        
   // path.lineTo(size.width / 1.48, size.height/7);

   var fifthControlPoint = Offset(size.width / 1.4, size.height/7.4);
    var fifthEndPoint = Offset(size.width / 1.42, size.height/8.5);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fifthEndPoint.dx, fifthEndPoint.dy);

    // path.lineTo(size.width / 1.41, size.height/7.6);
    // path.lineTo(size.width / 1.41, size.height/8.5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}



class TopcircularHallowPathInner2WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width / 1.56, size.height/8.8);
    var firstControlPoint = Offset(size.width / 1.55, size.height/9.3);
    var firstEndPoint = Offset(size.width / 1.5, size.height/9.75);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    //path.lineTo(size.width / 1.5, size.height/9.9);

  var secondControlPoint = Offset(size.width / 1.43, size.height/9.1);
    var secondEndPoint = Offset(size.width / 1.44, size.height/8.3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    //path.lineTo(size.width / 1.46, size.height/8.4);

    var thirdControlPoint = Offset(size.width / 1.45, size.height/7.4);
    var thirdEndPoint = Offset(size.width / 1.52, size.height/7.7);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    //path.lineTo(size.width / 1.52, size.height/7.8);

        var forthControlPoint = Offset(size.width / 1.57, size.height/8.1);
    var forthEndPoint = Offset(size.width / 1.56, size.height/8.8);
    path.quadraticBezierTo(forthControlPoint.dx, forthControlPoint.dy,
        forthEndPoint.dx, forthEndPoint.dy);
    //path.lineTo(size.width / 1.56, size.height/8.8);
  

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}



class ThickBottomPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height / 2.5);
    var firstControlPoint = Offset(size.width / 6, size.height / 3);
    var firstEndPoint = Offset(size.width / 3, size.height / 2.33);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
//
    var secondControlPoint = Offset(size.width/1.8, size.height / 1.88);
    var secondEndPoint = Offset(size.width - (size.width / 4), size.height / 2.3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(size.width /1.12, size.height / 2.7);
    var thirdEndPoint = Offset(size.width, size.height / 2.5);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}



class TransparentBottomPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height / 2.5);
    var firstControlPoint = Offset(size.width / 3.8, size.height / 3.4);
    var firstEndPoint = Offset(size.width / 2.4, size.height / 2.45);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
//
    var secondControlPoint = Offset(size.width/1.78, size.height / 2);
    var secondEndPoint = Offset(size.width - (size.width / 3), size.height / 2.15);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(size.width /1.13, size.height / 2.9);
    var thirdEndPoint = Offset(size.width, size.height / 2.4);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

