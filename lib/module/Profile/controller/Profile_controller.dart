
import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/state_util.dart';
import '../view/Profile_view.dart';

class ProfileController extends State<ProfileView> {
    static late ProfileController instance;
    late ProfileView view;

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
        
    