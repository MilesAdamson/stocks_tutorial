import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:stocks_tutorial/api/api.dart';
import 'package:stocks_tutorial/components/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  final apiKey = FlutterConfig.get('API_KEY');
  final api = Api(Api.buildDefaultHttpClient(apiKey));

  runApp(MyApp(api: api));
}

class MyApp extends StatelessWidget {
  final Api api;

  const MyApp({
    required this.api,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stonks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
