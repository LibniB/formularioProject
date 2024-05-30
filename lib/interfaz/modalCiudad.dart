import 'package:flutter/material.dart';

String v_ciudades= "Cedula";

modalCiudad(BuildContext context){
  return showModalBottomSheet(
    context: context, 
    builder: (context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[400],
          foregroundColor: Colors.white,
          title: const Text("Ciudades"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: listaCiudades.length,
            itemBuilder: (BuildContext context,int index) {
              return ListTile(
                leading: Icon(Icons.credit_card, color: Colors.teal[400]),
                title: Text(listaCiudades[index]["ciudad"] ?? ""),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                subtitle: Text("${listaCiudades[index]["departamento"] ?? ""}, ${listaCiudades[index]["municipio"] ?? ""}"),
                onTap: () {
                  v_ciudades = listaCiudades[index]["nombre"];
                  Navigator.pop(context);
                  print(v_ciudades);
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
final List<Map<String, dynamic>> listaCiudades = [
  {"id": "1", "ciudad": "Bogotá", "departamento": "Cundinamarca", "municipio": "Bogotá"},
  {"id": "2", "ciudad": "Medellín", "departamento": "Antioquia", "municipio": "Medellín"},
  {"id": "3", "ciudad": "Cali", "departamento": "Valle del Cauca", "municipio": "Cali"},
  {"id": "4", "ciudad": "Barranquilla", "departamento": "Atlántico", "municipio": "Barranquilla"},
  {"id": "5", "ciudad": "Cartagena", "departamento": "Bolívar", "municipio": "Cartagena"},
  {"id": "6", "ciudad": "Bucaramanga", "departamento": "Santander", "municipio": "Bucaramanga"},
  {"id": "7", "ciudad": "Manizales", "departamento": "Caldas", "municipio": "Manizales"},
  {"id": "8", "ciudad": "Pereira", "departamento": "Risaralda", "municipio": "Pereira"},
  {"id": "9", "ciudad": "Cúcuta", "departamento": "Norte de Santander", "municipio": "Cúcuta"},
  {"id": "10", "ciudad": "Ibagué", "departamento": "Tolima", "municipio": "Ibagué"},
  {"id": "11", "ciudad": "Villavicencio", "departamento": "Meta", "municipio": "Villavicencio"},
  {"id": "12", "ciudad": "Santa Marta", "departamento": "Magdalena", "municipio": "Santa Marta"},
  {"id": "13", "ciudad": "Armenia", "departamento": "Quindío", "municipio": "Armenia"},
  {"id": "14", "ciudad": "Neiva", "departamento": "Huila", "municipio": "Neiva"},
  {"id": "15", "ciudad": "Popayán", "departamento": "Cauca", "municipio": "Popayán"}
];
