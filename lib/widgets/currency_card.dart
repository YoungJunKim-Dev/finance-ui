import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final int order;
  final String currency;
  final String amount;
  final String code;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xff1f2123);

  const CurrencyCard(
      {super.key,
      required this.order,
      required this.currency,
      required this.amount,
      required this.code,
      required this.icon,
      required this.isInverted});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * (-20)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(90))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currency,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: isInverted ? Colors.black : Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            color: isInverted ? Colors.black : Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                            color: isInverted ? Colors.black : Colors.white,
                            fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-10, 14),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
