import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          MyGroups(),
        ]),
      ),
    );
  }
}

class MyGroups extends StatefulWidget {
  @override
  _MyGroupsState createState() => _MyGroupsState();
}

class _MyGroupsState extends State<MyGroups> {
  String _selectedFilePath = 'No file selected';

  Future<void> _selectFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['txt'],
      );

      if (result != null) {
        String? filePath = result.files.single.path;
        if (filePath != null) {
          setState(() {
            _selectedFilePath = filePath;
          });
        } else {
          setState(() {
            _selectedFilePath = 'No se seleccionó ningún archivo';
          });
        }
      } else {
        setState(() {
          _selectedFilePath = 'Operación cancelada';
        });
      }
    } catch (e) {
      setState(() {
        _selectedFilePath = 'Error al seleccionar archivo: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: -8,
                top: 949,
                child: Container(
                  width: 360,
                  height: 50,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 101,
                    right: 141,
                    bottom: 10,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Color(0xFF8C8484)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 118,
                        height: 30,
                        child: Text(
                          'Anuncio 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 51,
                top: 221,
                child: Container(
                  width: 295,
                  height: 54,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Color(0xFF3784EE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 16.80,
                        height: 20.40,
                        child: FlutterLogo(),
                      ),
                      SizedBox(
                        width: 139,
                        child: Text(
                          'Group 1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 137,
                top: 141,
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3784EE), // Color de fondo del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                    ),
                    onPressed: _selectFile, // Función de selección de archivo
                    child: Text(
                      'IMPORTAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.09,
                        fontFamily: 'Aclonica',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 50,
                  padding: const EdgeInsets.only(
                    top: 14,
                    left: 103,
                    right: 174,
                    bottom: 13,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Color(0xFF8C8484)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 113,
                        height: 23,
                        child: Text(
                          'Anuncio 1\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 794,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 14,
                    left: 117,
                    right: 111,
                    bottom: 9,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Color(0xFF8C8484)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 162,
                        height: 27,
                        child: Text(
                          'Anuncio 2\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Aclonica',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 751,
                child: Container(
                  width: 390,
                  height: 43,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 20,
                top: 350,
                child: Text(
                  'Ruta del archivo seleccionado:\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 380,
                child: Text(
                  _selectedFilePath,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}