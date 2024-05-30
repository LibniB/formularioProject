import 'package:flutter/material.dart';
import 'package:formularios/interfaz/modalCiudad.dart';
import 'package:formularios/interfaz/modalGenero.dart';
import 'package:formularios/interfaz/modalTipoIdentificacion.dart';
import 'package:formularios/interfaz/modalTipoSangre.dart';

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
          padding: EdgeInsets.all(30.0),
          child: ListView(
            children: [
              ListTile(
                title: Text("Cedula de ciudadania"),
                subtitle: Text("Click para seleccionar"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                leading: Icon(Icons.key_rounded),
                onTap: () {
                  modalTipoIdentificacion(context);
                },
              ),
              TextFormField(
                controller: txtTipoIdentificacion,
                decoration: InputDecoration(
                  icon: const Icon(Icons.chrome_reader_mode_rounded),
                  labelText: "Tipo de identificación",
                  labelStyle: TextStyle(color: Colors.teal[400]),
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
                  labelText: "Identificación",
                  labelStyle: TextStyle(color: Colors.teal[400]),
                  hintText: "Número de documento",
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
                  labelStyle: TextStyle(color: Colors.teal[400]),
                  hintText: "Sus apellidos",
                  hintStyle: const TextStyle(color: Colors.black45),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                ),
              ),
              ListTile(
                title: Text("Genero"),
                subtitle: Text("Click para seleccionar"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                leading: Icon(Icons.transgender),
                onTap: () {
                  modalGenero(context);
                },
              ),
              TextFormField(
                controller: txtGenero,
                decoration: InputDecoration(
                  icon: const Icon(Icons.transgender),
                  labelText: "Género",
                  labelStyle: TextStyle(color: Colors.teal[400]),
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
                  labelText: "Dirección",
                  labelStyle: TextStyle(color: Colors.teal[400]),
                  hintText: "Carrera abc",
                  hintStyle: const TextStyle(color: Colors.black45),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                ),
              ),
               
              ListTile(
                title: Text("Ciudad"),
                subtitle: Text("Click para seleccionar"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                leading: Icon(Icons.location_city),
                onTap: () {
                  modalCiudad(context);
                },
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
                  labelText: "Teléfono",
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
                  hintText: "ejemplo@example.com",
                  hintStyle: const TextStyle(color: Colors.black45),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                ),
              ),
               ListTile(
                title: Text("Tipo de Sangre"),
                subtitle: Text("Click para seleccionar"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                leading: Icon(Icons.bloodtype_outlined),
                onTap: () {
                  modalTipoSangre(context);
                },
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
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal[400],
          foregroundColor: Colors.white,
          onPressed: () {
            if (txtNombres.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Debe completar el campo nombres"),
                  backgroundColor: Colors.red[400],
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Se guardó satisfactoriamente"),
                  backgroundColor: Colors.green[400],
                ),
              );
              Navigator.pop(context);
              txtNombres.clear();
              txtApellidos.clear();
              txtIdentificacion.clear();
            }
          },
          child: Icon(Icons.save_rounded),
        ),
      );
    },
  );
}
