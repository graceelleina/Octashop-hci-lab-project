import 'package:flutter/material.dart';
import 'package:learn/pages/home.dart';

void main() => runApp(const DetailScreen(
      image: '',
      name: '',
      currency: '',
      price: '',
    ));

class DetailScreen extends StatelessWidget {
  final String image;
  final String name;
  final String currency;
  final String price;

  const DetailScreen({
    Key? key,
    required this.image,
    required this.name,
    required this.currency,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Detail Page'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image.asset(
                image,
                height: 128,
                width: 128,
              ),
              Text(
                // " 'image'  : " +
                // image +
                "\nGame       : " +
                    name +
                    "\nCurrency  : " +
                    currency +
                    "\nPrice         : " +
                    price,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 80,
              ),
              MyCustomForm(),
            ],
          ),
        ),
      );
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Player ID',
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value.contains(RegExp(r'[a-zA-Z]'))) {
                return 'Please enter ID(numeric)';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Success"),
                          titleTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                          actionsOverflowButtonSpacing: 20,
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen("")),
                                  );
                                },
                                child: Text("Back")),
                          ],
                          content: Text("Purchased successfully"),
                        );
                      });
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

// body: Center(
//           child: Column(
//             children: <Widget>[
//               Text(
//                 "Game       : " +
//                     name +
//                     "\nCurrency  : " +
//                     currency +
//                     "\nPrice         : " +
//                     price,
//                 style: TextStyle(fontSize: 20),
//               ),
//               TextField(
//                 controller: TextEditingController(),
//                 style:
//                     TextStyle(fontSize: 20.0, height: 1.0, color: Colors.black),
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Player ID',
//                     errorText: false ? "Cannot be Empty!" : null),
//               ),
//               TextButton(
//                 onPressed: () {
//                   TextEditingController().text.isEmpty ? true : false;
//                 },
//                 child: Text('Buy'),
//               )
//             ],
//           ),
//         ),