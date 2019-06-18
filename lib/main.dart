import 'package:vmp/presenter/presenter.dart';
import 'package:vmp/view/component.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: 'MVP',
      home: new HomePage(new BasicPresenter()),
    )
  );
}