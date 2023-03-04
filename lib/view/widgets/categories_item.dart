// import 'package:flutter/material.dart';
//
// import '../../utilities/themes/apptheme.dart';
// import '../pages/explore_layout.dart';
//
// //Abstraction
// class CategoriesItem extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//
//    CategoriesItem(
//        this.title,
//        this.imageUrl);
//
//   void selectCategory(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) => exploreLayout(),
//     ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       splashColor: Theme.of(context).primaryColor,
//       borderRadius: BorderRadius.circular(15),
//       child: Stack(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Image.network(
//               '',
//               height: 200,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             alignment: Alignment.center,
//             child: Text(
//               '',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//                 color: AppTheme.wight,
//                 fontFamily: 'Montserrat',
//               ),
//             ),
//             decoration: BoxDecoration(
//                 color: Colors.black.withOpacity(0.4),
//                 borderRadius: BorderRadius.circular(15)),
//           ),
//         ],
//       ),
//     );
//   }
// }
