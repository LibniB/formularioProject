import 'package:flutter/material.dart';

String v_genero= "Masculino";

modalGenero(BuildContext context){
  return showModalBottomSheet(
    context: context, 
    builder: (context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[400],
          foregroundColor: Colors.white,
          title: const Text("Genero"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: tipoGenero.length,
            itemBuilder: (BuildContext context,int index) {
              return ListTile(
                leading: Icon(Icons.transgender, color: Colors.teal[400]),
                title: Text(tipoGenero[index]["nombre"] ?? ""),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  v_genero = tipoGenero[index]["nombre"];
                  Navigator.pop(context);
                  print(v_genero);
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
    final List<Map<String, dynamic>> tipoGenero = [
    {'id':1,'nombre': "Masculino"},
    {'id':2,'nombre': "Femenino"},
    {'id':3,'nombre': "Binario"},
  ];