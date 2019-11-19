import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final styleTitle    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final styleSubTitle = TextStyle( fontSize: 18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulos(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        fit: BoxFit.cover
      )
    );
  }

  Widget _crearTitulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 20.0 ),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Un lago con un puente', style: styleTitle),
                  SizedBox( height: 7.0 ),
                  Text('Un lago en Argentina', style: styleSubTitle)
                ],
              ),
            ),

            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0)
            )
          ],
        ),
      )
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion('CALL', Icons.call),
        _crearAccion('ROUTE', Icons.near_me),
        _crearAccion('SHARE', Icons.share),
      ],
    );
  }

  Widget _crearAccion(String title, IconData icon) {
    return Column(children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(title, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ]
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
          textAlign: TextAlign.justify,
        )
      )
    );
  }
}