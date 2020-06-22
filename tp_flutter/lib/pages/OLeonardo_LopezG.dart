import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:flutter/material.dart';

import '../main.dart';


class PagLeonardo extends StatefulWidget{
  const PagLeonardo({Key key}): super(key: key);

  @override
  _PagLeonardoState createState() => _PagLeonardoState();
}
class _PagLeonardoState extends State<PagLeonardo> {
DateTime _dateTime;
@override 
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text('Oscar Leonardo Lopez Gonzalez'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:30.0),
              textfields("Nombre: "), 
              SizedBox(height:10.0),
              textfields('Apellido'), 
              SizedBox(height:10.0),
              Text(_dateTime == null? 'Fecha: ': _dateTime.toString()),
              RaisedButton(
                child: Text('Seleccione fecha'),
                onPressed: (){
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate:DateTime(2000),
                    lastDate:DateTime(2030),
                  ).then((date){
                    _dateTime=date;
                  });
                },
              )
              
             ],
           ),
         ),
      )
    );
  }Widget textfields(String nombre){
    return TextField(
      decoration:InputDecoration(
        contentPadding:const EdgeInsets.symmetric(vertical: 10.0) ,
        hintText:nombre,
        
      ),
    );
  }

}