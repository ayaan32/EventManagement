import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dev/paymentpage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Eventpage extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final doc_id;
  // ignore: non_constant_identifier_names
  const Eventpage({Key? key, required this.doc_id}) : super(key: key);

  @override
  _EventpageState createState() => _EventpageState();
}

class _EventpageState extends State<Eventpage> {
  // ignore: non_constant_identifier_names
  late String doc_id;
  late String date, time, descrip;
  bool isLoading = false;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    doc_id = widget.doc_id;
    isLoading = true;
    getDetails();
    super.initState();
  }

  getDetails() async {
    CollectionReference datacol =
        FirebaseFirestore.instance.collection('users');
    DocumentSnapshot dets = await datacol.doc(doc_id).get();
    if (this.mounted) {
      setState(() {
        date = dets.get('date');
        time = dets.get('time');
        descrip = dets.get('desc');
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Event'),
        centerTitle: true,
      ),
      body: isLoading
          ? CircularProgressIndicator()
          : StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('users')
                  .doc(doc_id)
                  .snapshots(),
              builder: (BuildContext context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                getDetails();
                return Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Column(
                      children: [
                        Card(
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: 120,
                              width: 350,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Text(
                                        'Date: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25.0),
                                      ),
                                      Text(date,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25.0)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Text(
                                        'Time: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25.0),
                                      ),
                                      Text(time,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25.0)),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(height: 10.0),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            height: 150,
                            width: 350,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      'Event Description: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0),
                                    ),
                                  ],
                                ),
                                Row(children: [
                                  SizedBox(width: 10),
                                  Flexible(
                                    child: Text(descrip,
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16.0)),
                                  ),
                                ])
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        CarouselSlider(
                          items: [
                            //1st Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGFydHl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //2nd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFydHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //3rd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://media.istockphoto.com/photos/string-light-bulbs-at-sunset-picture-id1300384615?b=1&k=20&m=1300384615&s=170667a&w=0&h=rkDm5TdJp_dU7VAknk4EuZEZ2ho2QQspOavjlwGrsuI="),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 180.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Paypage()));
                          },
                          child: Text('Register'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black87)),
                        )
                      ],
                    ),
                  )),
                );
              },
            ),
    );
  }
}
