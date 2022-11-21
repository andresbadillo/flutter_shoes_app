import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  final String texto;
  final double height;
  final double width;
  final Color color;

  const BotonNaranja({
    Key? key,
    required this.texto,
    this.height = 50,
    this.width = 150,
    this.color = const Color(0xffF1A23A),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
