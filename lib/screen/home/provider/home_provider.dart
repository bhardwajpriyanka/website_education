import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier {
  WebViewController? webViewController;

  List Logos = [
    "assets/logo/java.jpg",
    "assets/logo/tutionpoint.jpg",
    "assets/logo/W3School.jpg",
    "assets/logo/Wikipedia.jpg",

  ];
  List names = [
    "java",
    "Tution",
    "w3school",
    "wikipedia",

  ];

  List urls = [
    Uri.parse("https://www.javatpoint.com/"),
    Uri.parse("https://www.tutorialspoint.com/index.htm"),
    Uri.parse("https://www.w3schools.com/"),
    Uri.parse("https://www.wikipedia.org/"),

  ];

  void LoadUrl(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse(
        "${urls[index]}",
      ),
    );
  }
}
