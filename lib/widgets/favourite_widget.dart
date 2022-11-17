import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateapp/providers/favorite.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  // int num = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(builder: (context, index, child) {
      return ListView.builder(itemBuilder: (context, ind) {
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset("asset/images/model1.jpeg"),
          ),
          title: Text(
            "Vincet Ruby ${index.favoriteContacts[ind]}",
            style: const TextStyle(color: Colors.blue),
          ),
          subtitle: const Text("0804-553-890"),
          trailing: IconButton(
            onPressed: () {
              Provider.of<FavoriteProvider>(context, listen: false)
                  .removeFavorite(index.favoriteContacts[ind]);
            },
            icon: const Icon(Icons.cancel_sharp),
            color: Colors.red,
          ),
        );
      });
    });
  }
}
