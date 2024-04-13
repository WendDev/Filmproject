import 'package:flutter/material.dart';

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
          const SizedBox(
            height: 30,
          ),
          Text(
              'If you signed up but didnt get your verfication email,click here to have it resent.',
              style: stoltext)
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
  @override
  Widget build(BuildContext context) {
    final decorinp = const InputDecoration(
        border: OutlineInputBorder(), contentPadding: EdgeInsets.symmetric(horizontal: 10));

    final text = const TextStyle(fontSize: 16, color: Color(0xFF212529));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Username', style: text),
        SizedBox(height: 5,),
        TextField(
          decoration: decorinp,
        ),
        SizedBox(height: 20,),
        Text('Password', style: text),
        SizedBox(height: 5,),
        TextField(
          decoration: decorinp,
        ),
      ],
    );
  }
}
