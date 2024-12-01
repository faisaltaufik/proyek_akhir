import 'package:flutter/material.dart';
import 'package:proyek_akhir/Views/checkout._screen.dart';
import 'package:proyek_akhir/model/menu.dart';
import 'package:proyek_akhir/Views/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coffee Shop Apps",
          style: TextStyle(
            fontFamily: "Poppins-SemiBold",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CheckoutScreen();
              }));
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const MenuList();
          } else if (constraints.maxWidth <= 1200) {
            return const MenuGrid(gridCount: 4);
          } else {
            return const MenuGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class MenuList extends StatefulWidget {
  const MenuList({
    super.key,
  });

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Menu menu = menuList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DetailScreen();
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    menu.imageAsset,
                    fit: BoxFit.cover,
                    height: 120,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          menu.name,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontFamily: "Poppins-SemiBold",
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          menu.price,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              "0",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(width: 15),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: menuList.length,
    );
  }
}

class MenuGrid extends StatelessWidget {
  final int gridCount;

  const MenuGrid({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: menuList.map((menu) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailScreen();
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      menu.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      menu.name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: "Poppins-SemiBold",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 6.0),
                    child: Text(
                      menu.price,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Poppins-Regular",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.remove),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
