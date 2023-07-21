import 'package:flutter/material.dart';
import 'package:test_app/core/dependency_init.dart';
import 'package:test_app/my_app.dart';

void main(){
  configureDependencies();
  runApp(const MyApp());
}
