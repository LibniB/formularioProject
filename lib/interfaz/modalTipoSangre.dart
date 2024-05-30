import 'package:flutter/material.dart';

String v_tipoSangre= "Cedula";

modalTipoSangre(BuildContext context){
  return showModalBottomSheet(
    context: context, 
    builder: (context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[400],
          foregroundColor: Colors.white,
          title: const Text("Tipos de Sangre"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: listaTipoSangre.length,
            itemBuilder: (BuildContext context,int index) {
              return ListTile(
                leading: Icon(Icons.credit_card, color: Colors.teal[400]),
                title: Text(listaTipoSangre[index]["tipo"] ?? ""),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  v_tipoSangre = listaTipoSangre[index]["nombre"];
                  Navigator.pop(context);
                  print(v_tipoSangre);
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
final List<Map<String, dynamic>> listaTipoSangre = [
  {"id": "1", "tipo": "A+"},
  {"id": "2", "tipo": "A-"},
  {"id": "3", "tipo": "0+"},
  {"id": "4", "tipo": "0-"},
  {"id": "5", "tipo": "AB+"},
  {"id": "6", "tipo": "AB-"},
  {"id": "7", "tipo": "B+"},
  {"id": "8", "tipo": "B-"},

];
