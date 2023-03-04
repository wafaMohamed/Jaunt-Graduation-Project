

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/themes/apptheme.dart';

class unloginProfileScreen extends StatefulWidget {
  const unloginProfileScreen({Key? key}) : super(key: key);

  @override
  State<unloginProfileScreen> createState() => _unloginProfileScreenState();
}

class _unloginProfileScreenState extends State<unloginProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.purpleMedium,

    );
  }
}
