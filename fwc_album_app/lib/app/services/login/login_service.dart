//Service Layer - Design Pattern Command
abstract class LoginService {
  Future<void> execute({
    required String email,
    required String password,
  });
}
