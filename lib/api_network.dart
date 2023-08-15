import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class APINetwork {
  final String url;
  APINetwork({required this.url});
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = convert.jsonDecode(data);
      return decodedData;
      // return decodedData;
    } else {
      return [];
    }
  }
}
