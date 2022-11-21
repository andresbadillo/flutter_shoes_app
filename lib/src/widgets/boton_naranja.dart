import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  final String texto;

  const BotonNaranja({
    Key? key,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xffF1A23A),
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
