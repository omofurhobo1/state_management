import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter.dart';

class ProfileWiget extends StatelessWidget {
  const ProfileWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 204, 204, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                ),
                Text(
                  '...',
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.blue),
                )
              ],
            ),
            Container(
              height: 200,
              width: 180,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("asset/images/model.jpeg")),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Stephanie Milton",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: Text(
                  'Favorite ${context.watch<Counter>().number.toString()}',
                  style: const TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              height: 300,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.chat),
                      title: Text('Start a chat'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Expert replies'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        color: Colors.red,
                        Icons.star,
                      ),
                      title: Text('Start a review'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Text('🔢'),
                      title: Text('Asked Question'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // child: const SafeArea(
      //child: Center(
      //  child: Text("Favorite Screen"),
    );
  }
}
