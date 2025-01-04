import 'package:epicle1/payment_schedule.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import "package:epicle1/RecentTransactions.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Map<String, String>> recentTransactions = [
    {
      "image": "netflix.png",
      "name": "Netflix",
      "date": "07 Feb, 2024 11:45am",
      "buttonTitle": "Subscription",
      "cash": "\$130.65"
    },
    {
      "image": "spotify.png",
      "name": "Spotify",
      "date": "12 Feb, 2024 11:45am",
      "buttonTitle": "Entertainment",
      "cash": "\$10.77"
    },
    {
      "image": "starbucks.png",
      "name": "Starbucks",
      "date": "07 Jul, 2024 09:45am",
      "buttonTitle": "Subscription",
      "cash": "\$130.65"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade800)),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      "Welcome back, Arnold!",
                      style: TextStyle(fontSize: 35),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey.shade600,
                            size: 18,
                          ),
                          style: ButtonStyle(
                              side: WidgetStateProperty.all(
                                  BorderSide(color: Colors.grey.shade300))),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: WidgetStateProperty.all(
                                  const EdgeInsets.all(20.0)),
                              side: WidgetStateProperty.all(
                                  BorderSide(color: Colors.grey.shade300))),
                          child: Text(
                            "Add Widget",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 12),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: Text(
                                              "**** 3765",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 70,
                                    child: ClipPath(
                                      clipper: YellowCardClipper(),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow.shade400,
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                    "assets/images/5968219.png",
                                                    width: 50,
                                                  ),
                                                  Image.asset(
                                                    "assets/images/contactless.png",
                                                    width: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.0,
                                                              vertical: 8.0),
                                                      child: Text(
                                                        "**** 4329",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Colors
                                                          .yellow.shade600,
                                                    ),
                                                    child: const Text(
                                                      "09/24",
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    left: 232,
                                    child: ClipPath(
                                      clipper: AmounClipper(),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3,
                                        width: 267,
                                        padding: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Total balance",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade500),
                                                  ),
                                                  const Text(
                                                    "\$87,325.90",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Available to spend: ",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade500,
                                                            fontSize: 10),
                                                      ),
                                                      const SizedBox(
                                                        width: 2,
                                                      ),
                                                      const Text(
                                                        "\$87,325.78",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      TextButton(
                                                        onPressed: () {},
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                WidgetStateProperty
                                                                    .all(Colors
                                                                        .black),
                                                            padding:
                                                                WidgetStateProperty.all(
                                                                    const EdgeInsets
                                                                        .all(
                                                                        20.0)),
                                                            side: WidgetStateProperty.all(
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .black))),
                                                        child: const Row(
                                                          children: [
                                                            Text(
                                                              "Transfer",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10),
                                                            ),
                                                            SizedBox(
                                                              width: 2,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_upward,
                                                              color:
                                                                  Colors.white,
                                                              size: 12,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {},
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                WidgetStateProperty
                                                                    .all(Colors
                                                                        .black),
                                                            padding:
                                                                WidgetStateProperty.all(
                                                                    const EdgeInsets
                                                                        .all(
                                                                        20.0)),
                                                            side: WidgetStateProperty.all(
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .black))),
                                                        child: const Row(
                                                          children: [
                                                            Text(
                                                              "Request",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10),
                                                            ),
                                                            SizedBox(
                                                              width: 2,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .arrow_downward,
                                                              color:
                                                                  Colors.white,
                                                              size: 12,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                          Icons.more_vert,
                                                          color: Colors.black,
                                                          size: 18,
                                                        ),
                                                        style: ButtonStyle(
                                                            side: WidgetStateProperty
                                                                .all(BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300))),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  top: MediaQuery.of(context).size.height *
                                      0.127,
                                  left: 195,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                    style: ButtonStyle(
                                        elevation:
                                            const WidgetStatePropertyAll(2.0),
                                        shadowColor:
                                            const WidgetStatePropertyAll(
                                                Colors.grey),
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                Colors.white)),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //Recent Transactions
                        Container(
                            width: 500,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Recent Transactions",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        padding: const EdgeInsets.all(10.0),
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.search,
                                          color: Colors.grey.shade600,
                                          size: 15,
                                        ),
                                        style: ButtonStyle(
                                            side: WidgetStateProperty.all(
                                                BorderSide(
                                                    color:
                                                        Colors.grey.shade300)),
                                            maximumSize:
                                                const WidgetStatePropertyAll(
                                                    Size(40, 40))),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            padding: WidgetStateProperty.all(
                                                const EdgeInsets.all(10.0)),
                                            fixedSize: WidgetStateProperty.all(
                                                const Size(70, 20)),
                                            side: WidgetStateProperty.all(
                                                BorderSide(
                                                    color:
                                                        Colors.grey.shade300))),
                                        child: Text(
                                          "View all",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              ListView.builder(
                                  itemCount: recentTransactions.length,
                                  shrinkWrap: true,
                                  itemBuilder: (_, index) {
                                    int lastIndex =
                                        (recentTransactions.length - 1);
                                    if (index != lastIndex) {
                                      return Column(
                                        children: [
                                          TransactionTile(
                                            name: recentTransactions[index]
                                                ["name"],
                                            image: recentTransactions[index]
                                                ["image"],
                                            date: recentTransactions[index]
                                                ["date"],
                                            buttonTitle:
                                                recentTransactions[index]
                                                    ["buttonTitle"],
                                            cash: recentTransactions[index]
                                                ["cash"],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          )
                                        ],
                                      );
                                    } else {
                                      return TransactionTile(
                                        name: recentTransactions[index]["name"],
                                        image: recentTransactions[index]
                                            ["image"],
                                        date: recentTransactions[index]["date"],
                                        buttonTitle: recentTransactions[index]
                                            ["buttonTitle"],
                                        cash: recentTransactions[index]["cash"],
                                      );
                                    }
                                  })
                            ]))
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 510,
                          height: 360,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Column(
                            children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                        Text("Statistics",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold),),
                                        Row(
                                    children: [
                                        TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            padding: WidgetStateProperty.all(
                                                const EdgeInsets.all(10.0)),
                                            fixedSize: WidgetStateProperty.all(
                                                const Size(70, 20)),
                                            side: WidgetStateProperty.all(
                                                BorderSide(
                                                    color:
                                                        Colors.grey.shade300))),                                                    
                                        child: Text(
                                          "Monthly",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      IconButton(
                                        padding: const EdgeInsets.all(10.0),
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.search,
                                          color: Colors.grey.shade600,
                                          size: 15,
                                        ),
                                        style: ButtonStyle(
                                            side: WidgetStateProperty.all(
                                                BorderSide(
                                                    color:
                                                        Colors.grey.shade300)),
                                            maximumSize:
                                                const WidgetStatePropertyAll(
                                                    Size(40, 40))),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),                                      
                                    ],
                                  )
                                    ]
                                ),
                                SizedBox(height: 10,),
                              AspectRatio(
                                aspectRatio: 3.0,
                                child: LineChart(
                                    curve: Curves.bounceIn,
                                    duration: const Duration(seconds: 1),
                                    LineChartData(
                                        titlesData: FlTitlesData(
                                            leftTitles: const AxisTitles(
                                                sideTitles: SideTitles(
                                                    showTitles: false)),
                                            rightTitles: const AxisTitles(
                                                sideTitles: SideTitles(
                                                    showTitles: false)),
                                            topTitles: const AxisTitles(
                                                sideTitles: SideTitles(
                                                    showTitles: false)),
                                            bottomTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                  getTitlesWidget: (value, _) {
                                                    const months = [
                                                      'Jan',
                                                      'Feb',
                                                      'Mar',
                                                      'Apr',
                                                      'May',
                                                    ];
                                                    if (value >= 0 &&
                                                        value < 5) {
                                                      return TextButton(
                                                          child: Text(
                                                            months[
                                                                value.toInt()],
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          onPressed: () {},
                                                          style: TextButton
                                                              .styleFrom(
                                                                  padding: EdgeInsets.zero,
                                                                  minimumSize:Size(70,5)
                                                                  ));
                                                    }
                                                    return const SizedBox
                                                        .shrink();
                                                  },
                                                  interval: 1,
                                                  reservedSize: 50,
                                                  showTitles: true),
                                            )),
                                        gridData: const FlGridData(show: false),
                                        borderData: FlBorderData(show: false),
                                        lineBarsData: [
                                          LineChartBarData(
                                              isCurved: true,
                                              color: Colors.orange,
                                              show: true,
                                              spots: const [
                                                FlSpot(0, 5),
                                                FlSpot(1, 2),
                                                FlSpot(2, 8),
                                                FlSpot(3, 10),
                                                FlSpot(4, 15),
                                              ]),
                                          LineChartBarData(
                                              isCurved: true,
                                              color: Colors.blue,
                                              show: true,
                                              spots: const [
                                                FlSpot(0, 10),
                                                FlSpot(1, 25),
                                                FlSpot(2, 43),
                                                FlSpot(3, 17),
                                                FlSpot(4, 45),
                                              ])
                                        ])),
                              ),
                              Divider(
                                color: Colors.grey.shade300,
                                thickness: 1.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Average Income",
                                        style: TextStyle(
                                            color: Colors.grey.shade300,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      const Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "\$23,008.89",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10),
                                              child: Icon(
                                                Icons.arrow_upward,
                                                color: Colors.green,
                                                size: 12,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Text(
                                                "14%",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 12),
                                              ),
                                            )
                                          ])
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Average Expenses",
                                        style: TextStyle(
                                            color: Colors.grey.shade300,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      const Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "\$23,008.89",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10),
                                              child: Icon(
                                                Icons.arrow_downward,
                                                color: Colors.red,
                                                size: 12,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Text(
                                                "14%",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12),
                                              ),
                                            )
                                          ])
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                width: 250,
                                padding: const EdgeInsets.all(8.0 ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Top Expenses",style: TextStyle(fontWeight: FontWeight.bold),),
                                      IconButton(
                                        icon: Icon(Icons.more_vert,size: 14,),
                                        style: TextButton.styleFrom(
                                            side: BorderSide(color: Colors.grey.shade300),
                                            padding: EdgeInsets.zero,
                                            minimumSize: Size(30,30)      
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
                                            decoration: BoxDecoration(
                                                color: Colors.orange,
                                                borderRadius: BorderRadius.circular(8.0)
                                            ),
                                            child: const Text("Foods & Drinks",style: TextStyle(fontSize: 12,color: Colors.white),),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(8.0)
                                            ),
                                            child: const Text("Shopping",style: TextStyle(fontSize: 12,color: Colors.black),),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(8.0)
                                            ),
                                            child: const Text("Health",style: TextStyle(fontSize: 12,color: Colors.black),),
                                        )
                                    ],
                                  ),
                                  Divider(color: Colors.grey.shade300,),
                                  Container(
                                    alignment: Alignment.center,
                                    width: double.maxFinite,
                                    child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                            children: [
                                                Container(
                                                    child:Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                            Text("Food & Drink",style: TextStyle(color: Colors.grey.shade300,fontSize: 10),),
                                                            const Text("\$743.89",style: TextStyle(color: Colors.black,fontSize: 20),)
                                                    ],
                                                    )
                                                ),
                                                const SizedBox(height: 50,),
                                                Text("Average: \$1390.00",style: TextStyle(color: Colors.grey.shade300,fontSize: 10),),
                                            ],
                                        ),
                                        const SizedBox(width: 10,),
                                        Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                                Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                        height: 30,
                                                        width: 30,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey.shade300,
                                                            borderRadius: BorderRadius.circular(5)
                                                        ),
                                                    ),
                                                    Text("Mon",style:TextStyle(color: Colors.grey.shade300,fontSize: 10))
                                                  ],
                                                ),
                                                Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                        Container(
                                                            padding: const EdgeInsets.all(3),
                                                            decoration:BoxDecoration(
                                                            color:Colors.black,
                                                            borderRadius: BorderRadius.circular(5)
                                                        ),
                                                            child: const Text("\$144.54",style: TextStyle(fontSize: 10,color: Colors.white),),),  
                                                            const SizedBox(height: 3,),                                                  
                                                        Container(
                                                            height: 50,
                                                            width: 30,
                                                            decoration: BoxDecoration(
                                                                color: Colors.orange,
                                                                borderRadius: BorderRadius.circular(5)
                                                            ),
                                                        ),
                                                        Text("Tue",style:TextStyle(color: Colors.grey.shade300,fontSize: 10))
                                                    ],
                                                ),
                                                Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                        height: 60,
                                                        width: 30,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey.shade300,
                                                            borderRadius: BorderRadius.circular(5)
                                                        ),
                                                    ),
                                                    Text("Wed",style:TextStyle(color: Colors.grey.shade300,fontSize: 10))
                                                  ],
                                                ), 
                                                const SizedBox(width: 7,),
                                                Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                        height: 40,
                                                        width: 20,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey.shade300,
                                                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5))
                                                        ),
                                                    ),
                                                    Text("Thu",style:TextStyle(color: Colors.grey.shade300,fontSize: 10))
                                                  ],
                                                ),                                            
                                            ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                                width: 250,
                                padding: EdgeInsets.all(13),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Column(
                                    children: [
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                            const Text("Payment schedule",style: TextStyle(fontWeight: FontWeight.bold),),
                                            IconButton(
                                                icon: const Icon(Icons.more_vert,size: 14,),
                                                style: TextButton.styleFrom(
                                                    side: BorderSide(color: Colors.grey.shade300),
                                                    padding: EdgeInsets.zero,
                                                    minimumSize: const Size(30,30)      
                                                ),
                                                onPressed: () {},
                                            )
                                            ],
                                        ),
                                        const SizedBox(height: 10,),
                                        PaymentSchedule(scheduleDate:"17",isChecked: true,title: "Bills",cash: "344.98",color: Colors.grey.shade100,),
                                        const SizedBox(height: 10,),
                                        PaymentSchedule(scheduleDate:"17",isChecked: false,title: "Electricity",cash: "344.98",color: Colors.grey.shade100,),
                                        const SizedBox(height: 10,),
                                        PaymentSchedule(scheduleDate:"18",isChecked: true,title: "Framer",cash: "344.98",color: Colors.yellow,)
                                    ],
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
        ),
      ),
    );
  }
}

class YellowCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.lineTo(0, 0); //Start here
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, h * 0.65);
    path.quadraticBezierTo(w * 0.85, h * 0.53, w, h * 0.40);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class AmounClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.lineTo(0, 0); //Start here
    path.lineTo(0, h * 0.40);
    path.quadraticBezierTo(w * 0.06, h * 0.53, w * 0, h * 0.65);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
