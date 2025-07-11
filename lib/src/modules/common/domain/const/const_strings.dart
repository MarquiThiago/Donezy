/// Classe abstrata que contém todas as strings constantes do aplicativo
/// Organizadas por módulos para facilitar a manutenção
abstract class ConstStrings {
  // Construtor privado para evitar instanciação
  ConstStrings._();

  // ===== AUTH MODULE =====
  static const String signIn = 'Sign In';
  static const String phoneEmailId = 'Phone/Email Id';
  static const String password = 'Password';
  static const String or = 'OR';
  static const String newToDonezy = 'New to Donezy? ';
  static const String register = 'Register';

  // ===== HOME MODULE =====
  static const String notes = 'Notes';
  static const String tasks = 'Tasks';

  // ===== NOTE MODULE =====
  static const String takeNotes = 'Take Notes';
  static const String data = 'data';

  // ===== TASK MODULE =====
  static const String makeTasks = 'Make Tasks';

  // ===== ERROR MESSAGES =====
  static const String error = 'Error';
  static const String errorGettingAuthState = 'Error getting auth state';
}
