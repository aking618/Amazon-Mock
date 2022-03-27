import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _searchTextController = TextEditingController();

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
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
            ],
          ),
        ],
      ),
    );
  }
}
