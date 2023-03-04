import 'package:flutter/material.dart';
import 'package:jaunt/utilities/themes/apptheme.dart';
import 'package:sizer/sizer.dart';
import 'package:lottie/lottie.dart';


class credtCard extends StatefulWidget {
  const credtCard({Key? key}) : super(key: key);

  @override
  State<credtCard> createState() => _credtCardState();
}

class _credtCardState extends State<credtCard> {
  var formdkeyPayment = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              '   Payment',
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
              '  Method',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  color: AppTheme.purplewight),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => null,
              icon: Icon(Icons.credit_card,color: AppTheme.purpleMedium,size: 28,)),
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
        child: Column
          (children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.01,
              ),
              Padding(
                  padding:  EdgeInsets.only(top: 3.h),
                  child: Column(
                    children: [
                      Center(
                        child: LottieBuilder.network(
                          'https://assets10.lottiefiles.com/packages/lf20_yopo5lmk.json',
                          height: 180,
                          fit: BoxFit.cover,
                          reverse: true,
                          repeat: true,
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
            SizedBox(height:10 ,),
          Form(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30),
                child: Column(
            children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "  Card number",
                  prefix: Icon(Icons.credit_card,color: AppTheme.purpleMedium,
                  ),
                    // prefixIcon: Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 10),
                    //   child: Image.asset(''),
                    // )
                  ),
                  cursorColor: AppTheme.purpleMedium,



                ),
                SizedBox(height: 10),
                TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(hintText: "  Full name",
                  prefix: Icon(Icons.person,color: AppTheme.purpleMedium,
                  ),
                  // prefixIcon: Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 10),
                  //   child: Image.asset(''),
                  // )
                ),
                cursorColor: AppTheme.purpleMedium,



              ),
                TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "  CVV",
                  prefix: Icon(Icons.credit_card,color: AppTheme.purpleMedium,
                  ),
                  // prefixIcon: Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 10),
                  //   child: Image.asset(''),
                  // )
                ),
                cursorColor: AppTheme.purpleMedium,



              ),
                 SizedBox(height: 10),
                TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "  MM/YY",
                  prefix: Icon(Icons.calendar_month,color: AppTheme.purpleMedium,
                  ),
                  // prefixIcon: Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 10),
                  //   child: Image.asset(''),
                  // )
                ),
                cursorColor: AppTheme.purpleMedium,



              ),
                SizedBox(height: 30),
                 Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    if (formdkeyPayment.currentState!.validate()) {
                      setState(() {


                      }
                      );
                    }
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                        AppTheme.purpleMedium),
                    shadowColor:
                    MaterialStateProperty.all(Colors.black),
                    fixedSize:
                    MaterialStateProperty.all(Size(171, 49)),
                    elevation: MaterialStateProperty.all(1.5),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: AppTheme.purplewight,
                      fontSize: 16.15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
              ))
        ]),
      ),
    );
  }
}
