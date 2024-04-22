import 'package:aymostoreapp/core/app/env.variable.dart';
import 'package:flutter/material.dart';

class AymoStoreApp extends StatelessWidget {
  const AymoStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aymo Store',
      debugShowCheckedModeBanner: EnvVariable.instance.debug,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
        title: Text("Aymo Store"),
      )),
    );
  }
}
