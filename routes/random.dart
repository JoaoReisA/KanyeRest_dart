import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';

import '../json/fixture_reader.dart';

Response onRequest(RequestContext context) {
  return Response.json(body: jsonDecode(fixture('quotes.json')));
}
