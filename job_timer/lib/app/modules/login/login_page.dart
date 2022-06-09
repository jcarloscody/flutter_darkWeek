import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_timer/app/modules/login/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.controller}) : super(key: key);
  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginController, LoginState>(
      bloc: controller,
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == LoginStatus.failure) {
          final msg = state.errorMessage ?? 'Erro no lgoin';
          AsukaSnackbar.alert(msg).show();
        }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0XFF0092B9),
                Color(0XFF0167B2),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                  onPressed: () {
                    controller.signIn();
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.grey[200]),
                  child: Image.asset(
                    'assets/images/google.png',
                  ),
                ),
              ),
              BlocSelector<LoginController, LoginState, bool>(
                bloc: controller,
                selector: (state) {
                  return LoginStatus.loading == state.status;
                },
                builder: (context, show) {
                  return Visibility(
                    visible: show,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Center(
                        child: CircularProgressIndicator.adaptive(
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
