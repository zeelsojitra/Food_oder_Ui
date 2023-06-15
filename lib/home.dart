import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Map<String, dynamic>> name = [
    {
      "Image": "asserts/images/burger1.png",
      "Name": "Burgers",
      "min": "15 min",
    },
    {
      "Image": "asserts/images/sushi.png",
      "Name": "Sushi",
      "min": "30 min",
    },
    {
      "Image": "asserts/images/pizza_pice.png",
      "Name": "Pizza",
      "min": "20 min",
    },
  ];
  List<Map<String, dynamic>> name1 = [
    {
      "Image": "asserts/images/panipuri.png",
      "Name": "Panipuri",
      "min": "10 min",
    },
    {
      "Image": "asserts/images/manchuriam.png",
      "Name": "Manchuriam",
      "min": "25 min",
    },
    {
      "Image": "asserts/images/drink_coldrin.png",
      "Name": "Coldrink",
      "min": "2 min",
    },
  ];
  List<Map<String, dynamic>> name3 = [
    {
      "Image": "asserts/images/hotdog_colorfull.png",
      "Name": "HotDog",
      "min": "10 min",
    },
    {
      "Image": "asserts/images/sandwich.png",
      "Name": "Sandwich",
      "min": "25 min",
    },
    {
      "Image": "asserts/images/tango_drink.png",
      "Name": "Tango Drink",
      "min": "2 min",
    },
  ];
  List<Map<String, dynamic>> nearyou = [
    {
      "Image": "asserts/images/pizza_horizontal.jpg",
      "Name": "NYC Pizza",
    },
    {
      "Image": "asserts/images/burgger_horizontal.jpg",
      "Name": "John's Burgers",
    },
    {
      "Image": "asserts/images/italian dish horizontal.webp",
      "Name": "Italian dish",
    },
    {
      "Image": "asserts/images/panjabi_dish.jpg",
      "Name": "panjabi dish",
    },
  ];
  int selected = 0;
  int selected1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.short_text,
                      size: 30,
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Matt',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Image.asset('asserts/images/male3.png'),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'asserts/images/mcde.jpg',
                                ))),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'asserts/images/franchfrice.jpg',
                                ))),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'asserts/images/mcd_thankyou.jpg',
                                ))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: selected == index
                                ? Colors.orange
                                : Colors.white,
                          ),
                        )),
              ),
              Row(
                children: [
                  Text(
                    'Favorites',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      selected1 = value;
                    });
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 160,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xfff3f3f0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Image.asset(
                                    name[index]['Image'],
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  name[index]['Name'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  name[index]['min'],
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff3f3f0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.asset(
                                  name1[index]['Image'],
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                name1[index]['Name'],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                name1[index]['min'],
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff3f3f0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.asset(
                                  name3[index]['Image'],
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                name3[index]['Name'],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                name3[index]['min'],
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: selected1 == index
                                ? Colors.orange
                                : Colors.white,
                          ),
                        )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Near You',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 13),
                          height: 100,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                nearyou[index]['Image'],
                              ),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                  )),
                              child: like(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          nearyou[index]['Name'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class like extends StatefulWidget {
  const like({Key? key}) : super(key: key);

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: InkResponse(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: selected == true
            ? Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 18,
              )
            : Icon(
                Icons.favorite,
                color: Colors.red,
                size: 18,
              ),
      ),
    );
  }
}
