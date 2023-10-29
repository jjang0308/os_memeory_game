import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() => runApp(const NewContainer());

class NewContainer extends StatelessWidget {
  const NewContainer({super.key});
 
  @override
  Widget build(BuildContext context) { 
    return Container(height: 60, width: 60, color: Colors.green); 
  } 
}