import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/controller/product_controller.dart';

class Addprodcts extends StatelessWidget {
  Addprodcts({super.key});

  // final TextEditingController namecontroller = TextEditingController();
  final TextEditingController imagecontroller = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Product")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "price",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: descriptionController,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: "decription",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: imagecontroller,
                decoration: const InputDecoration(
                  labelText: "image url",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: categoryController,
                decoration: const InputDecoration(
                  labelText: "category",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  await context.read<Productcontroller>().addproductsapi(
                    title: titleController.text,
                    description: descriptionController.text,
                    price: double.parse(priceController.text),
                    category: categoryController.text,
                    image: imagecontroller.text,
                  );
                  Navigator.pop(context);
                },
                child: const Text("Save Product"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
