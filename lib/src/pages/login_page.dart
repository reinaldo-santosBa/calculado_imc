import 'package:flutter/material.dart';
import 'package:login_dio/src/constants/colors.dart';
import 'package:login_dio/src/styles/login_styles.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Já tem cadastro?",
                style: LoginStyles.loginTitle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Faça seu login e make the change._",
                style: LoginStyles.loginSubTitle,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: TextField(
                controller: controllerEmail,
                style: const TextStyle(color: AppColors.white),
                decoration: LoginStyles.inputDecorationEmail,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: TextField(
                controller: controllerPassword,
                obscureText: obscureText,
                style: const TextStyle(color: AppColors.white),
                decoration: LoginStyles.inputDecorationPassword.copyWith(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextButton(
                      onPressed: () {
                        String email = controllerEmail.text.toString();
                        String password = controllerPassword.text.toString();
                        if (email != "" && password != "") {
                          if (!RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(email)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Center(
                                  child: Text(
                                    "Email Valido",
                                    style: TextStyle(
                                        fontSize: 20, color: AppColors.white),
                                  ),
                                ),
                              ),
                            );
                            return;
                          }
                          if (email != "teste@gmail.com") {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Center(
                                  child: Text(
                                    "Email incorreto",
                                    style: TextStyle(
                                        fontSize: 20, color: AppColors.white),
                                  ),
                                ),
                              ),
                            );
                            return;
                          }
                          if(password != "123"){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Center(
                                  child: Text(
                                    "Senha incorreta",
                                    style: TextStyle(
                                        fontSize: 20, color: AppColors.white),
                                  ),
                                ),
                              ),
                            );
                            return;
                          }
                          Navigator.pushNamed(context, '/home');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Center(
                                child: Text(
                                  "Preencha todos os campos",
                                  style: TextStyle(
                                      fontSize: 20, color: AppColors.white),
                                ),
                              ),
                            ),
                          );
                        }
                      },
                      style: LoginStyles.txtBtn.copyWith(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                      child: const Text(
                        "ENTRAR",
                        style: LoginStyles.txtBtnText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Esqueci minha senha",
                style: TextStyle(
                  color: AppColors.tradePasswordColor,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Criar conta",
                style: TextStyle(
                  color: AppColors.createAccount,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
