import 'package:flutter/material.dart';
import 'package:nuevoapp/src/navigation_controls.dart';
import 'package:nuevoapp/src/web_view_stack.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: WebViewApp(),
  ));
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    // Inicializamos el WebViewController
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Habilitar JavaScript
      ..setBackgroundColor(const Color(0x00000000)) // Fondo transparente
      ..loadRequest(Uri.parse('https://tarkov.help/en/')); // Cargar la URL inicial
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SizedBox(
    height: 56, // Altura fija del BottomAppBar
    child: Center( // Asegura que el contenido esté centrado
      child: NavigationControls(controller: _controller),
    ),
  ),

        
      ),
      body: WebViewStack(controller: _controller), // WebView con barra de progreso
    );
  }
}
