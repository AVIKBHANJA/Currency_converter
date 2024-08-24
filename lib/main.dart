import 'package:flutter/material.dart';
import 'currency_converter_material_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }

}
// import 'package:currency_converter/currency_converter_cupertino_page.dart';
// import 'package:flutter/cupertino.dart';
// // }
// void main() {
//   runApp(const MyCupertinoApp());
// }
// class MyCupertinoApp extends StatelessWidget {
//   const MyCupertinoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       home: CurrencyConverterCupertinoPage(),
//     );
//   }
// }
