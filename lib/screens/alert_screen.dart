
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        // barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text('Titulo'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Esto es el contenido de alerta'),
                  SizedBox(height: 10),
                  FlutterLogo(size: 100),
                ],
              ), 

              actions: [
              
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar', style: TextStyle( color: Colors.red)
                  ),
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar')
              ),              
            ],   
          );
        }
      );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        // barrierDismissible es para pulsar fuera de alertar y cerrar
        // barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Esto es el contenido de alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')),    
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Mostrar alerta'),
          onPressed: () => Platform.isAndroid 
            ? displayDialogAndroid(context)
            : displayDialogIOS(context)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        // Volver a la última pantalla
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
