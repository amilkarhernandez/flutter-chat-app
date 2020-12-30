import 'package:chatapp/widgets/btn_azul.dart';
import 'package:chatapp/widgets/custom_input.dart';
import 'package:chatapp/widgets/labels.dart';
import 'package:chatapp/widgets/logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(
                  title: 'Registro',
                ),
                _Form(),
                Labels(
                  ruta: 'login',
                  titulo: 'Tienes Cuenta ?',
                  subtitulo: 'Inicia Sesion Aqui !!!',
                ),
                Text(
                  'Terminos y Condiciones de Uso',
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailctrl = TextEditingController();
  final namectrl = TextEditingController();
  final passctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(children: [
        //Crear el Textfield
        CustomInput(
          icon: Icons.perm_identity,
          placeHolder: 'Nombres',
          keyboardType: TextInputType.text,
          textController: namectrl,
        ),
        CustomInput(
          icon: Icons.mail_outline,
          placeHolder: 'Correo',
          keyboardType: TextInputType.emailAddress,
          textController: emailctrl,
        ),
        CustomInput(
          icon: Icons.lock_outline,
          placeHolder: 'Password',
          keyboardType: TextInputType.text,
          isPassword: true,
          textController: passctrl,
        ),
        //TextField(),
        BotonAzul(
          text: 'Guardar',
          onPressed: () {
            print(emailctrl.text);
            print(passctrl.text);
          },
        )
      ]),
    );
  }
}
