import 'package:flutter/material.dart';
import 'package:mobile_final_exam/product.dart';
import 'wishlists_page.dart';
import 'profile_page.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ProductsPageContent(),
    WishlistsPage(),
    ProfilePage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlists',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class ProductsPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductCard(
                0xFFF5F5F5, // cardColor
                'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', // imgUrl
                'Product Title 1', // title
                '\$100', // previousPrice
                '\$80', // price
              ),
              ProductCard(
                0xFFF5F5F5, // cardColor
                'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', // imgUrl
                'Product Title 1', // title
                '\$100', // previousPrice
                '\$80', // price
              ),
              ProductCard(
                0xFFF5F5F5, // cardColor
                'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', // imgUrl
                'Product Title 1', // title
                '\$100', // previousPrice
                '\$80', // price
              ),
            ],
          ),
        ));
  }
}
