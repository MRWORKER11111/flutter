import 'package:http/http.dart' as http;

getnumberfact({required int number}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  print(_response.body);
}
