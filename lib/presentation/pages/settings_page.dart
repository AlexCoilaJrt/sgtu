import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sgtu/core/theme/ThemeProvider.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Importa SharedPreferences

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  // Función para realizar logout
  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Borra todos los datos almacenados en caché

    // Redirige a la pantalla de inicio de sesión
    Navigator.pushReplacementNamed(context, '/login'); // Asegúrate de tener configurada esta ruta
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Color(0xFF0C1025), // Color de fondo oscuro
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'SGTU,',
          style: GoogleFonts.poppins(
            color: Color(0xFF8696BB),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/icon-sistem.png'), // Imagen de perfil
              radius: 18,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Setting',
              style: GoogleFonts.righteous(
                color: Color(0xFFFC2B45), // Color rojo para "Setting"
                fontSize: 28,
              ),
            ),
            SizedBox(height: 40),
            // Botón para cambiar el tema
            _buildSettingButton('Theme', () {
              themeProvider.toggleTheme();
            }),
            SizedBox(height: 20),
            // Botón de Logout
            _buildSettingButton('Logout', () async {
              await _logout(context); // Llama a la función de logout
            }),
            SizedBox(height: 40),
            // Switch para habilitar o deshabilitar el modo oscuro
            SwitchListTile(
              title: Text(
                'Modo oscuro',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (bool value) {
                themeProvider.toggleTheme(); // Cambia el tema
              },
              activeColor: Color(0xFFFC2B45), // Color rojo cuando está activado
              activeTrackColor: Color(0xFFFC2B45).withOpacity(0.3),
              inactiveTrackColor: Color(0xFF8696BB), // Color gris cuando está desactivado
              inactiveThumbColor: Color(0xFF8696BB),
            ),
          ],
        ),
      ),
    );
  }

  // Widget para construir los botones de la página de configuración
  Widget _buildSettingButton(String text, VoidCallback onPressed) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF8696BB), // Color del borde
          width: 1.5,               // Grosor del borde
        ),
        borderRadius: BorderRadius.circular(15), // Bordes redondeados más suaves
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12), // Espaciado interno
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Bordes redondeados
          ),
        ),
        child: Align(  // Alinea el contenido a la izquierda
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: GoogleFonts.righteous(
              color: Color(0xFF8696BB), // Color del texto
              fontSize: 18,
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
    );
  }


}
