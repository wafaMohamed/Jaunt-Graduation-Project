import 'package:flutter/material.dart';
import 'package:jaunt/view/pages/Auth/loginScreen.dart';
import 'package:jaunt/view/pages/payment_screen.dart';
import 'package:jaunt/view/pages/personal_info_screen.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
import 'favorites_screens.dart';
import 'inbox_screen.dart';


class naveBar extends StatefulWidget {
  const naveBar({Key? key}) : super(key: key);

  @override
  State<naveBar> createState() => _naveBarState();
}

class _naveBarState extends State<naveBar> {
  @override
  Widget build(BuildContext context) {
    return
      Drawer(
      backgroundColor: AppTheme.purplewight,
      child: ListView (
        padding: EdgeInsets.zero,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        personalInformation(),
                  ));
            },

            child:
            UserAccountsDrawerHeader(
                accountName: Text('User Name'), accountEmail: Text('example@jaunt.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('assets/images/person.jpeg',
                  width: 100,
                    height:100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cover.jpeg'),
                  fit: BoxFit.cover,

                ),
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        favoritesDrawer(),
                  ));
            },
          ),
          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.drive_eta),
          //   title: Text('Driver'),
          //   onTap: ()=>null,
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        inboxScreen(),
                  ));
            },
            trailing: ClipOval(
              child: Container(
                color: Color(0xffee3c2e),
                width: 23,
                height: 23,
                child: Center(
                  child: Text('8',
                  style: TextStyle(
                    color: AppTheme.wight,
                    fontSize: 12,
                  ),),
                ),
              ),
            ),
          ),
          // Divider(),
          //
          // ListTile(
          //   leading: Icon(Icons.people),
          //   title: Text('Friends'),
          //   onTap: ()=>null,
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Payment methods'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        credtCard(),
                  ));

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        login(),
                  ));
            },
          ),
          Divider(),



        ],
      ),

    );
  }
}

