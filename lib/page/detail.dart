import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/page/favorit/favorit.dart';
import 'package:slicing/page/home.dart';
import 'package:slicing/theme/theme.dart';
import 'package:slicing/widget/buton.dart';

class ProductDetailPage extends StatefulWidget {
  final Map<String, String> product;
  final List<Map<String, String>> allProducts;

  ProductDetailPage({required this.product, required this.allProducts});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isFavorite = false;
  List<Map<String, String>> getSimilarProducts() {
    // Filter semua produk dengan kategori yang sama
    return widget.allProducts
        .where((prod) => prod['category'] == widget.product['category'])
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> similarProducts = getSimilarProducts();

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                color: primarytext,
                child: Image.asset(
                  widget.product['image']!,
                  width: double.infinity,
                  height: 310,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 10,
                top: 30,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              Positioned(
                right: 10,
                top: 30,
                child: IconButton(
                  onPressed: () {
                    // Tambahkan fungsi untuk menangani tombol keranjang belanja di sini
                  },
                  icon: Icon(Icons.shopping_bag),
                ),
              ),
              Positioned(
                  bottom: 10,
                  right: 200,
                  child: Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: price,
                  ))
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: bg1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product['name']!,
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w600,
                                color: primarytext,
                              ),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              maxLines: 2,
                            ),
                            Gap(5),
                            Text(
                              widget.product['category']!,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: primarytext,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(isFavorite
                                  ? '${widget.product['name']} ditambahkan ke favorit'
                                  : '${widget.product['name']} dihapus dari favorit'),
                            ),
                          );
                          if (isFavorite) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MyFavorit(product: widget.product),
                              ),
                            );
                          }
                        },
                        child: Image.asset(
                          isFavorite
                              ? 'assets/image_wishlist.png'
                              : 'assets/button_wishlist.png',
                          height: 46,
                          width: 46,
                        ),
                      ),
                    ],
                  ),

                  Gap(20),
                  // Harga Produk
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: bg2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'price start from',
                          style: TextStyle(
                            fontSize: 14,
                            color: primarytext,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Price: \$${widget.product['price']}',
                          style: TextStyle(
                            fontSize: 16,
                            color: price,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(20),
                  Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: primarytext,
                    ),
                  ),
                  Gap(10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut diam ut felis gravida laoreet nec a diam. Pellentesque ultrices ligula id eros lobortis laoreet.',
                    style: TextStyle(
                      fontSize: 14,
                      color: secondarytext,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Gap(20),
                  // Produk Serupa
                  Text(
                    'Similar Products:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: primarytext,
                    ),
                  ),
                  Gap(10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        similarProducts.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailPage(
                                    product: similarProducts[index],
                                    allProducts: widget.allProducts,
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Container(
                                    color: primarytext,
                                    height: 54,
                                    width: 54,
                                    child: Image.asset(
                                      similarProducts[index]['image']!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 54,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/button_chat.png'),
                        Container(
                            width: 275,
                            child: buton(onPressed: () {}, text: 'Add Cart'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
