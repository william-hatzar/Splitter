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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffC5E4E7),
      body: MainContent(),
    );
  }
}

class MainContent extends StatefulWidget {
  double tipAmountPerPerson = 0;
  double totalPerPerson = 0;
  TextEditingController billTextInput = TextEditingController();
  TextEditingController peopleTextInput = TextEditingController();
  TextEditingController customPercentageController = TextEditingController(); // Add controller

  MainContent({Key? key}) : super(key: key);

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  double selectedTipPercentage = 0;

  void calculateBill(String billValue, String peopleValue) {
    final double billPrice = double.tryParse(billValue) ?? 0.0;
    final double amountOfPeople = double.tryParse(peopleValue) ?? 1.0;

    if (billPrice > 0 && amountOfPeople > 0) {
      setState(() {
        widget.totalPerPerson = billPrice / amountOfPeople;
      });
      calculateTip(selectedTipPercentage, billValue, peopleValue);
    }
  }

  void calculateTip(double tipPercentage, String billValue, String peopleValue) {
    final double billPrice = double.tryParse(billValue) ?? 0.0;
    final double amountOfPeople = double.tryParse(peopleValue) ?? 1.0;

    if (billPrice > 0 && amountOfPeople > 0) {
      setState(() {
        selectedTipPercentage = tipPercentage;
        if (tipPercentage == 0.0) {
          // Custom percentage
          widget.tipAmountPerPerson = (billPrice * tipPercentage) / amountOfPeople;
        } else {
          // Other percentages
          widget.tipAmountPerPerson = (billPrice * tipPercentage) / amountOfPeople;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 70.00),
          const Header(),
          const SizedBox(height: 40),
          Container(
            width: 400,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Subheading(text: "Bill"),
                  const SizedBox(height: 5),
                  TextInput(
                    svgImage: "icon-dollar",
                    textEditingController: widget.billTextInput,
                    onSubmitted: (String value) {
                      calculateBill(value, widget.peopleTextInput.text);
                    },
                  ),
                  const SizedBox(height: 15),
                  const Subheading(text: "Select tip %"),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PercentageButton(
                            text: "5%",
                            onTap: () => calculateTip(0.05, widget.billTextInput.text, widget.peopleTextInput.text),
                          ),
                          SizedBox(width: 30),
                          PercentageButton(
                            text: "10%",
                            onTap: () => calculateTip(0.1, widget.billTextInput.text, widget.peopleTextInput.text),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PercentageButton(
                            text: "15%",
                            onTap: () => calculateTip(0.15, widget.billTextInput.text, widget.peopleTextInput.text),
                          ),
                          SizedBox(width: 30),
                          PercentageButton(
                            text: "25%",
                            onTap: () => calculateTip(0.25, widget.billTextInput.text, widget.peopleTextInput.text),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PercentageButton(
                            text: "50%",
                            onTap: () => calculateTip(0.5, widget.billTextInput.text, widget.peopleTextInput.text),
                          ),
                          const SizedBox(width: 30),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: const Color(0xffF3F8FB),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                controller: widget.customPercentageController,
                                style: TextStyle(fontFamily: "SpaceMono", fontSize: 30),
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(),
                                  hintText: "Custom",
                                ),
                                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                onSubmitted: (String value) {
                                  double customPercentage = double.tryParse(value) ?? 0.0;
                                  calculateTip(customPercentage / 100, widget.billTextInput.text, widget.peopleTextInput.text);
                                },
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Subheading(text: "Number of People"),
                  const SizedBox(height: 5),
                  TextInput(
                    svgImage: "icon-person",
                    textEditingController: widget.peopleTextInput,
                    onSubmitted: (String value) {
                      calculateBill(widget.billTextInput.text, value);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff00474B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 240,
                    width: 500,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: SubheadingsColumn(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 30),
                              child: TipAmounts(
                                tipAmountPerPerson: widget.tipAmountPerPerson,
                                totalPerPerson: widget.totalPerPerson + widget.tipAmountPerPerson,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        ResetButton(
                          onReset: () {
                            setState(() {
                              widget.totalPerPerson = 0;
                              widget.tipAmountPerPerson = 0;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
