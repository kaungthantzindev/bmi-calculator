import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bmicolour;
  final Widget childCard;
  final Function onPress;
  ReusableCard({@required this.bmicolour, this.childCard, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: bmicolour,
        ),
      ),
    );
  }
}
