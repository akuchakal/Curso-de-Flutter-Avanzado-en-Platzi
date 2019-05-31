import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {

  double width = 0.0;
  double heigth = 0.0;
  final String texto;
  final VoidCallback onPressed;

  ButtonGreen({
    Key key, 
    @required this.texto,
    @required this.onPressed,
    this.heigth, 
    this.width
  });

  @override
  State<StatefulWidget> createState() {

    return _ButtonGreen();
  }

  
}

class _ButtonGreen extends State<ButtonGreen> {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        height: widget.heigth,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
              colors: [
                Color(0xFFa7ff84),  //arriba
                Color(0xFF1cbb78) //abajo
              ],
              begin: FractionalOffset(0.1, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.9],
              tileMode: TileMode.clamp

            )
        ),
        child: Center(
          child: Text(
            widget.texto,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white
            ),

          ),
        ),
      ),
    );
  }
  
}