import 'package:flutter/material.dart';
import 'package:random_mixer_app/clases/Anuncios.dart';
import 'package:random_mixer_app/clases/custom_boton.dart';
import 'package:random_mixer_app/clases/Custom_Text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


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
        body: Center(child: 
                Container(
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
                      const Custom_Text(
                        custom_Text: "Hello! Text 1",
                        font_Size: 40,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      const Custom_Text(
                        custom_Text: "User Name Text 2",
                        font_Size: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 53, 105, 184),
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        customText: "Prueba",
                        fontFamily: "Poppins",
                        font_Size: 20,
                        width: 250,
                        height: 70,
                        onPressed: () {},//Aqui se coloca lo que quiere que haga el boton
                        boton_color: const Color(0xFF3784EE),
                        text_color: Colors.black,
                        box_shadow_color: Colors.green,
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        customText: "Prueba",
                        fontFamily: "Poppins",
                        font_Size: 20,
                        width: 250,
                        height: 70,
                        onPressed: () {},//Aqui se coloca lo que quiere que haga el boton
                        boton_color: const Color(0xFF3784EE),
                        text_color: Colors.black,
                        box_shadow_color: Colors.green,
                      ),
                    ],
                  ),
            ),
        ),
        bottomNavigationBar:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Anuncios(),
          ],
        ),
      )
    );
  }
}
