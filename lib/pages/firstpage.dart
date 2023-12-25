import 'package:flutter/material.dart';
import 'package:lab5_129/drink.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List<Drink> drinks = [];

  String groupDrink ="คุณยังไม่ได้เลือกเมนูอาหาร";

@override
  void initState() {
    super.initState();
    drinks = Drink.getDrink();
    for (var dr in drinks) {
      print(dr.thName);
    }

    // print(drinks[1].thName);
  }

List<RadioListTile> createDrinkRadioList() {
  List<RadioListTile> myWidgets = [];

  for (var dr in drinks) {

    myWidgets.add(
      RadioListTile(value: dr.value, groupValue: groupDrink, onChanged: (value){
        setState(() {
          groupDrink = value!;
        });
      },title: Text(dr.thName,),
      subtitle: Text(dr.enName),
      secondary: Text(dr.price.toString()),
      ));
    // RadioListTile
  }
  return myWidgets;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio_129"),
      ),
      body: Column(
        children: [
          const Text("Drink"),
          Column(
            children: createDrinkRadioList(),
          ),
          Text(groupDrink)
        ]
      ),
    );
  }
}