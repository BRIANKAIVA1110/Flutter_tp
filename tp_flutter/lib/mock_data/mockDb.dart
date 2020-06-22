class Articulo{
  String nombre;
  String descripcion;
  Articulo({this.nombre, this.descripcion});
}

class MockDb{
  static List<Articulo> listArticulo= [
    Articulo(nombre: "Articulo1",descripcion: "Descripcion articulo1"),
    Articulo(nombre: "Articulo2",descripcion: "Descripcion articulo2"),
    Articulo(nombre: "Articulo3",descripcion: "Descripcion articulo3"),
  ];
}