import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pr_6/user_pref/user_preferences.dart';
import 'Feedback.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final UserPreferences userPreferences = GetIt.I<UserPreferences>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CoffeeShop'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2a3cfe74369797.5c2dd0adae475.jpg",
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Мы предлагаем широкий выбор кофейных напитков на любой вкус: "
                "от классического эспрессо до авторских латте и капучино.",
                style: TextStyle(fontSize: 20, color: Colors.brown),
                textAlign: TextAlign.center,
              ),
            ),
            Observer(
              builder: (_) => Text(
                'Выбранный кофе: ${userPreferences.favoriteCoffee}',
                style: const TextStyle(fontSize: 16, color: Colors.brown),
              ),
            ),
            Observer(
              builder: (_) => Text(
                'Выбранное блюдо: ${userPreferences.favoriteSnack}',
                style: const TextStyle(fontSize: 16, color: Colors.brown),
              ),
            ),
            Observer(
              builder: (_) => Text(
                'Выбранный десерт: ${userPreferences.favoriteDessert}',
                style: const TextStyle(fontSize: 16, color: Colors.brown),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildMenuItem(
                  context,
                  title: "Кофе",
                  icon: Icons.coffee,
                  path: "/coffee",
                ),
                buildMenuItem(
                  context,
                  title: "Перекусы",
                  icon: Icons.fastfood_outlined,
                  path: "/snacks",
                ),
                buildMenuItem(
                  context,
                  title: "Десерты",
                  icon: Icons.cake_outlined,
                  path: "/desserts",
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FeedBack()),
          );
        },
        backgroundColor: Colors.brown.shade200,
        child: const Icon(Icons.feedback_outlined),
      ),
    );
  }

  Widget buildMenuItem(BuildContext context,
      {required String title, required IconData icon, required String path}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            color: Colors.brown,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.brown),
          ),
          ElevatedButton(
            onPressed: () => context.go(path),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown.shade50,
            ),
            child: const Text(
              "Меню",
              style: TextStyle(fontSize: 16, color: Colors.brown),
            ),
          ),
        ],
      ),
    );
  }
}
