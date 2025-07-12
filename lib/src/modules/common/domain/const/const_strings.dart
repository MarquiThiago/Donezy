/// Classe abstrata que contém todas as strings constantes do aplicativo
/// Organizadas por módulos para facilitar a manutenção
abstract class ConstStrings {
  // Construtor privado para evitar instanciação
  ConstStrings._();

  // ===== AUTH MODULE =====
  static const String signIn = 'Sign In';
  static const String email = 'Email';
  static const String password = 'Password';
  static const String or = 'OR';
  static const String newToDonezy = 'New to Donezy? ';
  static const String register = 'Register';
  static const String signOut = 'Sign Out';
  static const String alreadyHaveAnAccount = 'Already have an account? ';
  static const String registeringUser = 'Registering user...';
  static const String confirmPassword = 'Confirm Password';

  // ===== HOME MODULE =====
  static const String notes = 'Notes';
  static const String tasks = 'Tasks';
  static const String profile = 'Profile';
  static const String theme = 'Theme';
  static const String light = 'Light';
  static const String dark = 'Dark';
  static const String system = 'System';

  // ===== NOTE MODULE =====
  static const String takeNotes = 'Take Notes';
  static const String data = 'data';

  // ===== TASK MODULE =====
  static const String makeTasks = 'Make Tasks';

  // ===== ERROR MESSAGES =====
  static const String error = 'Error';
  static const String errorGettingAuthState = 'Error getting auth state';
}
