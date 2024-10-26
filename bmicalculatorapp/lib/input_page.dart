import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static const bottomcontainerheight = 80.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        children: [
          // first row two cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(const Color(0xFF1D1F33)),
                ),
                Expanded(
                  child: ReusableCard(const Color(0xFF1D1F33)),
                )
              ],
            ),
          ),
          // single card
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(const Color(0xFF1D1F33)),
                )
              ],
            ),
          ),
          // two cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(const Color(0xFF1D1F33)),
                ),
                Expanded(
                  child: ReusableCard(const Color(0xFF1D1F33)),
                )
              ],
            ),
          ),

          // container like
          Container(
            height: bottomcontainerheight,
            color: Color(0xFFEB1555),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(this.color);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
