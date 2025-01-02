import 'package:flutter/material.dart';
import "package:epicle1/RecentTransactions.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Map<String, String>> recentTransactions = [
    {
      "image":"netflix.png",
      "name":"Netflix",
      "date":"07 Feb, 2024 11:45am",
      "buttonTitle":"Subscription",
      "cash":"\$130.65"
    },
    {
      "image":"spotify.png",
      "name":"Spotify",
      "date":"12 Feb, 2024 11:45am",
      "buttonTitle":"Entertainment",
      "cash":"\$10.77"
    },
    {
      "image":"starbucks.png",
      "name":"Starbucks",
      "date":"07 Jul, 2024 09:45am",
      "buttonTitle":"Subscription",
      "cash":"\$130.65"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade800)
      ),
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
                    const Text("Welcome back, Arnold!",style: TextStyle(fontSize: 35),),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey.shade600,size: 18,),
                          style: ButtonStyle(side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade300))),),
                        const SizedBox(width: 10,),
                        TextButton(onPressed: (){},
                            style: ButtonStyle(
                          padding: MaterialStateProperty.all(const EdgeInsets.all(20.0)),
                            side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade300))),
                          child: Text("Add Widget",style: TextStyle(color: Colors.grey.shade600,fontSize: 12),),)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20.0,),
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
                                    height: MediaQuery.of(context).size.height * 0.3,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(),
                                        Padding(padding:EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),
                                            child: Text("**** 3765",style: TextStyle(color: Colors.white,fontSize: 10,),))
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 70,
                                    child: ClipPath(
                                      clipper: YellowCardClipper(),
                                      child: Container(
                                        height: MediaQuery.of(context).size.height * 0.3,
                                        width: 130,
                                        decoration: BoxDecoration(
                                        color: Colors.yellow.shade400,
                                        borderRadius: BorderRadius.circular(20.0)
                                                                ),
                                                                child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset("assets/images/5968219.png",width: 50,),
                                              Image.asset("assets/images/contactless.png",width: 20,),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Padding(padding:EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),
                                                  child: Text("**** 4329",style: TextStyle(
                                                    fontSize: 10,
                                                      color: Colors.black,fontWeight: FontWeight.bold),)),
                                              Container(
                                                padding: const EdgeInsets.all(4),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                    color: Colors.yellow.shade600,
                                                ),
                                                child: const Text("09/24",style: TextStyle(
                                                  fontSize: 10
                                                ),),
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
                                            height: MediaQuery.of(context).size.height * 0.3,
                                            width: 267,
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0),
                                                            ),
                                                            child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Total balance",style: TextStyle(color: Colors.grey.shade500),),
                                            const Text("\$87,325.90",style: TextStyle(color: Colors.black,fontSize: 30,
                                                fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("Available to spend: ",style: TextStyle(color: Colors.grey.shade500,fontSize: 10),),
                                                const SizedBox(width: 2,),
                                                const Text("\$87,325.78",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                            const SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                TextButton(onPressed: (){},
                                                  style: ButtonStyle(
                                                      backgroundColor: MaterialStateProperty.all(Colors.black),
                                                      padding: MaterialStateProperty.all(const EdgeInsets.all(20.0)),
                                                      side: MaterialStateProperty.all(const BorderSide(color: Colors.black))),
                                                  child: const Row(children: [
                                                    Text("Transfer",style: TextStyle(color: Colors.white,fontSize: 10),),
                                                    SizedBox(width: 2,),
                                                    Icon(Icons.arrow_upward,color: Colors.white,size: 12,)
                                                  ],),),
                                                TextButton(onPressed: (){},
                                                  style: ButtonStyle(
                                                      backgroundColor: MaterialStateProperty.all(Colors.black),
                                                      padding: MaterialStateProperty.all(const EdgeInsets.all(20.0)),
                                                      side: MaterialStateProperty.all(const BorderSide(color: Colors.black))),
                                                  child: const Row(children: [
                                                    Text("Request",style: TextStyle(color: Colors.white,fontSize: 10),),
                                                    SizedBox(width: 2,),
                                                    Icon(Icons.arrow_downward,color: Colors.white,size: 12,)
                                                  ],),),
                                                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.black,size: 18,),
                                                  style: ButtonStyle(side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade300))),)
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
                                top: MediaQuery.of(context).size.height * 0.127,
                                left: 195,
                                child: IconButton(
                                  onPressed: (){}, icon: const Icon(Icons.add),style: ButtonStyle(
                                  elevation: const MaterialStatePropertyAll(2.0),
                                  shadowColor: const MaterialStatePropertyAll(Colors.grey),
                                  backgroundColor: MaterialStateProperty.all(Colors.white)
                                ),),
                              )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        //Recent Transactions
                        Container(
                          width: 500,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Column(
                            children:[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                const Text("Recent Transactions",style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    IconButton(
                                      padding: const EdgeInsets.all(10.0),
                                      constraints: const BoxConstraints(),
                                      onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey.shade600,size: 15,),
                                      style: ButtonStyle(
                                          side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade300)),
                                      maximumSize: const MaterialStatePropertyAll(Size(40,40))),),
                                    const SizedBox(width: 5,),
                                    TextButton(onPressed: (){},
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                                          fixedSize: MaterialStateProperty.all(const Size(70,20)),
                                          side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade300))),
                                      child: Text("View all",style: TextStyle(color: Colors.grey.shade600,fontSize: 12),),)
                                  ],
                                )
                              ],),
                              const SizedBox(height:10),
                              ListView.builder(
                                itemCount: recentTransactions.length,
                                  shrinkWrap: true,
                                  itemBuilder: (_,index){
                                  int lastIndex = (recentTransactions.length - 1);
                                  if(index != lastIndex){
                                    return Column(
                                      children: [
                                        TransactionTile(name: recentTransactions[index]["name"],
                                          image: recentTransactions[index]["image"],
                                          date: recentTransactions[index]["date"],
                                          buttonTitle: recentTransactions[index]["buttonTitle"],
                                          cash: recentTransactions[index]["cash"],
                                        ),
                                        const SizedBox(height: 20,)
                                      ],
                                    );
                                  }else{
                                    return TransactionTile(name: recentTransactions[index]["name"],
                                      image: recentTransactions[index]["image"],
                                      date: recentTransactions[index]["date"],
                                      buttonTitle: recentTransactions[index]["buttonTitle"],
                                      cash: recentTransactions[index]["cash"],
                                    );
                                  }
                              })
                            ]
                          )
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            width: 500,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Colors.white, borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Column(
                                children:[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Statictics",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Row(
                                        children: [
                                          TextButton(onPressed: (){},
                                            style: ButtonStyle(
                                                padding: MaterialStateProperty.all(const EdgeInsets.all(7.0)),
                                                fixedSize: MaterialStateProperty.all(const Size(50,20)),
                                                side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade300))),
                                            child: Text("Monthly",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),),),
                                          const SizedBox(width:5),
                                          IconButton(
                                            padding: const EdgeInsets.all(10.0),
                                            constraints: const BoxConstraints(),
                                            onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey.shade600,size: 12,),
                                            style: ButtonStyle(side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade300)),
                                                maximumSize: const MaterialStatePropertyAll(Size(40,40))),),
                                        ],
                                      )
                                    ],),
                                  const SizedBox(height:10),
                                  ListView.builder(
                                      itemCount: recentTransactions.length,
                                      shrinkWrap: true,
                                      itemBuilder: (_,index){
                                        int lastIndex = (recentTransactions.length - 1);
                                        if(index != lastIndex){
                                          return Column(
                                            children: [
                                              TransactionTile(name: recentTransactions[index]["name"],
                                                image: recentTransactions[index]["image"],
                                                date: recentTransactions[index]["date"],
                                                buttonTitle: recentTransactions[index]["buttonTitle"],
                                                cash: recentTransactions[index]["cash"],
                                              ),
                                              const SizedBox(height: 20,)
                                            ],
                                          );
                                        }else{
                                          return TransactionTile(name: recentTransactions[index]["name"],
                                            image: recentTransactions[index]["image"],
                                            date: recentTransactions[index]["date"],
                                            buttonTitle: recentTransactions[index]["buttonTitle"],
                                            cash: recentTransactions[index]["cash"],
                                          );
                                        }
                                      })
                                ]
                            )
                        )
                      ],
                    )
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

class YellowCardClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.lineTo(0, 0);//Start here
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, h*0.65);
    path.quadraticBezierTo(w*0.85, h*0.53, w, h*0.40);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class AmounClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.lineTo(0, 0);//Start here
    path.lineTo(0, h*0.40);
    path.quadraticBezierTo(w*0.06, h*0.53, w*0, h*0.65);
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
