

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/themes/apptheme.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.purpleMedium,

    );
  }
}
