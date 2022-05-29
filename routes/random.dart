import 'dart:convert';
import 'dart:math';

import 'package:dart_frog/dart_frog.dart';

import '../json/fixture_reader.dart';

Response onRequest(RequestContext context) {
  final response = randomize();
  return Response.json(body: response);
}

Map<String, dynamic> randomize() {
  final dynamic quotes = json.decode(fixture('quotes.json'));
  final rng = Random();
  final dynamic randomQuote = quotes[rng.nextInt(quotes.length as int)];
  final map = {'quote': '$randomQuote'};

  return map;
}
