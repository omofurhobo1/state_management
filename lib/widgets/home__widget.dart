import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateapp/providers/favorite.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final myfav = Provider.of<FavoriteProvider>(context);

    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text(
                "Emile Smith Rowe",
                style: TextStyle(color: Colors.blue),
              ),
              subtitle: const Text("0803-5202-188"),
              trailing: ElevatedButton.icon(
                  onPressed: () {
                    myfav.addFavorite(index);
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("Add")),
            ),
          );
        });
  }
}

//class ContactList extends StatelessWidget {
  //const ContactList({super.key});

 // @override
  //Widget build(BuildContext context) {
    
  //}
//}
