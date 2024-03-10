// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:slicing/theme/theme.dart';

// class MyFavorit extends StatelessWidget {
//   final Map<String, String> product;

//   MyFavorit({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: bg3,
//       appBar: AppBar(
//         title: Text(
//           'Favorit Shoes',
//           style: TextStyle(
//               color: primarytext, fontSize: 18, fontWeight: FontWeight.w400),
//         ),
//         centerTitle: true,
//         toolbarHeight: 60,
//         backgroundColor: bg1,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               padding: EdgeInsets.all(12),
//               height: 84,
//               child: Row(
//                 children: [
//                   Container(
//                     child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.asset(product['image']!)),
//                   ),
//                   Gap(5),
//                   Container(
//                     width: 200,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           product['name']!,
//                           style: TextStyle(
//                               color: primarytext,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600),
//                         ),
//                         Gap(2),
//                         Text(
//                           " \$${product['price']}",
//                           style: TextStyle(
//                               color: price,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             GestureDetector(
//                 onTap: () {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text('${product['name']} dihapus dari favorit'),
//                     ),
//                   );
//                   Navigator.pop(context); // Kembali ke halaman sebelumnya
//                 },
//                 child: Container(
//                     padding: EdgeInsets.zero,
//                     height: 40,
//                     child: Image.asset(
//                       'assets/image_wishlist.png',
//                     )))
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widget/buton.dart';

class MyFavorit extends StatefulWidget {
  final Map<String, String> product;

  MyFavorit({required this.product});

  @override
  _MyFavoritState createState() => _MyFavoritState();
}

class _MyFavoritState extends State<MyFavorit> {
  bool isDeleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg3,
      appBar: AppBar(
        title: Text(
          'Favorit Shoes',
          style: TextStyle(
              color: primarytext, fontSize: 18, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: bg1,
      ),
      body: isDeleted
          ? Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 62,
                  child: Image.asset(
                    'assets/image_wishlist.png',
                  ),
                ),
                Gap(30),
                Text(
                  "You don't have dream shoes?",
                  style: TextStyle(
                      color: primarytext,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Gap(10),
                Text(
                  "Let's dind your favorit shoes",
                  style: TextStyle(
                      color: secondarytext,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Gap(30),
                Container(
                    width: 152,
                    child: buton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        text: 'Explore Store'))
              ],
            ))
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 84,
                    child: Row(
                      children: [
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(widget.product['image']!)),
                        ),
                        Gap(5),
                        Container(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.product['name']!,
                                style: TextStyle(
                                    color: primarytext,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Gap(2),
                              Text(
                                " \$${widget.product['price']}",
                                style: TextStyle(
                                    color: price,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 30,
                            width: 30,
                            child: AlertDialog(
                              backgroundColor: primary,
                              title: Text(
                                'Alert',
                                style: TextStyle(
                                    color: primarytext,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              content: Text(
                                'Cencle Favorit ?',
                                style: TextStyle(
                                    color: primarytext,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); // Tutup dialog
                                  },
                                  child: Text(
                                    'NO',
                                    style: TextStyle(
                                        color: primarytext,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isDeleted = true;
                                    });
                                    Navigator.pop(context); // Tutup dialog
                                  },
                                  child: Text(
                                    'YES',
                                    style: TextStyle(
                                        color: primarytext,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Image.asset(
                      'assets/image_wishlist.png',
                      height: 46,
                      width: 46,
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
