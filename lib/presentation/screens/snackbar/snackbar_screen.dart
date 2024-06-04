import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hla mundo'),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog( BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Estas seguro?'),
        content: Text('contenido dle parrefo 2'),
        actions: [
          TextButton(
            onPressed: (){context.pop();}, 
            child: Text('cancelar')),
          FilledButton(onPressed: (){context.pop();}, child: Text('aceptar'))
        ],
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context,
                children: [
                  Text('dialogo de parafo')
                ]);
              }, child: const Text('licencias usadas')),
          FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              }, child: const Text('mostrar dialogo'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showCustomSnackbar(context);
        },
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
