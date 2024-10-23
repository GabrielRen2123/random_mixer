import 'dart:io'; // Importar para manejar archivos
import 'package:flutter/material.dart';
import 'package:random_mixer_app/clases/Anuncios.dart';
import 'package:random_mixer_app/clases/custom_boton.dart';
import 'package:random_mixer_app/clases/Custom_Text.dart';
import 'package:file_picker/file_picker.dart';

//Base de datos
import 'package:random_mixer_app/BdHelper/bd_helper.dart';

class MyGroups extends StatefulWidget {
  MyGroups({super.key});

  @override
  _MyGroupsState createState() => _MyGroupsState();
}

class _MyGroupsState extends State<MyGroups> {
  String _selectedFilePath = 'No file selected';
  String _fileContent = ''; // Nueva variable para el contenido del archivo
  final dbHelper = BD_Helper();

  Future<void> _selectFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt'],
      );

      if (result != null) {
        String? filePath = result.files.single.path;
        if (filePath != null) {
          // Leer el archivo y obtener su contenido
          File file = File(filePath);
          String content = await file.readAsString(); // Lectura del archivo

          setState(() {
            _selectedFilePath = filePath;
            _fileContent = content; // Guardar el contenido del archivo
          });
        } else {
          setState(() {
            _selectedFilePath = 'No se seleccionó ningún archivo';
            _fileContent = ''; // Limpiar contenido si no hay archivo
          });
        }
      } else {
        setState(() {
          _selectedFilePath = 'Operación cancelada';
          _fileContent = ''; // Limpiar contenido si la operación se cancela
        });
      }
    } catch (e) {
      setState(() {
        _selectedFilePath = 'Error al seleccionar archivo: $e';
        _fileContent = ''; // Limpiar contenido en caso de error
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Anuncios(),
          ),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //const Custom_Text(
                //  custom_Text: "Hello! Text 1",
                //  font_Size: 40,
                //  fontFamily: "Inter",
                //  fontWeight: FontWeight.w700,
                //  color: Colors.black,
                //),
                //const Custom_Text(
                //  custom_Text: "User Name Text 2",
                //  font_Size: 16,
                //  fontFamily: "Poppins",
                //  fontWeight: FontWeight.w400,
                //  color: Color.fromARGB(255, 53, 105, 184),
                //),
                const SizedBox(height: 20),
                CustomButton(
                  customText: "IMPORT",
                  fontFamily: "Poppins",
                  font_Size: 20,
                  width: 250,
                  height: 70,
                  onPressed:
                      _selectFile, // Aquí asignamos la función de selección de archivo
                  boton_color: const Color(0xFF3784EE),
                  text_color: Colors.black,
                  box_shadow_color: Colors.green,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  customText: "MYGROUPS",
                  fontFamily: "Poppins",
                  font_Size: 20,
                  width: 250,
                  height: 70,
                  onPressed: () {},
                  boton_color: const Color(0xFF3784EE),
                  text_color: Colors.black,
                  box_shadow_color: Colors.green,
                ),
                const SizedBox(height: 20),
                // Muestra la ruta del archivo seleccionado
                Text(
                  'Ruta del archivo seleccionado: $_selectedFilePath',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                // Mostrar el contenido del archivo
                if (_fileContent.isNotEmpty)
                  Text(
                    'Contenido del archivo:\n$_fileContent',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {_insert();}, child: const Text("Insertar")),
                    ElevatedButton(
                        onPressed: () {_mostrar();}, child: const Text("Mostrar")),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Anuncios(),
          ],
        ),
      ),
    );
  }

  void _insert() async{
    await dbHelper.addData();
  }
  void _mostrar() async{
    await dbHelper.mostrar();
  }
}
