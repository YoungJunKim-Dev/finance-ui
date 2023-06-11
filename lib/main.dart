import 'package:flutter/material.dart';
import 'widgets/button.dart';
import 'widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Hey, Selena",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(color: Colors.white.withOpacity(0.8)),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Total Balance",
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                '\$5 194 382',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                      title: "Transfer",
                      backgroundColor: Color(0xfff2b33a),
                      fontColor: Color(0xff000000)),
                  Button(
                      title: "Require",
                      backgroundColor: Color(0xff1f2123),
                      fontColor: Color(0xffffffff)),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                  Text(
                    "view All",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  CurrencyCard(
                    bgColor: Color(0xff000000),
                    currency: "Euro",
                    amount: "6 428",
                  ),
                  // CurrencyCard(
                  //   bgColor: Color(0xffffffff),
                  //   currency: "Dollar",
                  //   amount: "55 622",
                  // ),
                  // CurrencyCard(
                  //   bgColor: Color(0xff000000),
                  //   currency: "Rupee",
                  //   amount: "28 981",
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
