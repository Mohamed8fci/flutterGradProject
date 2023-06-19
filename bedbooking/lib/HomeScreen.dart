import 'package:bedbooking/bookinScreen.dart';
import 'package:bedbooking/dispayingprivintingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _hospitals = [
    {
      'name': 'cairo hospital',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBvKS_hh2m6xpORFVusSFYaIeU3Vow4lX38w&usqp=CAU',

    },
    {
      'name': 'suez hospital',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzEUGn_Vsj-51Jm81UZa8a2RN0cloVS2DDuQ&usqp=CAU',

    },
    {
      'name': 'aswan hospital',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb1g_4hBz76wRqQoPuDwfNLyznU0FOXUjfJQ&usqp=CAU',

    },
    {
      'name': 'mansoura hospital',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwWcwqBHopbcmncwdSdQ94IbHBYXe4hzYWtg&usqp=CAU',

    },
    {
      'name': 'alex hospital',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_NzaWhOQ_mSLXFFpCYmkZtW9mJheSJTXxUA&usqp=CAU',
    },
    {
      'name': 'shibien hospital',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA9ZwhO1Rove8L75blKe0d8-4nFXsVJIp5SA&usqp=CAU',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Expanded(
          child: Column(
            children: [

              InkWell(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                  width: double.infinity,
                  height: 340,
                  decoration: BoxDecoration(
                      color: Color(0xFF3E64FF),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF3E64FF).withOpacity(0.3),
                          offset: const Offset(
                            0.0,
                            15.0,
                          ),
                          blurRadius: 25.0,
                          spreadRadius: 0.5,
                        ),
                      ]),
                  child: Stack(
                    children: [
                      Text(
                        "Covid-19 Healthcare",
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 45.0),
                        child: TextButton(
                          onPressed: () => (){},
                          child: Text(
                            "Read Info",
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Poppins-SemiBold",
                                color: Colors.deepOrangeAccent),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SvgPicture.asset("assets/svg/doctors.svg"))
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DialysisPreventionPage()));
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              Text('Booking Dialysis machine',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),),
              SizedBox(
                height: 8.0,
              ),
              InkWell(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(8.0),
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                    shrinkWrap: true,
                   // Number of columns
                    children: _hospitals.map((hospital) {
                      return Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.network(
                                hospital['image'],
                                fit: BoxFit.cover,
                                height: 110.0,
                                width: 130.0,
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                hospital['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => BookingScreen(),
                  ),
                  );
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}

