import 'package:flutter/material.dart';
import 'package:publicpmr_app/screens/auth/login_screen.dart';
import 'package:publicpmr_app/screens/home/home_screen.dart';
import 'package:publicpmr_app/screens/taxi/taxi_screen.dart';

final routes = {
  '/':              (BuildContext context) => new HomeScreen(),
  '/auth':          (BuildContext context) => new AuthScreen(),
  '/taxi':          (BuildContext context) => new TaxiScreen(),
};