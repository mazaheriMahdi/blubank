import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const.dart';

void main() {
  return runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        primary: true,
        leading: Icon(
          Icons.question_mark_outlined,
          color: Colors.blue,
        ),
        title: Text(
          'مبدا',
          style: textStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 90,
                height: 90,
                child: CircleAvatar(
                    foregroundColor: Colors.white,
                    child: Image(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/640px-Starbucks_Corporation_Logo_2011.svg.png"),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text('استارباکس', style: textStyleBigger),
              Text(
                '۱۲۳۴۵۶',
                style: textStyleBig2,
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                " ریال ۵۴,۰۰۰,۰۰۰",
                style: textStyleBold,
              ),
              Text(
                "مبلغ کالا و خدمات",
                style: textStyleBig2,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Color.fromARGB(255, 213, 213, 213),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'پرداخت از',
                      style: textStyleBigger,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 80,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image(
                          image: NetworkImage(
                              "https://nimgam.ir/wp-content/uploads/icon_2st5jG4N7_2021_04_12_09_56_16.png"),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'حساب بلو بانک',
                            style: textStyleBoldBig,
                          ),
                          Text(
                            'قابل برداشت : ۱۷۰۰۰۰۰۰ ریال',
                            style: textStyleBoldBig,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 230, 230, 230),
                ),
              ),
              SizedBox(
                height: 320,
              ),
              CupertinoButton.filled(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 5),
                    child: Text("تایید و پرداخت",
                        style: textStyleBig.apply(color: Colors.white)),
                  ),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
