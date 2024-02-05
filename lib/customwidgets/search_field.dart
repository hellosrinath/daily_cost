import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class Country {
  final String name;
  final String value;

  Country({required this.name, required this.value});
}

class SearchFieldSample extends StatefulWidget {
  const SearchFieldSample({Key? key}) : super(key: key);

  @override
  State<SearchFieldSample> createState() => _SearchFieldSampleState();
}

class _SearchFieldSampleState extends State<SearchFieldSample> {
  int suggestionsCount = 12;
  final focus = FocusNode();
  var suggestions = <Country>[];

  @override
  void initState() {
    suggestions.add(Country(name: 'name1', value: 'value1'));
    suggestions.add(Country(name: 'name2', value: 'value2'));
    suggestions.add(Country(name: 'name3', value: 'value3'));
    suggestions.add(Country(name: 'name4', value: 'value4'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic sample Demo'),
      ),
      body: searchFieWithDropdownMenu(),
    );
  }

  SearchField<Country> searchFieWithDropdownMenu() {
    return SearchField<Country>(
      suggestions: suggestions
          .map(
            (e) => SearchFieldListItem<Country>(
              e.name,
              item: e,
              // Use child to show Custom Widgets in the suggestions
              // defaults to Text widget
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(e.name),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
