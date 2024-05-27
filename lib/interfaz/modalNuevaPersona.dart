import 'package:flutter/material.dart';

final txtTipoIdentificacion = TextEditingController(); 
final txtIdentificacion = TextEditingController();
final txtNombres = TextEditingController();
final txtApellidos = TextEditingController();
final txtGenero = TextEditingController();
final txtDireccion = TextEditingController();
final txtCiudad = TextEditingController();
final txtTelefono = TextEditingController();
final txtEmail = TextEditingController();
final txtTipoSangre = TextEditingController();

void ModalNuevaPersona(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[400],
          foregroundColor: Colors.white,
          title: const Text("Nueva persona"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: txtTipoIdentificacion,
                decoration: InputDecoration(
                  icon: const Icon(Icons.chrome_reader_mode_rounded),
                  labelText: "Tipo de identificacion",
                  labelStyle:  TextStyle(color: Colors.teal[400]),
                  hintText: "CC TI RegCivil",
                  hintStyle: const TextStyle(color: Colors.black45),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                ),
              ),
               TextFormField(
                controller: txtIdentificacion,
              decoration: InputDecoration(
                icon: const Icon(Icons.credit_card),
                labelText: "Identificacion",
                labelStyle: TextStyle(color: Colors.teal[400]),
                hintText: "numero de documento",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            TextFormField(
              controller: txtNombres,
              decoration: InputDecoration(
                icon: const Icon(Icons.account_circle_outlined),
                labelText: "Nombres",
                labelStyle: TextStyle(color: Colors.teal[400]),
                hintText: "Sus nombres",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            TextFormField(
              controller: txtApellidos,
              decoration: InputDecoration(
                icon: const Icon(Icons.account_circle_outlined),
                labelText: "Apellidos",
                labelStyle:TextStyle(color: Colors.teal[400]),
                hintText: "Sus apellidos",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            TextFormField(
              controller: txtGenero,
              decoration: InputDecoration(
                icon: const Icon(Icons.transgender),
                labelText: "Genero",
                labelStyle:TextStyle(color: Colors.teal[400]),
                hintText: "Femenino, masculino, otro",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            TextFormField(
              controller: txtDireccion,
              decoration: InputDecoration(
                icon: const Icon(Icons.home),
                labelText: "Direccion",
                labelStyle:TextStyle(color: Colors.teal[400]),
                hintText: "carrea abc",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            TextFormField(
              controller: txtCiudad,
              decoration: InputDecoration(
                icon: const Icon(Icons.location_city),
                labelText: "Ciudad",
                labelStyle: TextStyle(color: Colors.teal[400]),
                hintText: "Departamento Municipio",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            TextFormField(
              controller: txtTelefono,
              decoration: InputDecoration(
                icon: const Icon(Icons.phone),
                labelText: "Telefono",
                labelStyle: TextStyle(color: Colors.teal[400]),
                hintText: "1234567890",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            TextFormField(
              controller: txtEmail,
              decoration: InputDecoration(
                icon: const Icon(Icons.mail_outline_outlined),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.teal[400]),
                hintText: "gfhh@example.com",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            TextFormField(
              controller: txtTipoSangre,
              decoration: InputDecoration(
                icon: const Icon(Icons.bloodtype_outlined),
                labelText: "Tipo de Sangre",
                labelStyle: TextStyle(color: Colors.teal[400]),
                hintText: "O+, A+, O-",
                hintStyle: const TextStyle(color: Colors.black45),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent)),
              ),
            ),
            ],) 
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[400],
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.save_rounded)),
      );
    },
  );
}