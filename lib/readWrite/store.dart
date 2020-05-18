import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'dart:async';

class Store{
  Future<String> get _localpath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localfile async {
    final path = await _localpath;

    return File("$path/note.txt");
  }

  Future<String> readFile() async {
    try{
      final file = await _localfile;
      String content = await file.readAsString();

      return content;
    }catch(e){
      return null;
    }
  }

  Future<File> writeFile(String writable) async {
    try{
      final file = await _localfile;

      return file.writeAsString(writable);
    }catch(e){
      return null;
    }
  }
}