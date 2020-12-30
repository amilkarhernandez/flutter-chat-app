import 'package:chatapp/widgets/btn_azul.dart';
import 'package:chatapp/widgets/custom_input.dart';
import 'package:chatapp/widgets/labels.dart';
import 'package:chatapp/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                  title: 'Barber Shop',
                ),
                _Form(),
                Labels(
                  ruta: 'register',
                  titulo: 'No tienes Cuenta ?',
                  subtitulo: 'Crea tu cuenta Ahora !!!',
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
  final passctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(children: [
        //Crear el Textfield
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
          text: 'Ingrese',
          onPressed: () {
            print(emailctrl.text);
            print(passctrl.text);
          },
        )
      ]),
    );
  }
}
