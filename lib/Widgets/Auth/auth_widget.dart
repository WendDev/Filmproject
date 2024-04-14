import 'package:flutter/material.dart';
import 'package:flutter_folmpr/Theme/buttons.dart';
import 'package:flutter_folmpr/Widgets/Mainscreen/_mainScreen.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login to your account',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [HeaederWidget()],
      ),
    );
  }
}

class HeaederWidget extends StatelessWidget {
  HeaederWidget({super.key});

  final stoltext = const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          _FormWidget(),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'In order to use editing and raiting capibilities to TMBd, as well as get personal recomendations you will need to login to your account.If you do not to have an account , rgitraning dor an account is free and simple.Click here to get started.',
            style: stoltext,
          ),
          TextButton(
              onPressed: () {},
              style: Appbuttons.ResetButton,
              child: const Text('Register')),
          const SizedBox(
            height: 30,
          ),
          Text(
              'If you signed up but didnt get your verfication email,click here to have it resent.',
              style: stoltext),
          TextButton(
              onPressed: () {},
              style: Appbuttons.ResetButton,
              child: const Text('Verify email')),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  String? errorText = null;
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  void _auth() {
    String? login = _loginTextController.text;
    String? password = _loginTextController.text;
    setState(() {
      if (login == 'admin' && password == 'admin') {
        errorText = null;
        final navigator = Navigator.of(context);
        navigator.push(MaterialPageRoute<void>(builder: (context) => MainscreenWidget()));

      } else {
        errorText = 'Неверный логин или пароль';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final decorinp = const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        isCollapsed: true);

    final text = const TextStyle(fontSize: 16, color: Color(0xFF212529));
    final erorstyle = TextStyle(fontSize: 18, color: Colors.red);
    final text2 = const TextStyle(
      fontSize: 16,
      color: Colors.white,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null)
          Text(
            errorText!,
            style: erorstyle,
          ),
        const SizedBox(
          height: 15,
        ),
        Text('Username', style: text),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: _loginTextController,
          decoration: decorinp,
        ),
        const SizedBox(
          height: 20,
        ),
        Text('Password', style: text),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: _passwordTextController,
          decoration: decorinp,
          obscureText: true,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            TextButton(
              onPressed: _auth,
              style: Appbuttons.loginbutton,
              child: const Text('Login'),
            ),
            const SizedBox(
              width: 15,
            ),
            TextButton(
                onPressed: () {},
                style: Appbuttons.ResetButton,
                child: const Text('Reset password'))
          ],
        )
      ],
    );
  }
}
