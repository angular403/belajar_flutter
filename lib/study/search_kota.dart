import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropdownKota extends StatelessWidget {
  const DropdownKota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Dropwdown Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DropdownSearch<String>(
            mode: Mode.MENU,
            items: [
              "Brazil",
              "Italia",
              "Tunisia",
              'Canada',
              'Indonesia',
              'India'
            ],
            onChanged: print,
            showClearButton: true,
            showSearchBox: true,
            selectedItem: "Brazil"),
      ),
    );
  }
}
