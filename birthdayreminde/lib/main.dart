// ignore_for_file: unused_import, duplicate_import, prefer_const_constructors, use_key_in_widget_constructors, unused_element, unused_field
//import 'package:birthdayreminde/birthday-register.dart';
import 'package:birthdayreminde/header/header.dart';
import 'package:birthdayreminde/body/login.dart';
import 'package:birthdayreminde/body/regist-account.dart';
import 'package:birthdayreminde/body/regist-birthday.dart';
import 'package:birthdayreminde/body/user-top.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
/*    GoRoute(
      // 1番最初の新規会員登録かログインするか選ぶページ
      name: "welcome",
      path: "/",
      builder: (context, state) => MainRegisterOrLogin(),
    ),*/
    GoRoute(
      // ログインページ
      name: "login",
      path: "/login",
      builder: (context, state) => MainLogin(),
    ),
    GoRoute(
      // 新規会員登録ページ
      name: "registaccount",
      path: "/registaccount",
      builder: (context, state) => MainRegistAccount(),
    ),
    GoRoute(
      // ログイン後のトップページ
      name: "usertop",
      path: "/user",
      builder: (context, state) => MainUserTop(),
      routes: [
/*        GoRoute(
          // ログイン後の誕生日登録ページ
          name: "registbirthday",
          path: "/registbirthday",
          builder: (context, state) => MainRegistBirthday(),
        ),*/
/*        GoRoute(
          // ログイン後のユーザー情報ページ
          name: "userinfo",
          path: "/userinfo",
          builder: (context, state) => MainUserInfo(),
        ),*/
        /* 今後実装したい機能のサブルート↓ 
        GoRoute( // 1.誕生日を登録した人の一覧リスト
          name: "birthdaylist",
          name: "birthdaylist",
          path: "/birthdaylist",
          builder: (context, state) => MainBirthdayList(),
        ),
        GoRoute( // 2.誕生日に登録した人、一人ひとりの詳細情報ページ
        name: "birthdayinfo",
        path: "/birthdayinfo",
        builder: (context, state) => MainBirthdayInfo(),
        ),
        */
      ],
    )
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        debugShowCheckedModeBanner: false,
        title: 'オメデト',
        theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: HexColor('#6fd6d2'),
            brightness: Brightness.light,
            textTheme: GoogleFonts.notoSansJavaneseTextTheme(
              Theme.of(context).textTheme,
            )
        )
      );
  }
}

/*class MainRegisterOrLogin extends StatelessWidget {
  const MainRegisterOrLogin({super.key});
  final String pagestate = "Welcome!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: RegisterOrLogin(),
    );
  }
}*/

class MainLogin extends StatelessWidget {
  const MainLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Login(),
    );
  }
}

class MainRegistAccount extends StatelessWidget {
  const MainRegistAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: RegistAccount(),
    );
  }
}

class MainRegistBirthday extends StatelessWidget {
  const MainRegistBirthday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: RegistBirthday(),
    );
  }
}

class MainUserTop extends StatelessWidget {
  const MainUserTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: UserTop(),
    );
  }
}

/*class MainUserInfo extends StatelessWidget {
  const MainUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: UserInfo(),
    );
  }
}*/
