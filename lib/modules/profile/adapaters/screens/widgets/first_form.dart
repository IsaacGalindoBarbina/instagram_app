import 'package:flutter/material.dart';
import 'package:practica/kernel/validations/validation_app.dart';


class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisable = true;
  final TextEditingController _fullName = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _age = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Creación de cuenta'),),
      body: //me falta aqui el SingleChildScrollView
       Column(
        children: [
          Container(margin: const EdgeInsets.only(top: 16), child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdYlxcwHlDlJf4w91wWtz_04vCMnoq5uAdHw&usqp=CAU', width: 300, height: 100,),),
          Form(
            key: _formKey,
            onChanged: (){
              setState(() {
                _isButtonDisable = !_formKey.currentState!.validate();
              });
            },
            child: Column(
              children: <Container> [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Nombre completo:*'),
                    validator: (value) { //value puede o no venir 
                      if(value!.isEmpty){
                        return 'Campo obligatorio';
                      }else{
                        return null;
                      }
                    },
                    controller: _fullName,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Correo eléctronico:*'),
                    validator: (value) { //value puede o no venir 
                      RegExp regex = RegExp(ValidationApp.email);
                        if (value == null || value.isEmpty) {
                          return 'campo obligatorio';
                        } else if (!regex.hasMatch(value)) {
                          return 'Introduce un correo válido';
                        }
                        return null;
                    },
                    keyboardType: TextInputType.emailAddress, //muestra el @ para mejor experiencia de usuario
                    controller: _email,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Edad:*'),
                    validator: (value) { //value puede o no venir 
                      if(value!.isEmpty){
                        return 'Campo obligatorio';
                      }else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number, //muestra el @ para mejor experiencia de usuario
                    controller: _age,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: const Size(300, 50), backgroundColor: Colors.green),
                    onPressed: _isButtonDisable ? null :() {
                      print('$_fullName $_email $_age');
                }, child: const Text('Crear cuenta'))
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}