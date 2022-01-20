import 'package:flutter/material.dart';
import 'package:components_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Formulario
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Ivan',
      'last_name': 'Pérez',
      'email': 'ivan@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),

                  DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(value: 'JuniorDeveloper', child: Text('JuniorDeveloper')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar')),
                      ),
                      onPressed: () {
                        // Desactivar el teclado al pulsar el botón
                        FocusScope.of(context).requestFocus(FocusNode());

                        // Si no es válido el formulario no hagas nada
                        if (!myFormKey.currentState!.validate()) {
                          return print('Formulario no válido');
                        }
                        // TODO: imprimir valores del formulario
                        print(formValues);
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}
