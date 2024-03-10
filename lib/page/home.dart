import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/page/chat/chatlist.dart';
import 'package:slicing/page/favorit/favorit.dart';
import 'package:slicing/page/profil/profil.dart';

import 'package:slicing/theme/theme.dart';
import 'package:gap/gap.dart';
import 'package:slicing/page/detail.dart';
import 'package:slicing/widget/buton.dart';

class Product {
  final String name;
  final String category;
  final String price;
  final String image;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.image,
  });
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var indexKategori = 0;
  var currentIndex = 0;

  void getKategori(int index) {
    setState(() {
      indexKategori = index;
    });
  }

  var kategoriProduct = [
    'All Shoes',
    'Running',
    'Training',
    'Basketball',
    'Hiking',
  ];

  var namaProduct = [
    {
      'image': 'assets/image_shoes2.png',
      'category': 'Hiking',
      'name': 'COURT VISION 2.0',
      'price': '58,67',
    },
    {
      'image': 'assets/image_shoes3.png',
      'category': 'Hiking',
      'name': 'TERREX URBAN',
      'price': '143,98',
    },
    {
      'image': 'assets/image_shoes4.png',
      'category': 'Running',
      'name': 'SL 20 SHOES',
      'price': '123,82',
    },
    {
      'image': 'assets/image_shoes5.png',
      'category': 'Training',
      'name': 'LEGO SPORT SHOES',
      'price': '92,72',
    },
    {
      'image': 'assets/image_shoes6.png',
      'category': 'Basketball',
      'name': 'Fortarun Running Shoes 2020',
      'price': '43,22',
    },
    {
      'image': 'assets/image_shoes7.png',
      'category': 'Hiking',
      'name': 'Supernove Running Shoes',
      'price': '83,81',
    },
    {
      'image': 'assets/image_shoes8.png',
      'category': 'Training',
      'name': 'Faito Summer.RDY Tokyo Shoes',
      'price': '76,82',
    },
    {
      'image': 'assets/image_shoes2.png',
      'category': 'Basketball',
      'name': 'COURT VISION 2.0',
      'price': '58,67',
    },
    {
      'image': 'assets/image_shoes4.png',
      'category': 'Basketball',
      'name': 'SL 20 SHOES',
      'price': '58,67',
    },
    {
      'image': 'assets/image_shoes5.png',
      'category': 'Basketball',
      'name': 'LEGO SPORT SHOES',
      'price': '92,72',
    },
    {
      'image': 'assets/image_shoes6.png',
      'category': 'Training',
      'name': 'Fortarun Running Shoes 2020',
      'price': '43,22',
    },
    {
      'image': 'assets/image_shoes7.png',
      'category': 'Training',
      'name': 'Supernove Running Shoes',
      'price': '83,81',
    },
    {
      'image': 'assets/image_shoes8.png',
      'category': 'Training',
      'name': 'Faito Summer.RDY Tokyo Shoes',
      'price': '76,82',
    },
    {
      'image': 'assets/image_shoes3.png',
      'category': 'Running',
      'name': 'COURT VISION 2.0',
      'price': '58,67',
    },
    {
      'image': 'assets/image_shoes6.png',
      'category': 'Running',
      'name': 'TERREX URBAN',
      'price': '143,98',
    },
    {
      'image': 'assets/image_shoes5.png',
      'category': 'Running',
      'name': 'LEGO SPORT SHOES',
      'price': '92,72',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final cController = Get.put(MyController());
    return Scaffold(
      backgroundColor: bg3,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'HALLO, ALEX',
              style: TextStyle(
                color: primarytext,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            Text(
              '@alexkein',
              style: TextStyle(
                color: secondarytext,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const Gap(30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  kategoriProduct.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(top: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        getKategori(index);
                      },
                      child: Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: indexKategori == index
                              ? primary
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            kategoriProduct[index],
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: indexKategori == index
                                  ? FontWeight.w500
                                  : FontWeight.w300,
                              color: indexKategori == index
                                  ? primarytext
                                  : secondarytext,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(30),
            Text(
              indexKategori == 0 ? 'Popular Product' : 'For You',
              style: TextStyle(
                color: primarytext,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            Gap(10),
            if (indexKategori == 0)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    namaProduct.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailPage(
                                product: namaProduct[index],
                                allProducts: namaProduct,
                              ),
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                                child: Image.asset(
                                  namaProduct[index]['image']!,
                                  width: 215,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      namaProduct[index]['category']!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 9,
                                          color: secondarytext),
                                    ),
                                    const Gap(4),
                                    Text(
                                      namaProduct[index]['name']!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: bg1),
                                    ),
                                    const Gap(4),
                                    Text(
                                      '\$${namaProduct[index]['price']!}',
                                      style: TextStyle(
                                          color: price,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            Gap(20),
            if (indexKategori == 0)
              Text(
                'New Arrivals',
                style: TextStyle(
                  color: primarytext,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            Expanded(
              child: ListView.builder(
                itemCount: namaProduct.length,
                itemBuilder: (context, index) {
                  if (indexKategori == 0 ||
                      kategoriProduct[indexKategori] ==
                          namaProduct[index]['category']) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailPage(
                              product: namaProduct[index],
                              allProducts: namaProduct,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin:
                            EdgeInsets.only(right: 10, bottom: 30, left: 10),
                        height: 120,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 120,
                                decoration: BoxDecoration(
                                  color: primarytext,
                                ),
                                child: Image.asset(
                                  namaProduct[index]['image']!,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      namaProduct[index]['category']!,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: secondarytext),
                                    ),
                                    Gap(10),
                                    Text(
                                      namaProduct[index]['name']!,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: primarytext),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                    ),
                                    Gap(3),
                                    Text(
                                      namaProduct[index]['price']!,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: price),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: const CircleBorder(side: BorderSide()),
          onPressed: () => cController.index.value = 1,
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
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomAppBar(
          height: 76,
          notchMargin: 10.0,
          shape: const CircularNotchedRectangle(),
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                  cController.onItemTapped(
                      0); // Perbarui indeks halaman dan navigasikan ke halaman home
                },
                icon: Obx(() => Icon(
                      Icons.home,
                      size: 30,
                      color:
                          cController.index.value == 0 ? Colors.white : primary,
                    )),
              ),
              IconButton(
                onPressed: () {
                  cController.index.value = 1;
                  // Navigasi ke halaman chat
                  Navigator.pushNamed(context, '/chat');
                },
                icon: Obx(() => Icon(
                      Icons.chat_rounded,
                      size: 25,
                      color: cController.index.value == 1
                          ? Colors.white
                          : Colors.white,
                    )),
              ),
              const Gap(120),
              IconButton(
                onPressed: () {
                  cController.index.value = 3;
                  // Navigasi ke halaman favorit
                  Navigator.pushNamed(context, '/favorit');
                },
                icon: Obx(() => Icon(
                      Icons.heart_broken,
                      size: 25,
                      color: cController.index.value == 3
                          ? Colors.white
                          : Colors.white,
                    )),
              ),
              IconButton(
                onPressed: () {
                  cController.index.value = 4;
                  // Navigasi ke halaman profil
                  Navigator.pushNamed(context, '/profil');
                },
                icon: Obx(() => Icon(
                      Icons.person_sharp,
                      size: 30,
                      color: cController.index.value == 4
                          ? Colors.white
                          : Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var index = 0.obs;

  void onItemTapped(int inx) {
    index.value = inx;
    update();
  }
}
    

  





  

//bottom
 // bottomNavigationBar: Container(
      //   height: 80, // Sesuaikan tinggi sesuai kebutuhan
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(25),
      //       topRight: Radius.circular(25),
      //     ),
      //     color: Color(0xFF252836), // Latar belakang transparan
      //   ),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(25),
      //       topRight: Radius.circular(25),
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Expanded(
      //           child: GestureDetector(
      //             onTap: () {
      //               setState(() {
      //                 currentIndex = 0;
      //               });
      //             },
      //             child: Icon(
      //               Icons.home,
      //               color: currentIndex == 0 ? primary : secondarytext,
      //             ),
      //           ),
      //         ),
      //         Expanded(
      //           child: GestureDetector(
      //             onTap: () {
      //               setState(() {
      //                 currentIndex = 1;
      //               });
      //             },
      //             child: Icon(
      //               Icons.chat,
      //               color: currentIndex == 1 ? primary : secondarytext,
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 12), // Spacer
      //         InkWell(
      //           onTap: () {
      //             setState(() {
      //               currentIndex = 2;
      //             });
      //           },
      //           borderRadius: BorderRadius.circular(28),
      //           child: Container(
      //             width: 76, // Sesuaikan ukuran sesuai kebutuhan
      //             height: 76, // Sesuaikan ukuran sesuai kebutuhan
      //             decoration: BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 color: bg3 // Warna background khusus untuk ikon keranjang
      //                 ),
      //             child: Icon(
      //               Icons.add_shopping_cart,
      //               color: primary,
      //               size: 36, // Sesuaikan ukuran sesuai kebutuhan
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 12), // Spacer
      //         Expanded(
      //           child: GestureDetector(
      //             onTap: () {
      //               setState(() {
      //                 currentIndex = 3;
      //               });
      //             },
      //             child: Icon(
      //               Icons.favorite,
      //               color: currentIndex == 3 ? primary : secondarytext,
      //             ),
      //           ),
      //         ),
      //         Expanded(
      //           child: GestureDetector(
      //             onTap: () {
      //               setState(() {
      //                 currentIndex = 4;
      //               });
      //             },
      //             child: Icon(
      //               Icons.person,
      //               color: currentIndex == 4 ? primary : secondarytext,
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),