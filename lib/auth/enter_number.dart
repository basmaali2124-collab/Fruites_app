import 'package:flutter/material.dart';
import 'package:fruits_app/widgets/custom_label_name.dart';

class EnterNumber extends StatelessWidget {
   EnterNumber({super.key});

final TextEditingController _phoneController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new),
              ),
            ),
            Text(
              "Fruit Market",
              style: TextStyle(
                color: Color(0xFF204F38),
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Enter your Number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
             LabelName(labelName: 'Phone Number ',),
            SizedBox(height: 8),
            TextFormField(
              controller:_phoneController,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SizedBox(height: 40,width: 64,
                    child: Row(
                      children: [
                        Icon(Icons.expand_more,color:Color(0xFF858D9A) ,),
                        Text('KW'),
                        VerticalDivider(color: Color(0xFFE4E4E4),)
                      ],
                    ),
                  ),
                ),
                hintText: 'Mobile Number'),),
              SizedBox(height: 40),
            
            SizedBox(height: 51,width: MediaQuery.sizeOf(context).width,child: ElevatedButton(onPressed: (){}, child: Text('Submit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
             ],
        ),
      ),
    );
  }
}

