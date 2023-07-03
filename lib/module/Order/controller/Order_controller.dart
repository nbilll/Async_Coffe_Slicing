import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/state_util.dart';
import '../view/Order_view.dart';

class OrderController extends State<OrderView> {
  static late OrderController instance;
  late OrderView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int qty = 0;
  increment() {
    qty++;
    setState(() {});
  }

  decrement() {
    if (qty > 0) qty--;
    setState(() {});
  }
}
