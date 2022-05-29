import 'dart:io';

String fixture(String name) => File('json/$name').readAsStringSync();
