import 'package:flutter/material.dart';
import 'package:tugas2_tourism_place/detail_page.dart';
import 'package:tugas2_tourism_place/tourismplace.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Wisata'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        final TourismPlace data = tourismPlaceList[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return detailpage(data: data);
            }));
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.orangeAccent.shade700,
            ),
            borderRadius: BorderRadius.circular(5.0),
            ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Image.network(data.imageUrls[0], width: 200,),
                    SizedBox(height: 10,),
                    Text(data.name,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),),
                    SizedBox(height: 10,),
                    Text(data.ticketPrice,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange.shade400,
                      ),
                    ),
                    SizedBox(height: 20,)

                  ],
                ),
               ),
              ),
            );

            },
            itemCount: tourismPlaceList.length,

          ),
        );
      }
    }




