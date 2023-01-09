
import 'package:flutter/material.dart';

void main() => runApp(BirdyAnimation());

class BirdyAnimation extends StatefulWidget {
  const BirdyAnimation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BirdyAnimationState();
  }
}

class BirdyAnimationState extends State<BirdyAnimation> {

  // variable to hold the
  // value of coordinate x.
  double posx = 0;

  // variable to hold the
  // value of coordinate y.
  double posy = 100;

  void Fly_down()
  {
    setState(() {
      if(posy+120<MediaQuery.of(context).size.height) {
        posy += 20;
      }
      else
        {
          posy = MediaQuery. of(context). size. height - 100;
        }
    });
  }
  void Fly_up()
  {
    setState(() {
      if(posy>0) {
        posy -= 20;
      }
      else
      {
        posy =0;
      }
    });
  }
  void Fly_left()
  {
    setState(() {
      if(posx>0) {
        posx -= 20;
      }
      else
      {
        posx = 0;
      }
    });
  }

  void Fly_right()
  {
    setState(() {
      if(posx+120<MediaQuery.of(context).size.width) {
        posx += 20;
      }
      else
      {
        posx = MediaQuery. of(context). size. width - 100;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,

        children: <Widget>[
          Container(
            width: MediaQuery. of(context). size. width,
            height: MediaQuery. of(context). size. height,
            color: Colors.lightGreen,
          ),
          Positioned(
          top: posy,
              left: posx,
              child: Image(image: AssetImage('./images/birdy.png'),width: 100,)),
          Positioned(
              top: MediaQuery. of(context). size. height-100,
              left: MediaQuery. of(context). size. width-200,
              child: FloatingActionButton(
              onPressed:Fly_down,
                  backgroundColor: Colors.black,
                child: Icon(Icons.arrow_circle_down),
              ),
          ),
          Positioned(
            top: MediaQuery. of(context). size. height-220,
            left: MediaQuery. of(context). size. width-200,
            child: FloatingActionButton(
              onPressed:Fly_up,
              backgroundColor: Colors.black,
              child: Icon(Icons.arrow_circle_up),
            ),
          ),
          Positioned(
            top: MediaQuery. of(context). size. height-160,
            left: MediaQuery. of(context). size. width-260,
            child: FloatingActionButton(
              onPressed:Fly_left,
              backgroundColor: Colors.black,
              child: Icon(Icons.arrow_circle_left_outlined),
            ),
          ),
          Positioned(
            top: MediaQuery. of(context). size. height-160,
            left: MediaQuery. of(context). size. width-140,
            child: FloatingActionButton(
              onPressed:Fly_right,
              backgroundColor: Colors.black,
              child: Icon(Icons.arrow_circle_right_outlined),
            ),
          ),












        ],
      ),
    );
  }

}

