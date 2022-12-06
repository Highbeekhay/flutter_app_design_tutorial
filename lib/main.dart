import 'package:bottom_bar_matu/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color primaryColour = Colors.red;
    Color secondaryColour = Colors.blueGrey;
    Color textColour = Colors.black12;
    double borderRadius = 5.0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        textSelectionTheme: Theme.of(context)
            .textSelectionTheme
            .copyWith(cursorColor: primaryColour),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          primary: primaryColour,
          brightness: Brightness.light,
          secondary: secondaryColour,
        ),
        iconTheme: IconThemeData(color: primaryColour),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColour),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColour,
            elevation: 0,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              titleTextStyle: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold, color: textColour),
              centerTitle: false,
              color: Colors.white,
              foregroundColor: secondaryColour,
              iconTheme: IconThemeData(color: primaryColour),
            ),
        textTheme: Theme.of(context)
            .textTheme
            .apply(displayColor: textColour, bodyColor: textColour),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.red[700],
        child: BottomBarBubble(
          height: 50,
          selectedIndex: 0,
          bubbleSize: 2,
          color: Colors.white,
          items: [
            BottomBarItem(
              iconData: Ionicons.home_outline,
              iconSize: 24,
            ),
            BottomBarItem(iconData: Icons.person_outline_rounded, iconSize: 24),
            BottomBarItem(iconData: Icons.chat_outlined, iconSize: 24),
            BottomBarItem(
                iconData: Icons.calendar_today_outlined, iconSize: 24),
          ],
          onSelect: (index) {},
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Colors.red[700],
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date:",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "03-12-2022",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Ionicons.search,
                                color: Colors.black,
                                size: 20,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Ionicons.notifications_outline,
                                color: Colors.black,
                                size: 20,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Balance",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "\$ 23,500",
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Ionicons.add,
                                color: Colors.black,
                                size: 12,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Ionicons.remove,
                                color: Colors.black,
                                size: 12,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Real Estate Pack',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                              height: 5,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.home_outlined,
                                    color: Colors.black45,
                                    size: 20,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(
                                      side: BorderSide(color: Colors.red),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Risk",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Row(
                              children: [
                                Icon(Icons.signal_cellular_alt_rounded),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Forecast",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 41,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Cost",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.near_me_rounded,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(25, 35),
                                        shape: CircleBorder(),
                                        padding:
                                            EdgeInsets.fromLTRB(1, 1, 1, 1),
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "4,8%",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 54,
                            ),
                            Row(
                              children: [
                                Text(
                                  '0,32% P.A.',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 238, 201, 198),
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Sustainable Way 23',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                              height: 5,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.my_library_books_rounded,
                                    color: Colors.black45,
                                    size: 20,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(
                                      side: BorderSide(color: Colors.red),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Risk",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Row(
                              children: [
                                Icon(Icons.signal_cellular_alt_rounded),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Forecast",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 41,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Cost",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.near_me_rounded,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(25, 35),
                                        shape: CircleBorder(),
                                        padding:
                                            EdgeInsets.fromLTRB(1, 1, 1, 1),
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "4,2%",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 54,
                            ),
                            Row(
                              children: [
                                Text(
                                  '0,38% P.A.',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 238, 201, 198),
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Family Future',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                              height: 5,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.person_pin_circle_outlined,
                                    color: Colors.black45,
                                    size: 20,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(
                                      side: BorderSide(color: Colors.red),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Risk",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Row(
                              children: [
                                Icon(Icons.signal_cellular_alt_rounded),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Forecast",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 41,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Cost",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.near_me_rounded,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(25, 35),
                                        shape: CircleBorder(),
                                        padding:
                                            EdgeInsets.fromLTRB(1, 1, 1, 1),
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "1,6%",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 54,
                            ),
                            Row(
                              children: [
                                Text(
                                  '0,40% P.A.',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 238, 201, 198),
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Sustainable Pack',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                              height: 5,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.my_library_books_rounded,
                                    color: Colors.black45,
                                    size: 20,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(
                                      side: BorderSide(color: Colors.red),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Risk",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Row(
                              children: [
                                Icon(Icons.signal_cellular_alt_rounded),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Forecast",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 41,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Cost",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.near_me_rounded,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(25, 35),
                                        shape: CircleBorder(),
                                        padding:
                                            EdgeInsets.fromLTRB(1, 1, 1, 1),
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "2,8%",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 54,
                            ),
                            Row(
                              children: [
                                Text(
                                  '0,42% P.A.',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 238, 201, 198),
                    indent: 20,
                    endIndent: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
