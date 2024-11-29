import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/error/failures.dart';
import '../../../domain/usecases/login_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;

  AuthBloc({required this.loginUseCase}) : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());

      try {
        final result = await loginUseCase.execute(
          event.email,
          event.password,
        );

        result.fold(
              (failure) {
            print('Error en AuthBloc: $failure');
            if (failure is TimeoutFailure) {
              emit(const AuthError(message: 'La conexión tardó demasiado. Por favor, inténtalo de nuevo.'));
            } else if (failure is ServerFailure) {
              emit(AuthError(message: failure.message ?? 'Error del servidor. Por favor, inténtalo de nuevo.'));
            } else {
              emit(const AuthError(message: 'Error al iniciar sesión. Por favor, inténtalo de nuevo.'));
            }
          },
              (user) {
            // Guardar el token del usuario en caché
            _saveUserToCache(user.token);
            emit(AuthSuccess(user: user));
          },
        );
      } catch (e) {
        print('Error inesperado en AuthBloc: $e');
        emit(const AuthError(message: 'Ocurrió un error inesperado. Por favor, inténtalo de nuevo.'));
      }
    });

    on<LogoutRequested>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('user_token'); // Eliminar el token al hacer logout
      emit(AuthInitial());
    });
  }

  // Función para guardar el token del usuario en SharedPreferences
  void _saveUserToCache(String userToken) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_token', userToken);
  }
}
