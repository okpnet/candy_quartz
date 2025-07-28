
import 'package:candy_quartz/main.dart';
import 'package:flutter/widgets.dart';

class AppEnvFactory 
{
  String _appTitle='';
  static final AppEnvFactory _instance=AppEnvFactory._internal();

  Map<String,WidgetBuilder> _routes={};

  Map<String,WidgetBuilder> get routes=>_instance.routes;

  String get appTitle=>_instance._appTitle;

  factory AppEnvFactory()=>_instance;

  AppEnvFactory._internal(){
    _appTitle='';
    _routes={
      '/':(context)=>MyHomePage(title: _instance._appTitle),
    };
  }

}