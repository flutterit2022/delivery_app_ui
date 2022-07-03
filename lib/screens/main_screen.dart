import 'package:delivery_app_ui/screens/delivery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List dataItem = [
    {
      "id": "59 0008 7868 3456",
      "product": "Saatva Mattrases",
      "from": "Kyiv",
      "to": "Dnipro",
      "icon": "saatva.png"
    },
    {
      "id": "59 0008 7868 3456",
      "product": "Nike Sportwear",
      "from": "Kyiv",
      "to": "Odesa",
      "icon": "nike.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Morning, Karen',
                              style: TextStyle(
                                color: Color.fromARGB(255, 197, 202, 233),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.qr_code_scanner,
                          color: Color.fromARGB(255, 197, 202, 233),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Track your parcel',
                    style: TextStyle(
                      color: Color.fromARGB(255, 197, 202, 233),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 10,
                      top: 5,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.indigo[300]!.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Enter track number',
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Recent deliveries',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dataItem.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DeliveryScreen(
                                data: dataItem[index],
                              ),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Card(
                            // color: Colors.indigo.shade100.withOpacity(0.1),
                            elevation: 2,
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                dataItem[index]['id'],
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                dataItem[index]['product'],
                                              ),
                                            ],
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.asset(
                                              dataItem[index]['icon'],
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(dataItem[index]['from']),
                                              Text(dataItem[index]['to']),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const CircleAvatar(
                                                backgroundColor: Colors.indigo,
                                                radius: 8,
                                              ),
                                              Flexible(
                                                flex: 1,
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                  ),
                                                  color: Colors.indigo,
                                                  height: 2,
                                                ),
                                              ),
                                              const CircleAvatar(
                                                backgroundColor: Color.fromARGB(
                                                    255, 197, 202, 233),
                                                radius: 14,
                                                child: Icon(
                                                  Icons.fire_truck,
                                                  size: 16,
                                                ),
                                              ),
                                              Flexible(
                                                flex: 1,
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                  ),
                                                  color: const Color.fromARGB(
                                                      255, 197, 202, 233),
                                                  height: 2,
                                                ),
                                              ),
                                              const CircleAvatar(
                                                backgroundColor: Color.fromARGB(
                                                    255, 197, 202, 233),
                                                radius: 8,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const GNav(
        activeColor: Colors.indigo,
        color: Color.fromARGB(255, 197, 202, 233),
        tabs: [
          GButton(
            icon: CupertinoIcons.house_fill,
            text: 'Home',
            gap: 10,
          ),
          GButton(
            icon: CupertinoIcons.chart_bar_square_fill,
            text: 'Chart',
            gap: 10,
          ),
          GButton(
            icon: CupertinoIcons.bell_fill,
            text: 'Notifications',
            gap: 10,
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
            gap: 10,
          ),
        ],
      ),
    );
  }
}
