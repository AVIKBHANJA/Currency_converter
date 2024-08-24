import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Currency Converter"),
          backgroundColor: CupertinoColors.inactiveGray,
        ),
        backgroundColor: CupertinoColors.inactiveGray,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // result.toString(),
                "INR ₹ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                placeholder: "Please enter the amount in INR",
                prefix: const Icon(CupertinoIcons.money_dollar_circle),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(
                height: 20,
              ),
              CupertinoButton(
                // onPressed: () {
                //   setState(() {
                //     result = double.parse(textEditingController.text) * 81.0;
                //   });
                // },
                onPressed: convert,
                color: CupertinoColors.black,

                minSize: 50,
                child: const Text(
                  "Convert",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white),
                ),
                // style: TextButton.styleFrom(
                //   backgroundColor: Colors.black,
                //   foregroundColor: Colors.white,
                //   minimumSize: const Size(double.infinity, 50),
                //   textStyle: const TextStyle(fontWeight: FontWeight.bold),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                // ),
              ),
            ],
          ),
        )));
  }
}
