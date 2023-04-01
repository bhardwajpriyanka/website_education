import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website_education/screen/home/provider/home_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _HomeLinkScreenState();
}

class _HomeLinkScreenState extends State<WebScreen> {
  HomeProvider? homeProvidertrue, homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(
          controller: homeProviderfalse!.webViewController!,
        ),
      ),
    );
  }
}
