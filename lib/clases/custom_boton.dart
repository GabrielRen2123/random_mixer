import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String customText, fontFamily;
  final double width, height, font_Size;
  final Color text_color, boton_color, box_shadow_color;

  const CustomButton({
    super.key,
    required this.customText,
    required this.fontFamily,
    required this.font_Size,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.text_color,
    required this.boton_color,
    required this.box_shadow_color
    });

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.all(20),//Margen 
          
          width: width, //Tamaño del boton
          height: height,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: boton_color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            shadows:[
              BoxShadow(
                color: box_shadow_color,
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                //tamaño del logo
                width: 70, 
                height: 70,
                child: const FlutterLogo(),
              ),
              SizedBox(
                child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Hace el fondo del botón transparente
                shadowColor: Colors.transparent, // Elimina la sombra
          ),
          child: Text(
                  customText,//custom text que se le dara
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: text_color,
                    fontSize: font_Size,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w800,
                  ),
                ),
        ),
              ),
            ],
          ),
        );
  }
}
    /*ElevatedButton.icon(
      onPressed: () {
        onPressed();
      },
      icon: Icon(icons),
      label: Text(titel),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        minimumSize: const Size(double.infinity, 50),
      ),
    );*/
