import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/providers/profileprovider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Center(
        child: Column(
          children: [
            Selector<Profileprovider, String>(
              selector: (_, Provider) => Provider.name,
              builder: (context, name, child) {
                return Text(
                  name,
                  style: const TextStyle(color: Colors.red, fontSize: 25),
                );
              },
            ),
            Selector<Profileprovider, String>(
              selector: (_, Provider) => Provider.email,
              builder: (context, email, child) {
                return Text(
                  email,
                  style: const TextStyle(color: Colors.red, fontSize: 25),
                );
              },
            ),
            Selector<Profileprovider, String>(
              selector: (_, Provider) => Provider.mobile,
              builder: (context, mobile, child) {
                return Text(
                  mobile,
                  style: const TextStyle(color: Colors.red, fontSize: 25),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<Profileprovider>().updatedname("Keshav");
              },
              child: const Text("Update name"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<Profileprovider>().updatedemail(
                  "keshav@gmail.com",
                );
              },
              child: const Text("Update Email"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<Profileprovider>().updatedmobile("741852963");
              },
              child: const Text("Update Number"),
            ),
          ],
        ),
      ),
    );
  }
}
