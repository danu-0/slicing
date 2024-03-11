import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/page/chat/chatlist.dart';
import 'package:slicing/page/home.dart';
import 'package:slicing/page/profil/profil.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widget/buton.dart';

class MyFavorit extends StatefulWidget {
  final Map<String, String> product;

  MyFavorit({required this.product});

  @override
  _MyFavoritState createState() => _MyFavoritState();
}

class _MyFavoritState extends State<MyFavorit> {
  final cController = Get.put(MyController());
  var currentIndex = 3;
  bool isDeleted = false;

  Widget buildFavoritContent() {
    if (isDeleted ||
        widget.product == null ||
        widget.product['image'] == null) {
      // Jika data dihapus atau null, tampilkan pesan yang sama
      return Center(
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
                fontWeight: FontWeight.w400,
              ),
            ),
            Gap(10),
            Text(
              "Let's find your favorite shoes",
              style: TextStyle(
                color: secondarytext,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Gap(30),
            Container(
              width: 152,
              child: buton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                text: 'Explore Store',
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
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
                      child: Image.asset(widget.product['image']!),
                    ),
                  ),
                  Gap(5),
                  Container(
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product['name'] ?? 'noname',
                          style: TextStyle(
                            color: primarytext,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(2),
                        Text(
                          " \$${widget.product['price'] ?? 'no price'}",
                          style: TextStyle(
                            color: price,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
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
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        content: Text(
                          'Cancel Favorit?',
                          style: TextStyle(
                            color: primarytext,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
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
                                fontWeight: FontWeight.w600,
                              ),
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
                                fontWeight: FontWeight.w600,
                              ),
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
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg3,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85),
        child: AppBar(
          title: Text(
            'Favorit Shoes',
            style: TextStyle(
              color: primarytext,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: bg1,
        ),
      ),
      body: buildFavoritContent(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: const CircleBorder(side: BorderSide()),
          onPressed: () => cController.index.value = 3,
          backgroundColor: secondary,
          foregroundColor: primary,
          elevation: 0,
          child: Image.asset(
            "assets/icon_cart.png",
            height: 20,
            width: 20,
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomAppBar(
          notchMargin: 16.0,
          shape: const CircularNotchedRectangle(),
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Icon(
                    Icons.home,
                    color: currentIndex == 0 ? primary : secondarytext,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyChat()));
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: Icon(
                    Icons.chat,
                    color: currentIndex == 1 ? primary : secondarytext,
                  ),
                ),
              ),
              Gap(50),
              SizedBox(width: 12), // Spacer
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/favorit');
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: currentIndex == 3 ? primary : secondarytext,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyProfil()));
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  child: Icon(
                    Icons.person,
                    color: currentIndex == 4 ? primary : secondarytext,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
