import 'package:amazon_mock/pages/home/product_display.dart';
import 'package:amazon_mock/pages/home/tab_indicator.dart';
import 'package:amazon_mock/services/mock_data.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _searchTextController = TextEditingController();

  int tabIndex = 0;

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 7,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(131, 216, 226, 1),
                  Color.fromRGBO(166, 231, 206, 1)
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.fromLTRB(8.0, 0, 4.0, 8.0),
                width: MediaQuery.of(context).size.width * .9,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    Flexible(
                      child: TextField(
                        controller: _searchTextController,
                        decoration: const InputDecoration(
                          hintText: "Search Amazon",
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.mic),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 40.0,
            padding: const EdgeInsets.fromLTRB(8, 4, 4, 8),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(182, 231, 238, 1),
                  Color.fromRGBO(201, 241, 226, 1)
                ],
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 4.0),
                  child: const Icon(Icons.location_on_outlined),
                ),
                const Text(
                  "Deliver to Ayren - Stillwater 74074",
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: MockData().products.length,
              itemBuilder: (context, index) {
                return ProductDisplay(
                  product: MockData().products[index],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TabIndicator(
                    isActive: tabIndex == 0,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () => setState(() => tabIndex = 0),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TabIndicator(
                    isActive: tabIndex == 1,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.person_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () => setState(() => tabIndex = 1),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TabIndicator(
                    isActive: tabIndex == 2,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () => setState(() => tabIndex = 2),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TabIndicator(
                    isActive: tabIndex == 3,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: () => setState(() => tabIndex = 3),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
