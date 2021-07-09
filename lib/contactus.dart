import 'package:flutter/material.dart';

import 'homepage.dart';


class ContactUs extends StatefulWidget {
  //const ContactUs({ Key? key }) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
          color: Colors.green,
          
        ),
        onPressed: ()
        {
          Navigator.push(
                context,MaterialPageRoute(builder: (context) => HomePage())
              );
        },
      ),
      title: Text('Contact Us',style: TextStyle(fontSize: 18),),
      ),
      body: Container(
        alignment: Alignment.center,
decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg_03_2.png"),
                fit: BoxFit.cover)),
        child: Container(
          margin: EdgeInsets.all(30) ,
           padding: EdgeInsets.only(left: 20,top: 20,right: 16,bottom: 20),
           
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.black54,
          
           ),

          child: Container(
            padding: EdgeInsets.only(left: 16,top: 20,right: 16),
            child: GestureDetector(
              onTap: ()
              {FocusScope.of(context).unfocus();}
              ,
              child: ListView(
                children: [
                  Center(child: Text("Mobile Number",style:TextStyle(fontSize: 18, fontWeight: FontWeight.w800,color: Colors.white60))),
                  SizedBox(height: 5,),
                  Center(child: Text("9818409840",style:TextStyle(fontSize: 22, fontWeight: FontWeight.w800,color: Colors.white))),
                  SizedBox(height: 15,),
                  Center(child: Text("Email Address",style:TextStyle(fontSize: 18, fontWeight: FontWeight.w800,color: Colors.white60))),
                  SizedBox(height: 5,),
                  Center(child: Text("farmerfriend@help.org",style:TextStyle(fontSize: 22, fontWeight: FontWeight.w800,color: Colors.white))),
                  SizedBox(height: 15,),
                   Center(child: Text("Address",style:TextStyle(fontSize: 18, fontWeight: FontWeight.w800,color: Colors.white60))),
                  SizedBox(height: 5,),
                  Center(child: Text("Maharaja Surajmal Institute, Jankapuri",style:TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.white))),
                  SizedBox(height: 35,),
                                                      
                  
                  TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      filled: true,
                      //contentPadding: EdgeInsets.only(bottom: 5),
                     // labelText: "Enter Message",
                     // labelStyle: TextStyle(color: Colors.white60),
                     // floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Enter Your Message",
                      hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black87)
                    ),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
                    minWidth: double.infinity,
                    color: Colors.black87,
                    onPressed: (){},
                    child: Text("Send",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}