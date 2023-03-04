
import 'package:flutter/material.dart';

import 'favorit_unlogin.dart';

class postAppBar extends StatefulWidget {
  const postAppBar({Key? key}) : super(key: key);

  @override
  State<postAppBar> createState() => _postAppBarState();
}

class _postAppBarState extends State<postAppBar> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,

                        ),

                      ]
                  ),
                  child: Icon(Icons.arrow_back,size: 28,),
                ),
              ),
              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          favoritUnlogin(),
                    ));
              },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.black26,blurRadius: 6)
                      ]
                  ),
                  child: Icon(Icons.favorite,color: Colors.redAccent,size: 28,),
                ),
              )

            ],
          ),
        ),
      ],
    );
  }
}
