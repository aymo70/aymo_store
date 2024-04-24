import 'package:aymostoreapp/common/screens/no_network_screen.dart';
import 'package:aymostoreapp/core/app/connectivity_controller.dart';
import 'package:aymostoreapp/core/app/env.variable.dart';
//import 'package:aymostoreapp/core/app/env.variable.dart';
import 'package:flutter/material.dart';

class AymoStoreApp extends StatelessWidget {
  const AymoStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            title: 'Aymo Store',
            debugShowCheckedModeBanner: EnvVariable.instance.debug,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            builder: (context, widget) {
              return Scaffold(
                body: Builder(builder: (context) {
                  ConnectivityController.instance.init();
                  return widget!;
                }),
              );
            },
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Aymo Store'),
              ),
            ),
          );
        } else {
          return MaterialApp(
            title: 'No network',
            debugShowCheckedModeBanner: EnvVariable.instance.debug,
            home: const NoNetWorkScreen(),
          );
        }
      },
    );
  }
}
