import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum ProductTypeEnum { Female, Male }

class VolunteerScreen extends StatefulWidget {
  const VolunteerScreen({super.key});

  @override
  State<VolunteerScreen> createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {

  ProductTypeEnum? _productTypeEnum;
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController national = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController dna = TextEditingController();
  TextEditingController clothes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffCDFFD8), Color(0xff94B9FF)],
                stops: [0.2, 0.6],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Fill in the data',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Name:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    controller: name,
                    decoration: const InputDecoration(
                      hintText: "Enter your name",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'name must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Phone:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phone,
                    decoration: const InputDecoration(
                      hintText: "Enter your phone",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'phone must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "National:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: national,
                    decoration: const InputDecoration(
                      hintText: "Enter your national",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'national must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Child name:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    controller: name,
                    decoration: const InputDecoration(
                      hintText: "Enter your child name",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'child name must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Age:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: age,
                    decoration: const InputDecoration(
                      hintText: "Enter child age",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'age must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 30),
                      child: const Text(
                        "Gender:",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade200
                              ),
                              child: RadioListTile<ProductTypeEnum>(
                                contentPadding: const EdgeInsets.all(0.0),
                                title: Text(ProductTypeEnum.Female.name),
                                value: ProductTypeEnum.Female,
                                groupValue: _productTypeEnum,
                                onChanged: (value) {
                                  setState(() {
                                    _productTypeEnum = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right:30),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade200
                              ),
                              child: RadioListTile<ProductTypeEnum>(
                                contentPadding: const EdgeInsets.all(0.0),
                                title: Text(ProductTypeEnum.Male.name),
                                value: ProductTypeEnum.Male,
                                groupValue: _productTypeEnum,
                                onChanged: (value) {
                                  setState(() {
                                    _productTypeEnum = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Child height:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: height,
                    decoration: const InputDecoration(
                      hintText: "Enter child height",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'child height must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Child location:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: location,
                    decoration: const InputDecoration(
                      hintText: "Enter child location",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'child location must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Child DNA:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: dna,
                    decoration: const InputDecoration(
                      hintText: "Enter child dna",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'child dna must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Child clothes:",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey.shade400)),
                  padding: const EdgeInsets.all(8),
                  margin:
                  const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: clothes,
                    decoration: const InputDecoration(
                      hintText: "Enter child clothes",
                      hintStyle: TextStyle(fontSize: 22, color: Colors.black26),
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'child clothes must be not empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    minimumSize: const Size(250, 50),
                    padding: const EdgeInsets.all(12),
                    side: const BorderSide(
                        style: BorderStyle.solid, color: Colors.black12),
                    backgroundColor: Colors.orange.shade300,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
