import 'package:http/http.dart' as http;
import 'package:flutter_session/flutter_session.dart';

class AuthService {
  final baseUrl = 'https://zolera.herokuapp.com';
  static final SESSION = FlutterSession();

  Future<dynamic> register(String email, String password) async {
    try {
      var res = await http.post(Uri.parse('$baseUrl/api/register'), body: {
        'email': email,
        'password': password,
      });
      return res?.body;
    } finally {}
  }

  Future<dynamic> login(String email, String password) async {
    try {
      var res = await http.post(Uri.parse('$baseUrl/api/login'), body: {
        'email': email,
        'password': password,
      });
      return res?.body;
    } finally {}
  }

  static setToken(String token, String refreshToken) async {
    _AuthData data = _AuthData(token, refreshToken);
    return await SESSION.set('tokens', data);
  }

  static getToken() async {
    return await SESSION.get('tokens');
  }

  static removeToken() async {
    return await SESSION.prefs.clear();
  }
}

class _AuthData {
  String token, refreshToken, clientId;
  _AuthData(this.token, this.refreshToken, {this.clientId});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['token'] = token;
    data['refreshToken'] = refreshToken;
    data['clientId'] = clientId;
    return data;
  }
}
