// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:aymostoreapp/aymo_store_app.dart';
import 'package:aymostoreapp/core/app/env.variable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.prod);
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
            apiKey: 'AIzaSyAuW67MrwtnHWUksNEjDNONKXwDxTYcQOE',
            appId: '1:1097677564004:android:9ea70fb92ad6ee52919771',
            messagingSenderId: '1097677564004',
            projectId: 'aymostore-f2c64',
          ),
        )
      : await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((_) => {runApp(const AymoStoreApp())});
}
