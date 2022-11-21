import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  final bool fullScreen;

  const ZapatoSizePreview({
    Key? key,
    this.fullScreen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (fullScreen) ? 0 : 30,
        vertical: (fullScreen) ? 0 : 0,
      ),
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          color: const Color(0xffFFCF53),
          borderRadius: (fullScreen)
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  // topLeft: Radius.circular(30),
                  // topRight: Radius.circular(30),
                )
              : BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            // zapato con sombra
            _ZapatoConSombra(),
            // tallas
            if (!fullScreen) const _ZapatoTallas(),
          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  const _ZapatoConSombra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _ZapatoSombra(),
          ),
          Image(image: AssetImage('assets/imgs/azul.png')),
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffEAA14E),
              blurRadius: 40,
            )
          ],
        ),
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  const _ZapatoTallas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoCaja(numero: 7),
          _TallaZapatoCaja(numero: 7.5),
          _TallaZapatoCaja(numero: 8),
          _TallaZapatoCaja(numero: 8.5),
          _TallaZapatoCaja(numero: 9),
          _TallaZapatoCaja(numero: 9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  final double numero;

  const _TallaZapatoCaja({
    Key? key,
    required this.numero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 42,
      height: 42,
      decoration: BoxDecoration(
          color: (numero == 9) ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (numero == 9)
              BoxShadow(
                  color: Color(0xffF1A23A),
                  blurRadius: 10,
                  offset: Offset(0, 5)),
          ]),
      child: Text(
        numero.toString().replaceAll('.0', ''),
        style: TextStyle(
          color: (numero == 9) ? Colors.white : Color(0xffF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
