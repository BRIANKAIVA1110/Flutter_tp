
import 'package:flutter/material.dart';
import 'package:tp_flutter/mock_data/mockDb.dart';



class BrianPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articulos"),
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticulosForm()))
                  .whenComplete(() => Navigator.pop(context))
                  .whenComplete(() => Navigator.push(context, MaterialPageRoute(builder: (context)=>BrianPage())));
              },
            ),
            // margin: EdgeInsets.all(10),
          )
        ],
      ),
      body: ArticulosPage(),
    );
  }
}

class ArticulosPage extends StatefulWidget{

  @override
  ArticulosPageState createState() {
    return ArticulosPageState();
  }
}

class ArticulosPageState extends State<ArticulosPage>{
  List<Widget> itemsDetalis;

  ArticulosPageState(){
    itemsDetalis = new List<Widget>();
  }
  
  @override
  void initState() {
    super.initState();
    for (var articulo in MockDb.listArticulo)
    {
      setState(() {
        itemsDetalis.add(ItemDetail(titulo: articulo.nombre, subTitulo: articulo.descripcion));  
      });
    }
      
  }
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: itemsDetalis,
    );
  }
}


/*
 * custom widget para mostrar detalles
 */
class ItemDetail extends StatelessWidget{
  String titulo;
  String subTitulo;
  ItemDetail({this.titulo,this.subTitulo});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(this.titulo??"???",style: TextStyle(fontSize: 25)),
          Text(this.subTitulo??"???",style: TextStyle(fontSize: 15)),
          // Divider( color: Colors.blue,),
        ],
      ),
    );
  }
}

/*
 * custom form widget 
 */
class ArticulosForm extends StatefulWidget{
  @override
  ArticulosFormState createState() {
    return ArticulosFormState();
  }
}
class ArticulosFormState extends State<ArticulosForm>{

  Articulo data= new Articulo();
  
  var _controllerNombre = new TextEditingController();
  var _controllerDescripcion = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close), 
            onPressed: (){
              Navigator.pop(context);
            }
          ),
        ],
        title: Text("Agregar Articulo"),
      ),
      body:Center(
        child: Form(
        key: Key("formArticulo"),
        child:Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.80,
          child: Column(
            children: <Widget>[
              TextFormField(
                key: Key("txtNombre"),
                controller: _controllerNombre,
                decoration: InputDecoration(
                  hintText: "Ingrese Nombre"
                ),
              ),
              TextFormField(
                key: Key("txtDescripcion"),
                controller: _controllerDescripcion,
                decoration: InputDecoration(
                  hintText: "Ingrese Descripcion"
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Agregar"),
                    onPressed: (){
                      MockDb.listArticulo.add(Articulo(
                        nombre: _controllerNombre.text,
                        descripcion: _controllerDescripcion.text
                      ));
                      Navigator.pop(context);
                    },
                  ),
                  RaisedButton(
                    child: Text("Cancelar"),
                    onPressed: (){
                      Navigator.pop(context);
                    }
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}





