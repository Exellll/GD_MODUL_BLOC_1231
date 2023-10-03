abstract class LoginEvent {}

class isPasswordVisibleChanged extends LoginEvent {}

class FormSubmitted extends LoginEvent {
  String username;
  String password;

  FormSubmitted({required this.username, required this.password});
}