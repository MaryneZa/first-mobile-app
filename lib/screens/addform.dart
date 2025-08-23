import 'package:first_app/main.dart';
import 'package:first_app/models/person.dart';
import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>(); // submit form
  String _name = '';
  int _age = 20;
  Job _job = Job.police;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form Data"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: InputDecoration(
                    label: Text("Name", style: TextStyle(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please fill your name";
                    }
                  },
                  onSaved: (value) {
                    _name = value!; //value cannot be null
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Age", style: TextStyle(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please fill your age";
                    }
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                ),
                SizedBox(height: 20),
                DropdownButtonFormField(
                  value: _job,
                  decoration: InputDecoration(
                    label: Text("Occupation", style: TextStyle(fontSize: 20)),
                  ),
                  items: Job.values.map((key) {
                    return DropdownMenuItem(value: key, child: Text(key.title));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                SizedBox(height: 20),

                FilledButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                    _formKey.currentState!.save();
                    data.add(Person(name: _name, age: _age, job: _job));
                    _formKey.currentState!.reset();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (ctx) => MyWidget()),
                    );
                  },
                  style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text("Save", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
