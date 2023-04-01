import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website_education/screen/home/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue, homeProviderfalse;
  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text("Education Websites"),
            centerTitle: true,
          ),
          body: GridView.builder(
            itemCount: homeProviderfalse!.Logos.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ), itemBuilder: (context,index){
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context,'web',);
                homeProviderfalse!.urls.length;
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)
                ),
                margin: EdgeInsets.all(6),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "${homeProviderfalse!.Logos[index]}",
                            height: 77,
                            fit: BoxFit.cover,

                          ),
                        ),
                        Text(
                          "${homeProviderfalse!.names[index]}",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          ),
        )
    );
  }

}
