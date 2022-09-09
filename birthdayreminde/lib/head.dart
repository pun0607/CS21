// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
    @override
    Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
    Future<void> main() async {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    @override
    Widget build(BuildContext context) {
        return AppBar(
              title: RichText(text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'CS21',
                    recognizer: TapGestureRecognizer()..onTap = () async {
                      await open('https://api.flutter.dev/');},),
                  TextSpan(
                    text: 'ホーム',
                    recognizer: TapGestureRecognizer()..onTap = () async {
                      await open('https://api.flutter.dev/');},),
                  TextSpan(
                    text: '誕生日登録',
                    recognizer: TapGestureRecognizer()..onTap = () async {
                      await open('https://api.flutter.dev/');},),
                  TextSpan(
                    text: '誕生日検索',
                    recognizer: TapGestureRecognizer()..onTap = () async {
                      await open('https://api.flutter.dev/');},),
                  TextSpan(
                    text: '誕生日リスト',
                    recognizer: TapGestureRecognizer()..onTap = () async {
                      await open('https://api.flutter.dev/');},),
                      ],),);)}