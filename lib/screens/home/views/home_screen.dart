import 'package:flutter/material.dart';
import 'package:my_first_app/screens/home/views/main_screen.dart';
import 'package:my_first_app/stats/stats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0; // Use currentIndex for consistency
  late Color selectedItemColor = Colors.blue; // Use descriptive variable name
  final Color unselectedItemColor = Colors.grey; // Use final for constant value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(),  // You can optionally add an AppBar if needed
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
            print(value);
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home', // Capitalize labels for consistency
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.graph_square_fill,
                color: currentIndex == 1 ? selectedItemColor : unselectedItemColor,
              ),
              label: 'Stats', // Capitalize labels for consistency
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
              transform: const GradientRotation(3.14 / 4), // Corrected division
            ),
          ),
          child: const Icon(
            CupertinoIcons.add,
          ),
        ),
      ),
      body: currentIndex == 0
          ? const MainScreen() // Use const for stateless widgets
          : const StatScreen(), // Use const for stateless widgets
    );
  }
}