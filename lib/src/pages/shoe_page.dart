import 'package:flutter/material.dart';

import 'package:shoesapp/src/widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomAppBar(texto: 'For you'),
      // body: ZapatoSizePreview(),
      body: Column(
        children: [
          CustomAppBar(texto: 'For you'),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ZapatoSizePreview(),
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
          ),
          AgregarCarritoBoton(monto: 180.0),
        ],
      ),
    );
  }
}
