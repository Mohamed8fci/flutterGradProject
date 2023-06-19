import 'package:flutter/material.dart';

class DialysisPreventionPage extends StatelessWidget {
  const DialysisPreventionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialysis Prevention'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Preventing the Need for Dialysis',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Dialysis is a medical treatment used to filter waste and excess fluid from the blood when the kidneys are not functioning properly. While dialysis is life-saving for those with kidney failure, it is also costly and time-consuming. Here are some tips to help prevent the need for dialysis:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '1. Maintain a healthy lifestyle',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'A healthy lifestyle can help prevent kidney disease and other conditions that can lead to kidney failure. This includes eating a healthy diet, exercising regularly, maintaining a healthy weight, and avoiding smoking and excessive alcohol consumption.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '2. Manage chronic conditions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Chronic conditions such as diabetes and high blood pressure can damage the kidneys over time. It is important to manage these conditions through medication, regular check-ups, and lifestyle changes.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '3. Stay hydrated',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Drinking plenty of water can help keep the kidneys functioning properly by flushing out toxins and waste products.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '4. Avoid nephrotoxic drugs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Certain medications and drugs can damage the kidneys. It is important to avoid or limit the use of nephrotoxic drugs, such as non-steroidal anti-inflammatory drugs (NSAIDs) and some antibiotics, unless they are prescribed by a doctor.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
