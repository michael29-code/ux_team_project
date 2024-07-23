import 'package:flutter/material.dart';
import 'package:ux_team_project/pages/header.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  String _selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 8.0),
                const Text(
                  'Edit Items',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Tepung',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Row(
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  // Handle Delete
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
                                  'Delete',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              OutlinedButton(
                                onPressed: () {
                                  // Handle Cancel
                                },
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.red),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(),
                      const Center(
                        child: Text(
                          'Choose Category',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: [
                          _buildChoiceChip('Alcoholic, Beverages'),
                          _buildChoiceChip('Bakery & Bread'),
                          _buildChoiceChip('Alcoholic, Beverages'),
                          _buildChoiceChip('Bakery & Bread'),
                          _buildChoiceChip('Alcoholic, Beverages'),
                          _buildChoiceChip('Bakery & Bread'),
                          _buildChoiceChip('Alcoholic, Beverages'),
                          _buildChoiceChip('Bakery & Bread'),
                          _buildChoiceChip('Alcoholic, Beverages'),
                          _buildChoiceChip('Bakery & Bread'),
                          _buildChoiceChip('Alcoholic, Beverages'),
                          _buildChoiceChip('Bakery & Bread'),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle Submit
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFA70739),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: const Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChoiceChip(String label) {
    return ChoiceChip(
      label: Text(label),
      selected: _selectedCategory == label,
      onSelected: (bool selected) {
        setState(() {
          _selectedCategory = selected ? label : '';
        });
      },
      selectedColor: Colors.grey[300],
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: const BorderSide(color: Colors.grey),
      ),
    );
  }
}
