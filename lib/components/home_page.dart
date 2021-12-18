import 'package:flutter/material.dart';
import 'package:stocks_tutorial/components/search_form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("STONKS"),
      ),
      body: const SingleChildScrollView(
        child: SearchForm(),
      ),
    );
  }
}
