import 'package:dev/eventpage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'eventpage.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('users').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                children: snapshot.data!.docs.map((document) {
                  return Container(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 1.0, horizontal: 4.0),
                    child: Container(
                        child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Ink.image(
                                image: NetworkImage(
                                  document['e-image'],
                                ),
                                height: 240,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: 16,
                                right: 16,
                                left: 16,
                                child: Text(
                                  document['event name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(16).copyWith(bottom: 0),
                            child: Row(
                              children: [
                                Text(
                                  document['desc'],
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 20, 5),
                                child: ButtonBar(
                                  alignment: MainAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) => Eventpage(
                                                      doc_id:
                                                          document.reference.id,
                                                    )));
                                      },
                                      child: Text('Register for event'),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.black87)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                  ));
                }).toList(),
              );
            }),
      ),
    );
  }
}
