import 'package:flutter/material.dart';

class PaginaUno extends StatelessWidget {
  const PaginaUno({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina1'),
      ),
       body: Center(
         child: Text('Estas en la pagina 1',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30.0,

            ),
            ),

        ),
    );
  }
}