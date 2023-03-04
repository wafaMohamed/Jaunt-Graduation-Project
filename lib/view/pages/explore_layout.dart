import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaunt/view/pages/payment_screen.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
import 'booking_screen.dart';
import 'home_explor_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class exploreLayout extends StatefulWidget {
  const exploreLayout({Key? key}) : super(key: key);

  @override
  State<exploreLayout> createState() => _exploreLayoutState();
}

class _exploreLayoutState extends State<exploreLayout> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  DateTime dateTime = DateTime.now();
  bool isVisible = true;
  var categoryHome = [
    'Filters',
    'Budget',
    'Payment',
    'Best Places',
    'High to Low',
    'Low to High',
    'Plan',
  ];
  double max = 900000;
  double min = 10;

  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void decrementCounter() {
    if (count < 1) {
      return;
    }
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              '     Where You Will ',
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
              ' GO.?',
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
        automaticallyImplyLeading: false,
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
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Row(
                      children: [
                        for (int i = 0; i < 7; i++)
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                backgroundColor: AppTheme.purplewight,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30.0),
                                  ),
                                ),
                                builder: (context) => DraggableScrollableSheet(
                                    initialChildSize: 0.28,
                                    maxChildSize: 0.90,
                                    minChildSize: 0.10,
                                    expand: false,
                                    builder: (context, scrollController) {
                                      return SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.all(16)),
                                            Row(
                                              children: [
                                                Text(
                                                  '  Filters',
                                                  style: TextStyle(
                                                      color:
                                                          AppTheme.purpleDark,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16.sp,
                                                      fontFamily: 'Montserrat'),
                                                ),
                                                SizedBox(
                                                  width: 180.sp,
                                                ),
                                                CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: CloseButton(
                                                    color: Color(0xff9661C9),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  child: Icon(
                                                    Icons.person_add,
                                                    size: 25,
                                                    color: Color(0xff9661C9),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 1,
                                                ),
                                                Text(
                                                  'Number of guests',
                                                  style: TextStyle(
                                                      color: Color(0XFF21162C),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat'),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                FloatingActionButton(
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color: AppTheme
                                                            .purplewight),
                                                  ),
                                                  onPressed: incrementCounter,
                                                  backgroundColor:
                                                      AppTheme.purpleMedium,
                                                  mini: true,
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                Text('${count}'),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                FloatingActionButton(
                                                  child: Center(
                                                    child: Icon(Icons.minimize,
                                                        color: AppTheme
                                                            .purplewight),
                                                  ),
                                                  onPressed: decrementCounter,
                                                  backgroundColor:
                                                      AppTheme.purpleMedium,
                                                  mini: true,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            //space Container
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 1,
                                                    width: 365,
                                                    color: Color(0xff9183D8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '   Payment Methods',
                                                  style: TextStyle(
                                                    color: AppTheme.purpleDark,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),

                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          credtCard(),
                                                    ));
                                              },
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16),
                                                    child: Icon(
                                                      Icons.credit_card,
                                                      size: 25,
                                                      color: Color(0xff9661C9),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 1,
                                                  ),
                                                  Text(
                                                    'Online',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0XFF21162C),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14,
                                                        fontFamily:
                                                            'Montserrat'),
                                                  ),
                                                  SizedBox(
                                                    width: 52.w,
                                                  ),
                                                  Theme(
                                                    data: Theme.of(context)
                                                        .copyWith(
                                                      unselectedWidgetColor:
                                                          Color(0xffCBB1E4),
                                                    ),
                                                    child: Checkbox(
                                                      value: isChecked,
                                                      onChanged: (value) {
                                                        setState(() =>
                                                            isChecked = value!);
                                                      },
                                                      activeColor:
                                                          Color(0xffCBB1E4),
                                                      checkColor:
                                                          Color(0xff9661C9),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  child: Icon(
                                                    Icons
                                                        .monetization_on_outlined,
                                                    size: 25,
                                                    color: Color(0xff9661C9),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 1,
                                                ),
                                                Text(
                                                  'Pay at host ',
                                                  style: TextStyle(
                                                      color: Color(0XFF21162C),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat'),
                                                ),
                                                SizedBox(
                                                  width: 42.w,
                                                ),
                                                Theme(
                                                  data: Theme.of(context)
                                                      .copyWith(
                                                    unselectedWidgetColor:
                                                        Color(0xffCBB1E4),
                                                  ),
                                                  child: Checkbox(
                                                    value: isChecked2,
                                                    onChanged: (value) {
                                                      setState(() =>
                                                          isChecked2 = value!);
                                                    },
                                                    activeColor:
                                                        Color(0xffCBB1E4),
                                                    checkColor:
                                                        Color(0xff9661C9),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            //space Container
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 1,
                                                    width: 365,
                                                    color: Color(0xff9183D8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '   Best Places Rate',
                                                  style: TextStyle(
                                                    color: AppTheme.purpleDark,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),

                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  child: Icon(
                                                    Icons.star,
                                                    size: 25,
                                                    color: Colors.amber,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 1,
                                                ),
                                                Text(
                                                  'High to Low',
                                                  style: TextStyle(
                                                      color: Color(0XFF21162C),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat'),
                                                ),
                                                SizedBox(
                                                  width: 40.w,
                                                ),
                                                Theme(
                                                  data: Theme.of(context)
                                                      .copyWith(
                                                    unselectedWidgetColor:
                                                        Color(0xffCBB1E4),
                                                  ),
                                                  child: Checkbox(
                                                    value: isChecked3,
                                                    onChanged: (value) {
                                                      setState(() =>
                                                          isChecked3 = value!);
                                                    },
                                                    activeColor:
                                                        Color(0xffCBB1E4),
                                                    checkColor:
                                                        Color(0xff9661C9),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),

                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  child: Icon(
                                                    Icons.star,
                                                    size: 25,
                                                    color: Colors.amber,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 1,
                                                ),
                                                Text(
                                                  'Low to High',
                                                  style: TextStyle(
                                                      color: Color(0XFF21162C),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat'),
                                                ),
                                                SizedBox(
                                                  width: 40.w,
                                                ),
                                                Theme(
                                                  data: Theme.of(context)
                                                      .copyWith(
                                                    unselectedWidgetColor:
                                                        Color(0xffCBB1E4),
                                                  ),
                                                  child: Checkbox(
                                                    value: isChecked4,
                                                    onChanged: (value) {
                                                      setState(() =>
                                                          isChecked4 = value!);
                                                    },
                                                    activeColor:
                                                        Color(0xffCBB1E4),
                                                    checkColor:
                                                        Color(0xff9661C9),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 1,
                                                    width: 365,
                                                    color: Color(0xff9183D8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '    Price Range (Budget)',
                                                  style: TextStyle(
                                                    color: AppTheme.purpleDark,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Column(
                                              children: [
                                                StatefulBuilder(
                                                    builder: (context, state) {
                                                  return Slider(
                                                      activeColor:
                                                          AppTheme.purpleMedium,
                                                      thumbColor:
                                                          AppTheme.purpleLight,
                                                      value: min.toDouble(),
                                                      max: 9000000,
                                                      min: 10,
                                                      onChanged:
                                                          (double value) {
                                                        min = value;
                                                        state(() {});
                                                        setState(() {});
                                                      });
                                                }),
                                                Text('Min Budget: ${min}'),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                //space Container
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 1,
                                                        width: 365,
                                                        color:
                                                            Color(0xff9183D8),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '    Plan Date and Time',
                                                      style: TextStyle(
                                                        color:
                                                            AppTheme.purpleDark,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15.sp,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  '${dateTime.day}/${dateTime.month}/${dateTime.year} - ${dateTime.hour}:${dateTime.minute}',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Montserrat',
                                                      color: AppTheme
                                                          .purpleMedium),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    padding: MaterialStateProperty
                                                        .all<EdgeInsets>(
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        15.h,
                                                                    vertical:
                                                                        2.h)),
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(Color(
                                                                0xffF2ECF9)),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(Color(
                                                                0xffB591D9)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        side: BorderSide.none,
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () async {
                                                    DateTime? newdate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate: dateTime,
                                                      firstDate: DateTime(2000),
                                                      lastDate: DateTime(2100),
                                                    );
                                                    if (newdate == null) return;
                                                    TimeOfDay? newTime =
                                                        await showTimePicker(
                                                            context: context,
                                                            initialTime: TimeOfDay(
                                                                hour: dateTime
                                                                    .hour,
                                                                minute: dateTime
                                                                    .minute));
                                                    if (newTime == null) return;

                                                    final newDateTime =
                                                        DateTime(
                                                      newdate.year,
                                                      newdate.month,
                                                      newdate.day,
                                                      newTime.minute,
                                                      newTime.minute,
                                                    );

                                                    setState(() {
                                                      dateTime = newDateTime;
                                                    });
                                                  },
                                                  child: Text(
                                                    'Select Date & Time',
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3.h,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        controller: scrollController,
                                      );
                                    }),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 4,
                                    ),
                                  ]),
                              child: Text(
                                categoryHome[i],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                                            borderRadius: BorderRadius.vertical(
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
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(10),
                                                              child: Column(
                                                                children: [
                                                                  Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10)),
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
                                                                            Navigator.push(
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
                                                                            Icons
                                                                                .remove_red_eye,
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
                /*  StaggeredGrid.count(
                  crossAxisCount: 10,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 5,
                  children: [

                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: Image.asset('assets/images/city1.jpg'),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: Image.asset('assets/images/city2.jpg'),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: Image.asset('assets/images/city3.jpg'),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: Image.asset('assets/images/city4.jpg'),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: Image.asset('assets/images/city5.jpg'),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3,
                      child: Image.asset('assets/images/city6.jpg'),
                    ),


                  ],
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
