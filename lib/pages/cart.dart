import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/rendering.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  String? name;
  double? number;
  String? selectedNameDoc;

  //controller

  var updateName = TextEditingController();
  var updateNumber = TextEditingController();

  //clearning the text in input file
  clearTextInput() {

    updateName.clear();
    updateNumber.clear();
  }

  //helper functions(getter function)
  getName(name) {
    this.name = name;
  }

  getNumber(number) {
    this.number = double.parse(number);
  }

  final _formKey = GlobalKey<FormState>();
  bool _validate = false;
  //creating data
  createData() {
    DocumentReference documentReference =
    FirebaseFirestore.instance.collection('People').doc();

    //creating a map
    Map<String, dynamic> peopleInfo = {
      "Name": name,
      "Number": number,

    };
    documentReference
        .set(peopleInfo)
        .whenComplete(() => print("$name created"));
  }



  CollectionReference documentReference =
  FirebaseFirestore.instance.collection("People");

  //updating data
  // updateData1() {
  //   documentReference
  //       .doc(docIdOfSelectedName)
  //       .update({
  //     "studentName": updateName.text,
  //     "studentID": updateId.text,
  //     "studentProgramme": updateProgramme.text,
  //     "studentGpa": updateGpa.text
  //   })
  //       .then((value) => print("User Updated"))
  //       .catchError((error) => print("Failed to update user: $error"));
  // }

  //deleting data

  // Future<DocumentReference> deleteUser() async {
  //   final userRef = FirebaseFirestore.instance.collection("MyStudents");
  //   userRef.get().then((QuerySnapshot snapshot) {
  //     snapshot.docs.forEach((doc) {
  //       print(doc.data()['studentName']);
  //       if (selectedNameDoc == doc.data()['studentName']) {
  //         userRef
  //             .doc(doc.id)
  //             .delete()
  //             .then((value) => print("User Deleted"))
  //             .catchError((error) => print("Failed to delete user: $error"));
  //       }
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radiation Corporation'),backgroundColor: Colors.teal,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: updateName,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Name',

                          fillColor: Colors.white70,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blue, width: 2.0))),
                      onChanged: (String name) {
                        getName(name);
                      },
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(16.0),
                  //   child: TextFormField(
                  //     keyboardType: TextInputType.number,
                  //     controller: updateId,
                  //     decoration: InputDecoration(
                  //         labelText: 'Student ID',
                  //
                  //         fillColor: Colors.white70,
                  //         focusedBorder: OutlineInputBorder(
                  //             borderSide:
                  //             BorderSide(color: Colors.blue, width: 2.0))),
                  //     onChanged: (String id) {
                  //       getStudentId(id);
                  //     },
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.all(16.0),
                  //   child: TextFormField(
                  //     keyboardType: TextInputType.text,
                  //     controller: updateProgramme,
                  //     decoration: InputDecoration(
                  //         labelText: 'Study Programme',
                  //
                  //         fillColor: Colors.white70,
                  //         focusedBorder: OutlineInputBorder(
                  //             borderSide:
                  //             BorderSide(color: Colors.blue, width: 2.0))),
                  //     onChanged: (String prog) {
                  //       getStudentProgramme(prog);
                  //     },
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: updateNumber,
                      decoration: InputDecoration(
                          labelText: 'Number',

                          fillColor: Colors.white70,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blue, width: 2.0))),
                      onChanged: (String num) {
                        getNumber(num);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text(
                    'Create',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      textStyle: TextStyle(
                        fontSize: 10,
                      )),
                  onPressed: () {
                    clearTextInput();
                    setState(() {
                      // if(updateName.text.isEmpty || updateNumber.text.isEmpty ){
                      //   _validate = true;
                      // }else{
                      //   _validate = false;
                      // }

                    });
                    createData();

                  },
                ),
                // ElevatedButton(
                //   child: Text(
                //     'Update',
                //     style: TextStyle(color: Colors.white),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //       primary: Colors.orange,
                //       onPrimary: Colors.blueGrey,
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10)),
                //       padding: EdgeInsets.all(10),
                //       textStyle: TextStyle(
                //         fontSize: 10,
                //       )),
                //   onPressed: () {
                //
                //     updateData1();
                //
                //     clearTextInput();
                //   },
                // ),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("People")
                    .snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  } else if (!snapshot.hasData) {
                    return Container(
                      child: Text('No data'),
                    );
                  }
                  // return CircularProgressIndicator();
                  else {
                    return Center(child: Container(child: Text('No data')));
                    // return ListView(
                    //   scrollDirection: Axis.vertical,
                    //   shrinkWrap: true,
                    //   children: snapshot.data!.docs
                    //       .map<Widget>((DocumentSnapshot document) {
                    //
                    //     Map<String, dynamic> data = document.data() as Map<String, dynamic>;
                    //     var name = data['name'];
                    //
                    //     var num = data['number'];
                    //
                    //     return Table(
                    //       children: [
                    //         TableRow(
                    //           children: [
                    //             Text("$name"),
                    //
                    //             Text("$num"),
                    //
                    //           ],
                    //         ),
                    //       ],
                    //     );
                    //   }).toList(),
                    // );
                  }
                })
          ],
        ),
      ),
    );
  }
}
