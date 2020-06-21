import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';



class PagMaria extends StatefulWidget{
  const PagMaria({Key key}): super(key: key);

  @override
  _PagMariaState createState() => _PagMariaState();
}
class _PagMariaState extends State<PagMaria> {
@override 


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Maria Itati Ramirez'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.orange[200],
              Colors.lightBlueAccent
            ])          
         ),        
     ),      
 ),
       // title: Text('Maria Itati Ramirez'),
      
       body: Container(
         
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/src/img/Mariaprinc.jpg"),
            fit: BoxFit.cover,
          ),
        ),
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Center(
             child: Column(
               children: <Widget>[
                 
                //new Image.asset("lib/src/img/Mariaprinc.jpg"),
                 Text('Nuevo Destino',
                  style: TextStyle(
                    color: Colors.orange[100],
                    fontSize: 30.0,
                  ),
                  ),
                  SizedBox(height:10.0),
                  campo('Nombre'),
                  SizedBox(height:10.0),
                  campo('Apellido'),
                  SizedBox(height:10.0),
                  campo('Destino'),
                  SizedBox(height:10.0),
                  campoFecha('Fecha de Salida'),
                  SizedBox(height:10.0),
                  campoFecha('Fecha de Regreso'),                 
               ],
             ),
           ),
         ),
       ),
    );
  }

Widget campo(String nombre){
  return TextField(

    decoration:InputDecoration(
      contentPadding:const EdgeInsets.symmetric(vertical: 10.0) ,
      hintText:nombre ,
      fillColor: Colors.white,
      filled: true,
      border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      )
    ),
   );
}
Widget campoFecha( String fecha){
  return TextField(
                   onTap:(){
                     DatePicker.showDatePicker(context,
                      showTitleActions:true,
                      minTime: DateTime(2018, 1, 1),
                      maxTime: DateTime(2030, 31, 12),
                      onConfirm: (date){
                        setState((){
                          fecha = date.toString();
                        });
                      }, currentTime: DateTime.now(), locale: LocaleType.es);  
                   },
                    decoration: InputDecoration(
                      contentPadding:const EdgeInsets.symmetric(vertical: 15.0) ,
                      hintText: fecha,
                      fillColor: Colors.white,
                      filled: true,
                      icon:Icon(Icons.calendar_today,),
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(15),
                      ),
                    ),
                 );
}
}