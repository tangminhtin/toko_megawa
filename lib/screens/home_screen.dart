import 'package:flutter/material.dart';
import 'package:toko_megawa/widgets/home_screen/hot_sales.dart';
import 'package:toko_megawa/widgets/home_screen/product_side.dart';
import 'package:toko_megawa/widgets/home_screen/recently_viewed.dart';
import 'package:toko_megawa/widgets/home_screen/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          elevation: 10,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          unselectedLabelStyle: const TextStyle(
            color: Colors.grey,
          ),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Color(0xffEFF5F5),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Static',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Profile',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SearchBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      ProductSide(),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      HotSales(),
                      RecentlyViewed(),
                    ],
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
