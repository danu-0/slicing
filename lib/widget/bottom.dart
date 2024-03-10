// // import 'package:flutter/material.dart';

// // class CustomBottomNavigationBar extends StatefulWidget {
// //   @override
// //   _CustomBottomNavigationBarState createState() =>
// //       _CustomBottomNavigationBarState();
// // }

// // class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
// //   int _currentIndex = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
// //         color: Colors.white,
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         children: [
// //           buildNavItem(Icons.home, 0),
// //           buildNavItem(Icons.chat, 1),
// //           SizedBox(width: 60), // Spacer
// //           buildNavItem(Icons.favorite, 2),
// //           buildNavItem(Icons.person, 3),
// //           SizedBox(width: 20),
// //           GestureDetector(
// //             onTap: () {
// //               setState(() {
// //                 _currentIndex = 4;
// //               });
// //             },
// //             child: Container(
// //               width: 40,
// //               height: 40,
// //               decoration: BoxDecoration(
// //                 shape: BoxShape.circle,
// //                 color: _currentIndex == 4 ? Colors.blue : Colors.transparent,
// //               ),
// //               child: Icon(
// //                 Icons.shopping_cart,
// //                 color: _currentIndex == 4 ? Colors.white : Colors.black,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget buildNavItem(IconData icon, int index) {
// //     return GestureDetector(
// //       onTap: () {
// //         setState(() {
// //           _currentIndex = index;
// //         });
// //       },
// //       child: Icon(
// //         icon,
// //         color: _currentIndex == index ? Colors.blue : Colors.black,
// //         size: 28,
// //       ),
// //     );
// //   }
// // }

// // void main() {
// //   runApp(MaterialApp(
// //     home: Scaffold(
// //       appBar: AppBar(title: Text('Custom Bottom Navigation Bar')),
// //       bottomNavigationBar: CustomBottomNavigationBar(),
// //     ),
// //   ));
// // }
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';
// import 'package:slicing/page/chat/chatlist.dart';
// import 'package:slicing/page/home.dart';
// import 'package:slicing/theme/theme.dart';

// class Botom extends StatefulWidget {
//   const Botom({super.key});

//   @override
//   State<Botom> createState() => _BotomState();
// }

// class _BotomState extends State<Botom> {
//   final cController = Get.put(MyController());
//   void _onItemTapped(int index) {
//     setState(() {
//       cController.index.value = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: cController.index.value,
//         children: [
//           const Home(),
//           const MyChat(),
//           Center(
//             child: Text(
//               "3",
//               style: TextStyle(color: primarytext),
//             ),
//           ),
//           const Center(
//             child: Text("2"),
//           ),
//           const Center(
//             child: Text("2"),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: SizedBox(
//         height: 70,
//         width: 70,
//         child: FloatingActionButton(
//           shape: const CircleBorder(side: BorderSide()),
//           onPressed: () => _onItemTapped(2),
//           backgroundColor: primary,
//           foregroundColor: primarytext,
//           elevation: 0,
//           child: Image.asset(
//             "assets/icon_cart.png",
//             height: 20,
//             width: 20,
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         height: 76,
//         notchMargin: 10.0,
//         shape: const CircularNotchedRectangle(),
//         color: price,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             IconButton(
//                 onPressed: () => _onItemTapped(0),
//                 icon: cController.index.value == 0
//                     ? const Icon(
//                         Icons.home,
//                         color: Colors.amber,
//                       )
//                     : const Icon(
//                         Icons.home,
//                         color: Colors.amber,
//                       )),
//             IconButton(
//                 onPressed: () => _onItemTapped(1),
//                 icon: cController.index.value == 1
//                     ? const Icon(
//                         Icons.chat_rounded,
//                         color: Colors.amber,
//                       )
//                     : const Icon(
//                         Icons.chat_rounded,
//                         color: Colors.amberAccent,
//                       )),
//             const Gap(120),
//             IconButton(
//                 onPressed: () => _onItemTapped(3),
//                 icon: cController.index.value == 3
//                     ? const Icon(
//                         Icons.heart_broken,
//                         color: Colors.amber,
//                       )
//                     : const Icon(
//                         Icons.heart_broken,
//                         color: Colors.amber,
//                       )),
//             IconButton(
//                 onPressed: () => _onItemTapped(4),
//                 icon: cController.index.value == 4
//                     ? const Icon(
//                         Icons.person_sharp,
//                         color: Colors.amber,
//                       )
//                     : const Icon(
//                         Icons.person_sharp,
//                         color: Colors.amber,
//                       )),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyController extends GetxController {
//   var index = 0.obs;

//   void onItemTapped(int inx) {
//     index.value = inx;
//     update();
//   }
// }
