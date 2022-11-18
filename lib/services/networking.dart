import 'dart:convert';
import 'package:http/http.dart' as http;

class Networking {
  final url;

  Networking({this.url});

  Future getWeatherData() async {
    http.Response response = await http.get(Uri.parse(this.url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body.toString());
    } else {
      print(response.statusCode);
    }
  }
}
