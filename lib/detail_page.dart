import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas2_tourism_place/tourismplace.dart';

class detailpage extends StatefulWidget {
  final TourismPlace data;
  const detailpage({Key? key, required this.data}) : super(key: key);

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  bool toggle = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Destinasi'),
      ),
      body: Column(
        children: [
          Container(
            height: (MediaQuery
                .of(context)
                .size
                .height) / 3,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: widget.data.imageUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      widget.data.imageUrls[index],
                      width: 200,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.deepOrange.shade400,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 50,),
                  Text(widget.data.name,
                    style:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text(widget.data.description,),
                  ),
                  Text("Lokasi : ${widget.data.location}",
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Text("Harga Tiket : ${widget.data.ticketPrice}",
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orangeAccent.shade700),
                  ),
                  Text("${widget.data.openDays} | ${widget.data.openTime}",
                    style:
                    TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                  SizedBox(height: 50,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
