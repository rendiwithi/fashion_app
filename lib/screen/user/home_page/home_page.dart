import 'dart:io';

import 'package:fashion_app/static/general.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  final List<String> _tabs = ['Home', 'T-shirt', 'Jacket', 'Jeans'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: _tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverSafeArea(
                  top: false,
                  bottom: Platform.isIOS ? false : true,
                  sliver: SliverAppBar(
                    backgroundColor: Colors.white,
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: mainColor,
                            ),
                            onPressed: () {}),
                      )
                    ],
                    title: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          fillColor: mainColor,
                          filled: true,
                          hintText: "I wanna buy...",
                          hintStyle: const TextStyle(color: Colors.white),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          suffixIcon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          border: InputBorder.none),
                      controller: searchController,
                    ),
                    elevation: 0.0,
                    floating: true,
                    pinned: true,
                    snap: true,
                    forceElevated: innerBoxIsScrolled,
                    bottom: TabBar(
                      labelColor: mainColor,
                      indicatorColor: mainColor,
                      unselectedLabelColor: Colors.grey,
                      tabs:
                          _tabs.map((String name) => Tab(text: name)).toList(),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_boat),
            ],
          ),
        ),
      ),
      // body: SafeArea(
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
      //             Expanded(
      //               flex: 1,
      //               child: Padding(
      //                 padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      //                 child: TextFormField(
      //                   style: const TextStyle(color: Colors.white),
      //                   decoration: InputDecoration(
      //                       fillColor: mainColor,
      //                       filled: true,
      //                       hintText: "I wanna buy...",
      //                       hintStyle: const TextStyle(color: Colors.white),
      //                       prefixIcon: const Icon(
      //                         Icons.search,
      //                         color: Colors.white,
      //                       ),
      //                       suffixIcon: const Icon(
      //                         Icons.camera_alt_outlined,
      //                         color: Colors.white,
      //                       ),
      //                       enabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(15),
      //                       ),
      //                       contentPadding: const EdgeInsets.all(10),
      //                       border: InputBorder.none),
      //                   controller: searchController,
      //                 ),
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(right: 20.0, top: 20),
      //               child: IconButton(
      //                 icon: Icon(
      //                   Icons.menu,
      //                   color: mainColor,
      //                 ),
      //                 onPressed: () {},
      //               ),
      //             )
      //           ],
      //         ),
      //         DefaultTabController(
      //           length: 4,
      //           child: Scaffold(
      //             appBar: AppBar(
      //               bottom: TabBar(
      //                 isScrollable: true,
      //                 // indicatorColor: Color(0xff015007),
      //                 labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
      //                 // labelColor: Color(0xff015007),
      //                 tabs: [
      //                   Tab(text: "Home"),
      //                   Tab(text: "T-Shirt"),
      //                   Tab(text: "Jacket"),
      //                   Tab(text: "Jeans"),
      //                 ],
      //               ),
      //             ),
      //             body: TabBarView(children: [
      //               Text("data1"),
      //               Text("data2"),
      //               Text("data3"),
      //               Text("data4"),
      //             ]),
      //           ),
      //         ),
      //       ],
      //     )),
    );
  }
}
