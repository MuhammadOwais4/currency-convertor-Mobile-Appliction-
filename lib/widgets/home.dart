import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
    TextEditingController controller = TextEditingController();
    double result = 0;
  @override
  Widget build(BuildContext context) {

    var myBorderStyles = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.purple,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Convertor"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$result PKR only",
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              // controller: TextEditingController(),
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Your Amount",
                focusedBorder: myBorderStyles,
                enabledBorder: myBorderStyles,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[700],
                  elevation: 8,
                  minimumSize: const Size(double.infinity, 50)),
              onPressed: () {
                // debugPrint("Heloooooooo");
                // print(double.parse(controller.text) * 278);
                  result = double.parse(controller.text) * 278;
                setState(() {
                });
              },
              label: const Text(
                "Convert",
              ),
              icon: const Icon(Icons.money),
            ),
          ],
        ),
      ),
    );
  }
}
