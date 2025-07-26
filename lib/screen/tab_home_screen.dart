import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listicle/utilities/constant.dart';

class TabHomeScreen extends StatefulWidget {
  const TabHomeScreen({super.key});

  @override
  State<TabHomeScreen> createState() => _TabHomeScreenState();
}

class _TabHomeScreenState extends State<TabHomeScreen> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> categories = [
    {'icon': FontAwesomeIcons.star, 'name': 'Popular'},
    {'icon': FontAwesomeIcons.chair, 'name': 'Chair'},
    {'icon': FontAwesomeIcons.table, 'name': 'Table'},
    {'icon': FontAwesomeIcons.couch, 'name': 'Sofa'},
    {'icon': FontAwesomeIcons.bed, 'name': 'Bed'},
    {'icon': FontAwesomeIcons.lightbulb, 'name': 'Lamp'},
    {'icon': FontAwesomeIcons.desktop, 'name': 'Desktop'},
    {'icon': FontAwesomeIcons.keyboard, 'name': 'Keyboard'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/search.png',
            height: 24,
            width: 24,
          ),
          onPressed: () {
            // Handle search action here
          },
        ),
        centerTitle: true,
        title: const Text(
          'Find all you need',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontal category list
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  categories.length,
                  (index) => categoryItem(
                    index: index,
                    iconData: categories[index]['icon'],
                    name: categories[index]['name'],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 30,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          product['image'],
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        product['name'],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '\$ ${product['price']}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/black_lamp.png',
      'name': 'Black Simple Lamp',
      'price': '12.00',
    },
    {
      'image': 'assets/minimal_stand.jpg',
      'name': 'Minimal Stand',
      'price': '25.00',
    },
    {
      'image': 'assets/coffee_chair.jpg',
      'name': 'Coffee Chair',
      'price': '20.00',
    },
    {
      'image': 'assets/desk.jpg',
      'name': 'Simple Desk',
      'price': '50.00',
    },
    {
      'image': 'assets/black_lamp.png',
      'name': 'Black Simple Lamp',
      'price': '12.00',
    },
    {
      'image': 'assets/minimal_stand.jpg',
      'name': 'Minimal Stand',
      'price': '25.00',
    },
    {
      'image': 'assets/coffee_chair.jpg',
      'name': 'Coffee Chair',
      'price': '20.00',
    },
    {
      'image': 'assets/desk.jpg',
      'name': 'Simple Desk',
      'price': '50.00',
    },
  ];

  Widget categoryItem({
    required int index,
    required IconData iconData,
    required String name,
  }) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.black : AppColors.lightGrey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                iconData,
                size: 25,
                color: isSelected ? AppColors.white : AppColors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? AppColors.blue : AppColors.black,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
