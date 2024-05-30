import 'package:flutter/material.dart';

String v_tipoIdentificacion= "Cedula";

modalTipoIdentificacion(BuildContext context){
  return showModalBottomSheet(
    context: context, 
    builder: (context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[400],
          foregroundColor: Colors.white,
          title: const Text("Tipos de Identificación"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: tiposIdentificacion.length,
            itemBuilder: (BuildContext context,int index) {
              return ListTile(
                leading: Icon(Icons.credit_card, color: Colors.teal[400]),
                title: Text(tiposIdentificacion[index]["nombre"] ?? ""),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                subtitle: Text(tiposIdentificacion[index]["abreviacion"] ?? ""),
                onTap: () {
                  v_tipoIdentificacion = tiposIdentificacion[index]["nombre"];
                  Navigator.pop(context);
                  print(v_tipoIdentificacion);
                },
              );
            },
          ),
        ),
      );
    },
 );
}



//////////////////
/// 
    final List<Map<String, dynamic>> tiposIdentificacion = [
    {'id':1,'nombre': "Cédula de Ciudadania", "abreviacion": "CC"},
    {'id':2,'nombre': "Tarjeta de Identidad", "abreviacion": "Para menores de edad"},
    {'id':3,'nombre': "Reg. Civil", "abreviacion": "Registro Civil de Nacimiento"},
    {'id':4,'nombre': "Cédula de Extranjería", "abreviacion": "Documento para extranjeros residentes"},
  ];