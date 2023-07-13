import 'package:asynchronous_coffe/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view/Login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  String email = "";
  String pasword = "";
  doEmailLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pasword,
      );
      Get.offAll(DasboardView());
      
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showAlertDialog('Login Gagal', 'Pengguna tidak ditemukan.');
      } else if (e.code == 'wrong-password') {
        showAlertDialog('Login Gagal', 'Kata sandi salah.');
      } else {
        showAlertDialog('Login Gagal', 'Terjadi kesalahan saat login.');
      }
    } catch (e) {
      showAlertDialog('Login Gagal', 'Terjadi kesalahan saat login.');
    }
  }

  void showAlertDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  String sentence = FirebaseAuth.instance.currentUser!.email ?? "";
  String jabatan = "";
  String getLevelUser(String sentence) {
  // Mencari posisi titik pada kalimat
  int dotIndex = sentence.indexOf('.');

  // Mengambil substring dari awal kalimat hingga titik
  String firstWord = sentence.substring(0, dotIndex);

  // Mengembalikan kata pertama sebelum titik
  return firstWord;
}

  doGoogleLogin() async {}
}
