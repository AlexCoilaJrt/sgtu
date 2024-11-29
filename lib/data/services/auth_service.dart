import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<void> logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Borra todos los datos almacenados en caché

    // Redirige a la pantalla de inicio de sesión
    Navigator.pushReplacementNamed(context, '/login'); // Asegúrate de tener configurada esta ruta
  }
}
