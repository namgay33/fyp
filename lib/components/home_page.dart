import 'package:flutter/material.dart';

const int itemCOunt = 20;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: itemCOunt,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  // leading: CircleAvatar(
                  //   radius: 30,
                  //   backgroundImage:
                  //       NetworkImage('https://picsum.photos/id/237/200/300'),
                  // ),
                  title: const Text('Dzongkha '),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 40,
                          child: Text('Attribute 1'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 40,
                          child: Text('Attribute 2'),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.favorite),
                  tooltip: 'Add to favorite',
                  onPressed: () {
                    setState(
                      () {},
                    );
                  },
                ),
              ],
            ),
          );
        });
    // ListView.builder(
    //   itemCount: itemCOunt,
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListTile(
    //       title: Text('Item ${(index + 1)}'),
    //       leading: const Icon(Icons.person),
    //       trailing: const Icon(Icons.select_all),
    //       onTap: () {
    //         debugPrint('Presssed ${(index + 1)}');
    //       },
    //     );
    //   },
    // );
  }
}
