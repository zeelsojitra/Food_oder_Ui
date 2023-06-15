import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import 'home.dart';

class detils extends StatefulWidget {
  const detils({Key? key}) : super(key: key);

  @override
  State<detils> createState() => _detilsState();
}

class _detilsState extends State<detils> {
  int selected = 0;
  bool rating = false;
  List name = [
    "All",
    "Burgers",
    "Pizza",
    "Sushi",
    "Thai",
  ];
  List<Map<String, dynamic>> fooddetils = [
    {
      "image": "asserts/images/pizza.webp",
      "name": "New York City Pizza",
      "rating": "4.5",
      "time": "20 min",
      "subtitle": "Pizza",
    },
    {
      "image": "asserts/images/italian dish horizontal.webp",
      "name": "Italianoman",
      "rating": "4.9",
      "time": "25 min",
      "subtitle": "Italian",
    },
    {
      "image": "asserts/images/burger_vertical.webp",
      "name": "John's Burgers",
      "rating": "4.6",
      "time": "23 min",
      "subtitle": "Burgers",
    },
    {
      "image": "asserts/images/burger_vertical.webp",
      "name": "John's Burgers",
      "rating": "4.6",
      "time": "23 min",
      "subtitle": "Burgers",
    },
    {
      "image": "asserts/images/sushi.webp",
      "name": "SushiMaster",
      "rating": "4.4",
      "time": "35 min",
      "subtitle": "Sushi",
    },
    {
      "image": "asserts/images/drink.webp",
      "name": "Tango Drink",
      "rating": "4.0",
      "time": "5 min",
      "subtitle": "Drink",
    },
    {
      "image": "asserts/images/Pani-Puri1.jpg",
      "name": "Panipuri",
      "rating": "5.0",
      "time": "5 min",
      "subtitle": "PaniPuri",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 290,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 55,
                                width: 363,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "East 42nd St, New York",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          '321',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Restaurants',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.orange,
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Filters',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down_outlined)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 35,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10, left: 10),
                            width: 70,
                            decoration: BoxDecoration(
                              color: selected == index
                                  ? Colors.black
                                  : Colors.grey,
                              border: Border.all(
                                color: selected == index
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text(
                                name[index],
                                style: TextStyle(
                                    color: selected == index
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return index == 2
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Get 10% ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                      ),
                                      Text(
                                        "Off Code",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  height: 100,
                                  width: 100,
                                  right: 10,
                                  bottom: 25,
                                  child: Image.asset(
                                    "asserts/images/coc&burger_combo.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Column(
                            children: [
                              Container(
                                height: 130,
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              fooddetils[index]["image"],
                                            ),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                            child: like(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          fooddetils[index]['name'],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            start_demo(),
                                            Text(
                                              fooddetils[index]['rating'],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            InkResponse(
                                              child: Icon(
                                                Icons.timelapse,
                                                size: 20,
                                                color: Colors.orange,
                                              ),
                                            ),
                                            Text(
                                              fooddetils[index]['time'],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 115,
                                            ),
                                            Center(
                                              child: Text(
                                                fooddetils[index]['subtitle'],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.black,
                      thickness: 1,
                    );
                  },
                  itemCount: fooddetils.length),
            )
          ],
        ),
      ),
    );
  }
}

class start_demo extends StatefulWidget {
  const start_demo({Key? key}) : super(key: key);

  @override
  State<start_demo> createState() => _start_demoState();
}

class _start_demoState extends State<start_demo> {
  bool rating1 = false;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        setState(() {
          rating1 = !rating1;
        });
      },
      child: Icon(rating1 == true ? Icons.star : Icons.star_border),
    );
  }
}
