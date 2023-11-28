import 'package:flutter/material.dart';
import 'package:tip_calc/widgets/Header.dart';
import 'package:tip_calc/widgets/ResetButton.dart';
import 'package:tip_calc/widgets/Subheadings.dart';
import 'package:tip_calc/widgets/percentage_button.dart';
import 'package:tip_calc/widgets/subheadings_collumn.dart';
import 'package:tip_calc/widgets/text_input.dart';
import 'package:tip_calc/widgets/tip_amounts.dart';

class TipHome extends StatefulWidget {
  const TipHome({Key? key}) : super(key: key);

  @override
  State<TipHome> createState() => _TipHomeState();
}

class _TipHomeState extends State<TipHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffC5E4E7),
      body: MainContent(),
    );
  }
}

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 70.00),
        const Header(),
        const SizedBox(height: 40),
        Container(
          height: 687,
          width: 400,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Subheading(text: "Bill"),
                const SizedBox(height: 5),
                const TextInput(svgImage: "icon-dollar"),
                const SizedBox(height: 15),
                const Subheading(text: "Select tip %"),
                const SizedBox(height: 15),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         PercentageButton(text: "5%"),
                         SizedBox(width: 30),
                         PercentageButton(text: "10%"),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         PercentageButton(text: "15%"),
                         SizedBox(width: 30),
                         PercentageButton(text: "25%"),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const PercentageButton(text: "50%"),
                        const SizedBox(width: 30),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xffF3F8FB),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Align(alignment: Alignment.center, child:
                          Text("Custom", style: TextStyle(fontFamily: "SpaceMono", fontSize: 25, color: Color(0xff5A7974)))),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 15),
                const Subheading(text: "Number of People"),
                const SizedBox(height: 5),
                const TextInput(svgImage: "icon-person"),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(color: const Color(0xff00474B), borderRadius: BorderRadius.circular(20)),
                  height: 240,
                  width: 500,
                  child: const Column(
                    children: [
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Padding(
                             padding: EdgeInsets.only(top: 30),
                             child: SubheadingsColumn()
                           ),
                          Padding(
                            padding: EdgeInsets.only(left : 30, top: 30),
                            child: TipAmounts(tipAmountPerPerson: "4.27", totalPerPerson: "32.79"),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      ResetButton()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
