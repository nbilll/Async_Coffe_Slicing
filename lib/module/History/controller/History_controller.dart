
import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/state_util.dart';
import '../view/History_view.dart';

class HistoryController extends State<HistoryView> {
    static late HistoryController instance;
    late HistoryView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    