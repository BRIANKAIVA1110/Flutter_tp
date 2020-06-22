import 'package:flutter/material.dart';
import 'package:tp_flutter/mock_data/mockDb.dart';

class BrianPage extends StatefulWidget{
  @override
  BrianPagestate createState() {
    return BrianPagestate();
  }
}

class BrianPagestate extends State<BrianPage>{
  Widget listaItemDetails;
  List<Widget> itemsDetalis;

  BrianPagestate(){
    itemsDetalis = new List<Widget>();

    for (var articulo in MockDb.listArticulo) {
      itemsDetalis.add(ItemDetail(titulo: articulo.nombre, subTitulo: articulo.descripcion));
    }

    listaItemDetails = new ListView(
      children: itemsDetalis,
    );
  }

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
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return Center(
                      child: Container(
                        child: Text("data"),
                        color: Colors.white,
                      ),
                    );
                  },

                );
              },
            ),
            margin: EdgeInsets.all(10),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          listaItemDetails
        ],
      ),
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
    return Container(
      child: Column(
        children: <Widget>[
          Text(this.titulo??"???"),
          Text(this.subTitulo??"???"),
        ],
      ),
    );
  }
}