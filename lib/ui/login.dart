import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login/login_cubit.dart';
import '../utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailEdc = TextEditingController();
  final passEdc = TextEditingController();
  bool passInvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          LinearGradient(colors: [Colors.orange, Colors.orangeAccent])
              .colors[0],
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Memuat . . .')));
          }
          if (state is LoginFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.red,
              ));
          }
          if (state is LoginSuccess) {
// context.read<AuthCubit>().loggedIn();
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.green,
              ));
            Navigator.pushNamedAndRemoveUntil(
                context, rIntro, (route) => false);
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: ListView(
            children: [
              Text(
                "Masuk",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 0)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Silahkan Masukkan E-Mail dan Password Anda!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "E-Mail",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.email),
                    color: Color.fromARGB(255, 255, 255, 0),
                    onPressed: () {},
                  ),
                ),
                cursorColor: Color.fromARGB(255, 255, 255, 0),
                controller: emailEdc,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                cursorColor: Color.fromARGB(255, 255, 255, 0),
                controller: passEdc,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(passInvisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    color: Color.fromARGB(255, 255, 255, 0),
                    onPressed: () {
                      setState(() {
                        passInvisible = !passInvisible;
                      });
                    },
                  ),
                ),
                obscureText: !passInvisible,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<LoginCubit>()
                        .login(email: emailEdc.text, password: passEdc.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.black87, width: 2))),
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black87),
                  )),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, //
                children: [
                  Text("Belum Mempunyai Akun?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 0)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
