import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sgtu/core/theme/ThemeProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/api/dio_client.dart';
import 'data/datasources/auth_remote_data_source.dart';
import 'data/repositories/auth_repository_impl.dart';
import 'domain/usecases/login_usecase.dart';
import 'presentation/bloc/auth/auth_bloc.dart';
import 'presentation/bloc/app_state/app_state_bloc.dart';
import 'presentation/pages/auth/welcome_page.dart';
import 'presentation/pages/settings_page.dart'; // Asegúrate de importar la página de settings

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final userToken = prefs.getString('user_token');

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(isLoggedIn: userToken != null),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF050522),
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            loginUseCase: LoginUseCase(
              AuthRepositoryImpl(
                remoteDataSource: AuthRemoteDataSourceImpl(
                  dioClient: DioClient(),
                ),
              ),
            ),
          ),
        ),
        BlocProvider<AppStateBloc>(
          create: (context) => AppStateBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'SGTU',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeProvider.themeMode,
        home: isLoggedIn ? const WelcomePage() : const WelcomePage(),
        routes: {
          '/login': (context) => WelcomePage(), // Ruta a la página de login
          '/settings': (context) => SettingsPage(), // Configuración
        },
      ),
    );
  }
}

// Función global para logout
Future<void> logout(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear(); // Borra todos los datos en caché

  // Redirige al usuario a la pantalla de inicio de sesión
  Navigator.pushReplacementNamed(context, '/login');
}
