import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/comon_components/comon_components.dart';

class InputsView extends StatelessWidget {
  const InputsView({super.key});

  @override
  Widget build(BuildContext context) {
    // Esta key sera asignada al formulario
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, dynamic> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs view'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  helperText: 'Este es el nombre del usuario',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  helperText: 'Este es el apellido del usuario',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Email',
                  helperText: 'Email del usuario',
                  type: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Password',
                  helperText: 'Debe de ser > 6',
                  hintText: 'Password',
                  isPassword: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Dev', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'SuperUser', child: Text('Super user')),
                    DropdownMenuItem(value: 'User', child: Text('User')),
                    DropdownMenuItem(value: 'guest', child: Text('Guest')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value;
                  },
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    // Para quitar el foco del teclado
                    FocusScope.of(context).requestFocus(FocusNode());

                    //
                    if (!formKey.currentState!.validate()) {
                      print('No es valido');
                      return;
                    }

                    print(formValues);
                  },
                )
              ],
            ),
          )),
    );
  }
}
