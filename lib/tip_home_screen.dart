import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        const SizedBox(height: 80.00),
        Row(
          children: [
            const SizedBox(width: 150.00),
            SvgPicture.asset("images/logo.svg"),
          ],
        ),
        const SizedBox(height: 40),
        Container(
          height: 678,
          width: 400,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Bill",
                  style: TextStyle(
                      fontFamily: "SpaceMono",
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w200),),
                const SizedBox(height: 5),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF3F8FB)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(height: 20, width: 20, child: SvgPicture.asset("images/icon-dollar.svg")),
                        const SizedBox(width: 10),  // Added space between the image and TextField
                        const Expanded(
                          child: TextField(
                            style: TextStyle(fontFamily: "SpaceMono", fontSize: 20),
                            textAlign: TextAlign.right, // Set text alignment to center
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: -18)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Select Tip %",
                  style: TextStyle(
                      fontFamily: "SpaceMono",
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w200),),
                const SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xff00474B),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Align(alignment: Alignment.center, child:
                          Text("5%", style: TextStyle(fontFamily: "SpaceMono", fontSize: 25, color: Colors.white))),
                        ),
                        const SizedBox(width: 30),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xff00474B),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Align(alignment: Alignment.center, child:
                          Text("10%", style: TextStyle(fontFamily: "SpaceMono", fontSize: 25, color: Colors.white))),
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xff00474B),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Align(alignment: Alignment.center, child:
                          Text("15%", style: TextStyle(fontFamily: "SpaceMono", fontSize: 25, color: Colors.white))),
                        ),
                        const SizedBox(width: 30),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xff00474B),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Align(alignment: Alignment.center, child:
                          Text("25%", style: TextStyle(fontFamily: "SpaceMono", fontSize: 25, color: Colors.white))),
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xff00474B),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Align(alignment: Alignment.center, child:
                          Text("15%", style: TextStyle(fontFamily: "SpaceMono", fontSize: 25, color: Colors.white))),
                        ),
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
