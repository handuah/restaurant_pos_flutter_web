import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashContent extends StatefulWidget {
  const DashContent({super.key});

  @override
  State<DashContent> createState() => _DashContentState();
}

class _DashContentState extends State<DashContent> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(child: Text('DashContent'));
  }
}
