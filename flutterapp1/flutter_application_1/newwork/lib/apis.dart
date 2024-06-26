import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newwork/numberfact_response/numberfact_response.dart';

Future<NumberfactResponse> getnumberfact({required int number}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final _bodyAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
  final _data = NumberfactResponse.fromJson(_bodyAsJson);
  return _data;
}
