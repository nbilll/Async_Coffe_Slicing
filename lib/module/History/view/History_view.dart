
import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/core.dart';
import '../controller/History_controller.dart';

class HistoryView extends StatefulWidget {
    const HistoryView({Key? key}) : super(key: key);

    Widget build(context, HistoryController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("History"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<HistoryView> createState() => HistoryController();
}
    