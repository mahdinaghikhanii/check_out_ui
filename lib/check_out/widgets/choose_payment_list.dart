import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChoosePaymentListWidgets extends StatelessWidget {
  const ChoosePaymentListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 64,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: iconChoosePayment.length,
            itemBuilder: (context, indxe) {
              return Container(
                margin: const EdgeInsets.only(right: 12),
                width: 70,
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF6F6F6),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color:
                            indxe == 0 ? Color(0xFFEB6434) : Color(0xFFF6F6F6),
                      ),
                      borderRadius: BorderRadius.circular(6)),
                ),
                child: Center(
                  child: SvgPicture.asset(iconChoosePayment[indxe]),
                ),
              );
            }));
  }
}

List<String> iconChoosePayment = [
  'assets/credit.svg',
  'assets/apple.svg',
  'assets/paypal.svg',
  'assets/visa.svg'
];
