import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Travel App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF4FC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xFF9BDDFA),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(
                                'https://pngset.com/images/apple-unveils-new-emoji-face-mask-memoji-characters-hypebeast-apple-memoji-head-clothing-apparel-toy-transparent-png-2663192.png'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Welcome, ✋'),
                            Text(
                              'Nola Tjan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const CustomButton(
                      icon: Icon(Icons.notifications_none_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Explore and Find \nyour Best Journey',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search_rounded),
                          labelText: 'Search destination',
                          labelStyle: const TextStyle(color: Color(0XFFB4B5B8)),
                          filled: true,
                          fillColor: const Color(0xFFEAEBEC),
                          contentPadding: const EdgeInsets.all(0),
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFEAEBEC)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const CustomButton(
                      icon: Icon(Icons.format_list_bulleted_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 40,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        FilterTab(
                          title: 'All',
                          isSelected: true,
                        ),
                        SizedBox(width: 5),
                        FilterTab(
                          title: 'Nearby',
                          isSelected: false,
                        ),
                        SizedBox(width: 5),
                        FilterTab(
                          title: 'Popular',
                          isSelected: false,
                        ),
                        SizedBox(width: 5),
                        FilterTab(
                          title: 'Most Viewed',
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Popular Destination',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) => Padding(
                          padding: index < 4
                              ? const EdgeInsets.only(
                                  left: 3, top: 3, right: 15.0, bottom: 3)
                              : const EdgeInsets.only(
                                  left: 3, top: 3, bottom: 3),
                          child: Container(
                            width: 165,
                            height: 240,
                            decoration: BoxDecoration(
                              color: const Color(0XFFFEFEFE),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xFFF3F3F3),
                                  blurRadius: 5,
                                  spreadRadius: 3,
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://wallpaperaccess.com/full/2117973.jpg',
                                    fit: BoxFit.cover,
                                    height: 165,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Jatibarang',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.pin_drop,
                                              size: 15,
                                              color: Color(0xFF007AFF),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              'Semarang, Indonesia',
                                              style: TextStyle(
                                                fontSize: 11,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const Icon(
                                      Icons.favorite,
                                      size: 15,
                                      color: Colors.red,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'More to Explore',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) => Padding(
                          padding: index < 4
                              ? const EdgeInsets.only(
                                  left: 3, top: 3, right: 15.0, bottom: 3)
                              : const EdgeInsets.only(
                                  left: 3, top: 3, bottom: 3),
                          child: Container(
                            width: 250,
                            height: 240,
                            decoration: BoxDecoration(
                              color: const Color(0XFFFEFEFE),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xFFF3F3F3),
                                  blurRadius: 5,
                                  spreadRadius: 3,
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://wallpaperaccess.com/full/2117973.jpg',
                                    fit: BoxFit.cover,
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Jatibarang',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.pin_drop,
                                              size: 15,
                                              color: Color(0xFF007AFF),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              'Semarang, Indonesia',
                                              style: TextStyle(
                                                fontSize: 11,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: BottomAppBar(
          child: Container(
            color: Colors.white,
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.airplane_ticket,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 30,
                      height: 5,
                      color: Colors.transparent,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.favorite,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 30,
                      height: 5,
                      color: Colors.transparent,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.message_outlined,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 30,
                      height: 5,
                      color: Colors.transparent,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person,
                      size: 30,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 30,
                      height: 5,
                      color: Colors.transparent,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FilterTab extends StatelessWidget {
  final String title;
  final bool isSelected;

  const FilterTab({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isSelected ? 30 : 10,
          vertical: 10,
        ),
        child: Text(
          title,
          style: TextStyle(
            color:
                isSelected ? const Color(0xFF518CC7) : const Color(0XFFB4B5B8),
            fontWeight: FontWeight.bold,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? const Color(0xFFD1EEFF) : Colors.transparent,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Icon icon;

  const CustomButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0xFFC4E9FE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: icon,
    );
  }
}
