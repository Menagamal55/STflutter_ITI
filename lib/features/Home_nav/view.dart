import 'package:flutter/material.dart';
import 'package:store/core/image/appimage.dart';
import 'package:store/features/Home_nav/widget/categories.dart';
import 'package:store/features/Home_nav/widget/productcard.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map<String, dynamic>> categories = [
    {
      'image': Appimage.greps,
      'color': const Color(0XFFEDD0FF),
      'title': 'Fruits',
    },
    {
      'image': Appimage.vegetables,
      'color': const Color(0XFFFFD9BA),
      'title': 'Vegtables',
    },
    {
      'image': Appimage.meet,
      'color': const Color(0XFFFEECE6),
      'title': 'Meat',
    },
    {
      'image': Appimage.fish,
      'color': const Color(0XFFE9F5FF),
      'title': 'Fish',
    },
    {
      'image': Appimage.seefood,
      'color': const Color(0XFFFEECE6),
      'title': 'Sea food',
    },
    {
      'image':Appimage.juice,
      'color': const Color(0XFFFEECE6),
      'title': 'Juice',
    },
  ];
  List<Map<String, dynamic>> products = [
    {
      'image': Appimage.apple,
      'title': 'Red Apple',
      'weight': '1kg,price,g',
      'price': 4.99,
    },
    {
      'image': Appimage.banana,
      'title': 'Orginal Banana',
      'weight': '1kg,price,g',
      'price': 5.99,
    },
    {
      'image': Appimage.cake,
      'title': 'Cake',
      'weight': '1pcs,price,g',
      'price': 4.09,
    },
    {
      'image': Appimage.avocado,
      'title': 'Avocado Bowl',
      'weight': '1st,price,g',
      'price': 24.00,
    },
    {
      'image': Appimage.salmon,
      'title': 'Salmon',
      'weight': '1kg,price,g',
      'price': 50.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Image.asset(Appimage.home),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF7F4E1D),
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF7F4E1D),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CatogriesCard(
                  imaageUrl: categories[index]['image'],
                  color: categories[index]['color'],
                  title: categories[index]['title'],
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular deals',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF7F4E1D),
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF7F4E1D),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  imagePath: product['image'],
                  name: product['title'],
                  weightLabel: product['weight'],
                  price: product['price'],
                  onAdd: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}