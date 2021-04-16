import 'package:flutter/material.dart';
import 'package:my_portfolio/components/sidebar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          child: Row(
        children: <Widget>[
          Expanded(
            flex: 2, // takes 30% of available width
            child: SideBar(),
          ),
          Expanded(
            flex: 8, // takes 70% of available width
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/person.png"))),
              child: Stack(
                children: [
                  Positioned(
                    top: 290,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi,",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("I'm Web/Mobile Developper",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0))
                        ],
                      )

            )],
              ),
            ),
          )
        ],
      )),
    );
  }
}
