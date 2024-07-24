import 'package:flutter/material.dart';
import 'package:ux_team_project/widgets/header.dart';
import 'package:ux_team_project/widgets/sidebar.dart';

class CreateRecipe extends StatefulWidget {
  const CreateRecipe({super.key});

  @override
  _CreateRecipeState createState() => _CreateRecipeState();
}

class _CreateRecipeState extends State<CreateRecipe> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _selectedCategory = '';

  void _showCategoryBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Wrap(
                spacing: 8.0,
                children: [
                  _buildCategoryChip('Western Food'),
                  _buildCategoryChip('Indonesia Food'),
                  _buildCategoryChip('India Food'),
                  _buildCategoryChip('Japanese Food'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCategoryChip(String label) {
    return ChoiceChip(
      label: Text(label),
      selected: _selectedCategory == label,
      onSelected: (bool selected) {
        setState(() {
          _selectedCategory = selected ? label : '';
        });
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: const Header(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: Text(
                  'Create Recipe',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Upload Image',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    'Drag & Drop or Choose Image for upload\nJPEG, JPG, PNG',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Title',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                'Description',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                'Servings',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                'Ingredients',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Wrap(
                spacing: 8.0,
                children: <Widget>[
                  _buildIngredientChip('1'),
                  _buildIngredientChip('1/8'),
                  _buildIngredientChip('1/4'),
                  _buildIngredientChip('1/3'),
                  _buildIngredientChip('1/2'),
                  _buildIngredientChip('2/3'),
                  _buildIngredientChip('3/4'),
                ],
              ),
              const SizedBox(height: 20.0),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                'Steps',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              const Text(
                'Notes',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              _buildTextField(),
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: () => _showCategoryBottomSheet(context),
                child: const Text(
                  'Add recipe to category...',
                  style: TextStyle(color: Colors.red, fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // Process data
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA70739),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  Widget _buildIngredientChip(String label) {
    return Chip(
      label: Text(label),
    );
  }
}
