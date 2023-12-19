import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/choose_payment_list.dart';

class CheckOutPages extends StatelessWidget {
  const CheckOutPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 65,
          margin: const EdgeInsets.only(left: 40, right: 40),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Make Payment",
                      style: GoogleFonts.getFont('Roboto Condensed').copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 26,
                    )
                  ],
                ),
              )),
        ),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 55.95,
                  height: 55.95,
                  padding: const EdgeInsets.only(left: 8),
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF6F6F6),
                    shape: OvalBorder(),
                  ),
                  child: const Center(child: Icon(Icons.arrow_back_ios)),
                ),
                Text(
                  "Checkout",
                  style: GoogleFonts.getFont('Roboto Condensed')
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Container(
                  width: 55.95,
                  height: 55.95,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF6F6F6),
                    shape: OvalBorder(),
                  ),
                  child: const Center(
                    child: Icon(CupertinoIcons.cart),
                  ),
                ),
              ],
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: titleAndMoreIcon("Master card")),
            Image.asset('assets/creadit.png',
                fit: BoxFit.cover, width: MediaQuery.sizeOf(context).width),
            const SizedBox(height: 24),
            titleAndMoreIcon("Master card"),
            const SizedBox(height: 28),
            const ChoosePaymentListWidgets(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28),
              child: titleAndMoreIcon("Promo Or voucher"),
            ),
            applyPromoOrVoucherInput(context),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Total",
                    style: GoogleFonts.getFont('Roboto Condensed').copyWith(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "\$2270",
                    style: GoogleFonts.getFont('Roboto Condensed').copyWith(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}

Widget titleAndMoreIcon(String title) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Text(
      title,
      style: GoogleFonts.getFont('Roboto Condensed').copyWith(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    ),
    const Icon(Icons.more_horiz, size: 30)
  ]);
}

Widget applyPromoOrVoucherInput(context) {
  return Container(
    width: MediaQuery.sizeOf(context).width,
    height: 83,
    padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 27),
    decoration: ShapeDecoration(
      color: const Color(0xFFF6F6F6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Add your code",
          style: GoogleFonts.getFont('Roboto Condensed').copyWith(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        Container(
          width: 70,
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFEB6434)),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Center(
            child: Text(
              "Fun10",
              style: GoogleFonts.getFont('Roboto Condensed').copyWith(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
