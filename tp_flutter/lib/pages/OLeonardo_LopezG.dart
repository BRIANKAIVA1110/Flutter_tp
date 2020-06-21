import 'package:flutter/material.dart';


class PagLeonardo extends StatefulWidget{
  const PagLeonardo({Key key}): super(key: key);

  @override
  _PagLeonardoState createState() => _PagLeonardoState();
}
class _PagLeonardoState extends State<PagLeonardo> {
@override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oscar Leonardo Lopez Gonzalez'),
      ),
       body: Center(
         child: Column(
           children: <Widget>[
             Text('Estas en la pagina de Leo',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
                ),
                Column(
                  children: <Widget>[
                    TextField(
            decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.yellow,
            filled: true,
            hintText: 'Username',
          )),
                  ],
                ),
           ],
           
         ),

        ),
    );
  }
}