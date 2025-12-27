import 'package:flutter/foundation.dart';
import '../models/user.dart';

class AuthProvider with ChangeNotifier {
  User? _user;
  bool _isAuthenticated = false;

  User? get user => _user;
  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));
    
    _user = User(
      id: '1',
      name: 'John Doe',
      email: email,
      phone: '+1234567890',
      address: '123 Main St, City, Country',
    );
    _isAuthenticated = true;
    notifyListeners();
  }

  Future<void> register(String name, String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));
    
    _user = User(
      id: '1',
      name: name,
      email: email,
    );
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _user = null;
    _isAuthenticated = false;
    notifyListeners();
  }

  void updateUser(User updatedUser) {
    _user = updatedUser;
    notifyListeners();
  }
}

