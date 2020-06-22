import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  const HomePage({Key key}): super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {


double sizecontainer= 100.0;
@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Grupo 4",
        style: TextStyle(
          color: Colors.black87,
       ),
      ),
      backgroundColor: Colors.blue,
    ),  
    body:Center(
       child: Padding(
         padding: EdgeInsets.all(0.0),
         child: Stack(
           children: <Widget>[
             Container(
               color:Colors.black12,
             ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(
                     //mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                      contenedorcaja(Colors.pink  ,"Maria" , sizecontainer ,'Maria Itati Ramirez'), 
                      SizedBox(height:10.0),
                      contenedorcaja(Colors.red  ,"Leo", sizecontainer,'Oscar Leonardo Lopez Gonzalez'),
                      SizedBox(height:10.0),
                      contenedorcaja(Colors.blue  ,"Brian", sizecontainer,'brianpage'),
                      SizedBox(height:10.0),
                      contenedorcaja(Colors.yellow  ,"Vacante", sizecontainer,'pagina1'),
                     ],
                   ),
                   SizedBox(width:20.0),
                   Column(
                     //mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       contenedorcaja(Colors.cyan, "Ramirez", sizecontainer,'Maria Itati Ramirez'),
                       SizedBox(height:10.0),
                       contenedorcaja(Colors.lightGreen, "Lopez",sizecontainer,'Oscar Leonardo Lopez Gonzalez'),
                       SizedBox(height:10.0),
                       contenedorcaja(Colors.purple, "Villarroel", sizecontainer,'brianpage'),
                       SizedBox(height:10.0),
                       contenedorcaja(Colors.orange, "NN", sizecontainer,'pagina1'),
                     ],
                   )
                 ],
               ),
             ),
           ],
         ),
         ),
       ),
        floatingActionButton: Row(
          children: <Widget>[
            Expanded(child:FloatingActionButton(
              heroTag: 'btmenos',
             onPressed:(){
               setState(() {
                 sizecontainer --;
               });       
             },
             child: Icon(Icons.exposure_neg_1),
             backgroundColor: Colors.redAccent,
             elevation: 2.0,
             
             ),
             
            ),
            Expanded(child:FloatingActionButton(
              heroTag: 'btnmas',
             onPressed:(){
               setState(() {
                 sizecontainer ++;
               });       
             },
             child: Icon(Icons.exposure_plus_1),
             backgroundColor: Colors.redAccent,
             elevation: 2.0,
             ),
            ),
            Expanded(child:FloatingActionButton(
              heroTag: 'btncero ',
             onPressed:(){
               setState(() {
                 sizecontainer =100;
               });       
             },
             child: Icon(Icons.exposure_zero),
             backgroundColor: Colors.redAccent,
             elevation: 2.0,
             ),
            ),
          ],
        ),
        drawer:Drawer(
          child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Menu",
                style: TextStyle(
                  color:Colors.white70,
                ),
              ),
              decoration: BoxDecoration(
                color:Colors.black26,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('lib/src/img/menuTayrona.jpg'),
                  ),
              ),
            ),
            listaOpcion("Pagina 1",'pagina1'),
            //listaOpcion("Opción 2"),
            //listaOpcion("Opcion 3"),
          ],
          ),
        ) ,
     );
} 

Widget contenedorcaja(Color color, String texto , double sizecontainer , String paginas){
  var sizescreenwith=MediaQuery.of(context).size.width;
  return Container(
    child: RaisedButton(
      color: color,
      child: Center(child: Text(texto),),
      onPressed: (){
        return Navigator.pushNamed(context, paginas);
      }
      ),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(100)),
    ),
    height: sizecontainer,
    width:sizescreenwith*0.40 ,
    
    //child: Center(child: Text(texto)),
   
    
    
    );
    
  }

  Widget listaOpcion( String nombre, String pagina){
    return ListTile(
      title: Text(nombre),
      onTap:(){
        return Navigator.pushNamed(context, pagina);
      } ,
    );
  }
}