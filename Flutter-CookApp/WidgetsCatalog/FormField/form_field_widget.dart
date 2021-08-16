import 'package:flutter/material.dart';

class PizzaToppingsSelector extends StatelessWidget {
  final GlobalKey<FormFieldState<List<PizzaTopping>>> _formFieldKey =
      GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormField'),
      ),
      body: Column(
        children: <Widget>[
          FormField<List<PizzaTopping>>(
            key: _formFieldKey,
            initialValue: List(),
            builder: (state) {
              return Wrap(
                spacing: 5,
                children: PizzaTopping.allPizzaToppings.map((topping) {
                  return ChoiceChip(
                    label: Text(topping.name),
                    selected: state.value.contains(topping),
                    onSelected: state.value.length < 2 ||
                            state.value.contains(topping)
                        ? (selected) {
                            List<PizzaTopping> newValue = List.of(state.value);
                            if (selected) {
                              newValue.add(topping);
                            } else {
                              newValue.remove(topping);
                            }
                            state.didChange(newValue);
                          }
                        : null,
                  );
                }).toList(),
              );
            },
          ),
          RaisedButton(
            child: Text('Get toppings'),
            onPressed: () => print(_formFieldKey.currentState?.value),
          ),
        ],
      ),
    );
  }
}

class PizzaTopping {
  int id;
  String name;

  PizzaTopping({this.id, this.name});

  String get getName => name;

  int get getId => id;

  static List get allPizzaToppings => [
        PizzaTopping(id: 1, name: 'Margarita'),
        PizzaTopping(id: 2, name: 'Union'),
        PizzaTopping(id: 3, name: 'Bstrmas'),
        PizzaTopping(id: 4, name: 'Chiss')
      ];
}
