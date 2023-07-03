import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/state_util.dart';
import '../view/Dasboard_view.dart';

class DasboardController extends State<DasboardView> {
  static late DasboardController instance;
  late DasboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
