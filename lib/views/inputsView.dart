import 'package:flutter/material.dart';

class InputsView extends StatelessWidget {
  const InputsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs view'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: false,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) => print(value),
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';
                  return value.length < 3 ? 'Min. 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo Letras',
                  counterText: '3 caracteres',
                  suffixIcon: Icon(Icons.abc),
                  prefixIcon: Icon(Icons.admin_panel_settings),
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
