import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var currentPage = DrawerSections.home;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.black,
                child: ListView(
                  // padding: EdgeInsets.zero,
                  children: <Widget>[
                    Container(
                      color: Colors.green[700],
                      width: double.infinity,
                      height: 200,
                      padding: EdgeInsets.only(top: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.jpg'),
                              ),
                            ),
                          ),
                          Text(
                            "BeautyGirls",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "HuyShirobi@gmail.com",
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MyDrawerList(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      // child: Column(
      //   children: [
      //     menuItem(1, "Home", Icons.home,
      //         currentPage == DrawerSections.home ? true : false),
      //     menuItem(2, "Send feedback", Icons.feedback_outlined,
      //         currentPage == DrawerSections.send_feedback ? true : false),
      //     menuItem(3, "Contacts", Icons.people_alt_outlined,
      //         currentPage == DrawerSections.contacts ? true : false),
      //     menuItem(4, "Donate", Icons.favorite,
      //         currentPage == DrawerSections.donate ? true : false),
      //     Divider(),
      //     menuItem(5, "Settings", Icons.settings_outlined,
      //         currentPage == DrawerSections.settings ? true : false),
      //   ],
      // ),
    );
  }

// Widget menuItem(int id, String title, IconData icon, bool selected) {
//   return Material(
//     color: selected ? Colors.grey[300] : Colors.transparent,
//     child:
//     InkWell(
//       onTap: () {
//         setState(() {
//           if (id == 1) {
//             currentPage = DrawerSections.home;
//             Navigator.pop(context);
//           } else if (id == 2) {
//             currentPage = DrawerSections.send_feedback;
//             Navigator.pop(context);
//             Fluttertoast.showToast(
//                 msg: "Feature coming soon!",
//                 toastLength: Toast.LENGTH_SHORT,
//                 gravity: ToastGravity.BOTTOM,
//                 timeInSecForIosWeb: 1,
//                 backgroundColor: Colors.green[200],
//                 textColor: Colors.black54,
//                 fontSize: 16.0);
//           } else if (id == 3) {
//             currentPage = DrawerSections.contacts;
//             Navigator.pop(context);
//             Fluttertoast.showToast(
//                 msg: "Feature coming soon!",
//                 toastLength: Toast.LENGTH_SHORT,
//                 gravity: ToastGravity.BOTTOM,
//                 timeInSecForIosWeb: 1,
//                 backgroundColor: Colors.green[200],
//                 textColor: Colors.black54,
//                 fontSize: 16.0);
//           } else if (id == 4) {
//             currentPage = DrawerSections.donate;
//             Navigator.pop(context);
//             Fluttertoast.showToast(
//                 msg: "Feature coming soon!",
//                 toastLength: Toast.LENGTH_SHORT,
//                 gravity: ToastGravity.BOTTOM,
//                 timeInSecForIosWeb: 1,
//                 backgroundColor: Colors.green[200],
//                 textColor: Colors.black54,
//                 fontSize: 16.0);
//           } else if (id == 5) {
//             currentPage = DrawerSections.settings;
//             Navigator.pop(context);
//             Fluttertoast.showToast(
//                 msg: "Feature coming soon!",
//                 toastLength: Toast.LENGTH_SHORT,
//                 gravity: ToastGravity.BOTTOM,
//                 timeInSecForIosWeb: 1,
//                 backgroundColor: Colors.grey[200],
//                 textColor: Colors.black54,
//                 fontSize: 16.0);
//           }
//         });
//       },
//       child: Padding(
//         padding: EdgeInsets.all(15.0),
//         child: Row(
//           children: [
//             Expanded(
//               child: Icon(
//                 icon,
//                 size: 20,
//                 color: Colors.black,
//               ),
//             ),
//             Expanded(
//               flex: 3,
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
}

enum DrawerSections {
  home,
  send_feedback,
  contacts,
  donate,
  settings,
}
