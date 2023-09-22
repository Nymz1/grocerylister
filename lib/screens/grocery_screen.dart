import 'package:flutter/material.dart';
import 'package:grocerylister/screens/list_screen.dart';
import 'package:provider/provider.dart';
import 'package:grocerylister/models/grocery_manager.dart';
import 'package:grocerylister/screens/empty_screen.dart';
import 'adding_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocerylister'),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            final manager = Provider.of<GroceryManager>(context, listen: false);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GroceryItemScreen(
                  onCreate: (item) {
                    manager.addItem(item);
                    Navigator.pop(context);
                  },
                  onUpdate: (item) {},
                ),
              ),
            );
          }),
      body: BuildScreen(),
    );
  }
}

Widget BuildScreen() {
  return Consumer<GroceryManager>(
    builder: (context, manager, child) {
      if (manager.groceryItems.isNotEmpty) {
        return GroceryListScreen(manager: manager,);
      } else {
        return const EmptyScreen();
      }
    },
  );
}
