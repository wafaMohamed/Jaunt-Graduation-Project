import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaunt/utilities/themes/apptheme.dart';
import 'booking_screen.dart';
import 'home_explor_screen.dart';
import 'package:sizer/sizer.dart';
import 'nave_bar.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool isVisible = true;
  var formdkeyWep = GlobalKey<FormState>();
  var categoryHome = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        drawer: naveBar(),
        appBar:
        AppBar(
          title: Row(
            children: [
              Text(
                '   Welcome To',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                    color: AppTheme.purplewight,
                    shadows: [
                      Shadow(color: AppTheme.purpleDark),
                    ]),
              ),
              Text(
                '  Jaunt',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                    color: AppTheme.purpleMedium),
              ),
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => null,
                icon: Icon(Icons.search, color: AppTheme.purpleMedium)),
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(11),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              exploreScreenLogin(),
                                        ));
                                  },
                                  child: Container(
                                    width: 160,
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.only(left: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/city${index + 1}.jpg'),
                                          fit: BoxFit.cover,
                                          opacity: 0.7,
                                        )),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            FluentSystemIcons.ic_fluent_ticket_regular,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            "Category Name",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(11),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'Recommended Places',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
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
                                                                                FluentSystemIcons.ic_fluent_ticket_filled,
                                                                                color: Color(0xff9661C9)),
                                                                            label:
                                                                                Text(
                                                                              '  Book it',
                                                                              style: TextStyle(
                                                                                  fontSize: 17.sp,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  color: Color(0xff000000)),
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                                  Navigator
                                                                                      .push(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) {
                                                                                        return bookingScreen();
                                                                                      },
                                                                                    ),
                                                                                  );

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
                                                                              Icons.remove_red_eye,
                                                                              color:
                                                                                  Color(0xff9661C9)),
                                                                          label:
                                                                              Text(
                                                                            'See Info',
                                                                            style: TextStyle(
                                                                                fontSize: 17.sp,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Color(0xff000000)),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                                Navigator
                                                                                    .push(
                                                                                  context,
                                                                                  MaterialPageRoute(
                                                                                    builder: (context) {
                                                                                      return exploreScreenLogin();
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
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.location_on,
                                      color: AppTheme.purpleMedium,
                                      size: 20,
                                    ),
                                    Text(
                                      'Sheikh Zayed City',
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
                ],
              ),
            ),
          ),
        ),

        /*GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: CategorisData.map((categoryData) => CategoriesItem(
         categoryData.title,
                categoryData.imageUrl,
              ),).toList(),
        ),*/

        bottomNavigationBar: Container(
          height: 21.h,
          width: 5.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppTheme.purpleLight, AppTheme.purplewight],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
          child: Column(children: [
            SizedBox(height: 3.h),
            Text(
              '  How To Start Listing Your Place Now  ',
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purpleDark),
            ),
            SizedBox(height: 1.h),
            Text(
              'sign up now with JUANT and enjoy high occupancy rates',
              style: TextStyle(
                  fontSize: 8.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: AppTheme.purpleDark),
            ),
            SizedBox(height: 0.5.h),
            Text(
              ' with a continuous and guaranteed financial flow  ',
              style: TextStyle(
                  fontSize: 8.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: AppTheme.purpleDark),
            ),
            SizedBox(height: 2.h),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  if (formdkeyWep.currentState!.validate()) {
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xff9661C9)),
                  shadowColor: MaterialStateProperty.all(Colors.black),
                  fixedSize: MaterialStateProperty.all(Size(270, 49)),
                  elevation: MaterialStateProperty.all(1.5),
                ),
                child: Text(
                  'Start Adding Your Place',
                  style: TextStyle(
                    color: AppTheme.purplewight,
                    fontSize: 16.15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
          ]),
        ));
  }
}
