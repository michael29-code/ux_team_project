import 'package:flutter/material.dart';
import 'package:ux_team_project/widgets/header.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({super.key});

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                'Shopping List',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Items',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(160.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Add Items
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Color(0xFFA70739)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                  ),
                  child: const Text(
                    '+ Add Items',
                    style: TextStyle(color: Color(0xFFA70739)),
                  ),
                ),
                const SizedBox(width: 8.0),
                OutlinedButton(
                  onPressed: () {
                    // Handle Remove Items
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                  ),
                  child: const Text(
                    '— Remove Items',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            _buildCategoryCard('Bakery & Bread'),
            const SizedBox(height: 16.0),
            _buildCategoryCard('Bakery & Bread'),
            const SizedBox(height: 16.0),
            _buildCategoryCard('Bakery & Bread'),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    // Handle Check All Items
                  },
                  child: const Text('Check All Items'),
                ),
              ],
            ),
            const Divider(),
            _buildItemRow('Telur'),
            const Divider(),
            _buildItemRow('Tepung'),
            const Divider(),
            _buildItemRow('Margarin'),
            const Divider(),
            TextButton(
              onPressed: () {
                // Handle Add Items...
              },
              child: const Text(
                'Add Items...',
                style: TextStyle(color: Color(0xFFA70739)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemRow(String itemName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (bool? value) {
                // Handle item check
              },
            ),
            Text(itemName),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                // Handle decrease quantity
              },
            ),
            const Text('2'),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                // Handle increase quantity
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Handle more options
              },
            ),
          ],
        ),
      ],
    );
  }
}
