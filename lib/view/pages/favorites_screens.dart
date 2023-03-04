 import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
import 'home_explor_screen.dart';

class favoritesDrawer extends StatefulWidget {
   const favoritesDrawer({Key? key}) : super(key: key);

   @override
   State<favoritesDrawer> createState() => _favoritesDrawerState();
 }

 class _favoritesDrawerState extends State<favoritesDrawer> {
   bool isVisible = true;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Row(
           children: [
             Text(
               '   Favorite',
               style: TextStyle(
                   fontSize: 15.sp,
                   fontWeight: FontWeight.w700,
                   fontFamily: 'Montserrat',
                   color: AppTheme.purpleMedium,
                   shadows: [
                     Shadow(color: AppTheme.purpleDark),
                   ]),
             ),
             Text(
               '  List',
               style: TextStyle(
                   fontSize: 16.sp,
                   fontWeight: FontWeight.w700,
                   fontFamily: 'Montserrat',
                   color: AppTheme.purpleLight),
             ),
           ],
         ),
         centerTitle: true,
         actions: [
           IconButton(
               onPressed: () => null,
               icon: Icon(Icons.favorite,color: Colors.redAccent,size: 28,)),
         ],
         flexibleSpace: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
                 colors: [AppTheme.purpleLight, AppTheme.purplewight],
                 begin: Alignment.topLeft,
                 end: Alignment.topRight),
           ),
         ),
       ),
      body: SingleChildScrollView(
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(15),
                child: Visibility(
                  visible: isVisible,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    exploreScreenLogin(),
                              ));
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/city${index + 1}.jpg'),
                              fit: BoxFit.cover,
                              opacity: 0.8,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'City Name',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.vertical(
                                      top: Radius.circular(25.0),
                                    ),
                                  ),
                                  builder:
                                      (context) =>
                                      DraggableScrollableSheet(
                                          initialChildSize: 0.28,
                                          maxChildSize: 0.3,
                                          minChildSize: 0.28,
                                          expand: false,
                                          builder: (context,
                                              scrollController) {
                                            return SingleChildScrollView(
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          EdgeInsets.all(
                                                              10)
                                                      ),

                                                      Row(
                                                          children: [
                                                            ElevatedButton
                                                                .icon(
                                                              style:
                                                              ButtonStyle(
                                                                padding:
                                                                MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 15.h, vertical: 2.5.h)),
                                                                foregroundColor:
                                                                MaterialStateProperty.all<Color>(Color(0xffB591D9)),
                                                                backgroundColor:
                                                                MaterialStateProperty.all<Color>(Color(0xffF2ECF9)),
                                                                shape:
                                                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(20),
                                                                    side: BorderSide.none,
                                                                  ),
                                                                ),
                                                              ),
                                                              icon: Icon(
                                                                  Icons.hide_source,
                                                                  color: Color(0xff9661C9)),
                                                              label:
                                                              Text(
                                                                '      Hide',
                                                                style: TextStyle(
                                                                    fontSize: 17.sp,
                                                                    fontWeight: FontWeight.w500,
                                                                    color: Color(0xff000000)),
                                                              ),
                                                              onPressed:
                                                                  () {
                                                                setState(() {
                                                                  isVisible = !isVisible;
                                                                });
                                                              },
                                                            ),
                                                          ]),
                                                      SizedBox(
                                                          height:
                                                          20),
                                                      Row(
                                                        children: [
                                                          ElevatedButton
                                                              .icon(
                                                            style:
                                                            ButtonStyle(
                                                              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
                                                                  horizontal: 15.h,
                                                                  vertical: 2.5.h)),
                                                              foregroundColor:
                                                              MaterialStateProperty.all<Color>(Color(0xffB591D9)),
                                                              backgroundColor:
                                                              MaterialStateProperty.all<Color>(Color(0xffF2ECF9)),
                                                              shape:
                                                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(20),
                                                                  side: BorderSide.none,
                                                                ),
                                                              ),
                                                            ),
                                                            icon: Icon(
                                                                Icons
                                                                    .cancel_outlined,
                                                                color:
                                                                Color(0xff9661C9)),
                                                            label:
                                                            Text(
                                                              '  Cancel',
                                                              style: TextStyle(
                                                                  fontSize: 17.sp,
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Color(0xff000000)),
                                                            ),
                                                            onPressed:
                                                                () {
                                                              Navigator
                                                                  .pop(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder: (context) {
                                                                    return favoritesDrawer();
                                                                  },
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                );
                              },
                              child: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [

                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
     );
   }
 }
