import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final double width;
  final double height;
  final double size1;
  final double size2;
  final double size3;

  //Creating constructor
  const BottomNav({Key key, this.width, this.height, this.size1, this.size2, this.size3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: this.size1,
            width: this.size1,
            child: ElevatedButton(
              child: Image.asset(
                'assets/images/cancel.png',
                width: this.size1 / 3,
                height: this.size1 / 3,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: CircleBorder()
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: this.size2,
            width: this.size2,
            child: ElevatedButton(
              child: Image.asset(
                'assets/images/star.png',
                width: this.size2 / 1,
                height: this.size2 / 1,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: CircleBorder()
              ),
            
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: this.size3,
            width: this.size3,
            child: ElevatedButton(
              child: Image.asset(
                'assets/images/love.png',
                width: this.size3 / 2.4,
                height: this.size3 / 2.9,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: CircleBorder()
              ),
              
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
