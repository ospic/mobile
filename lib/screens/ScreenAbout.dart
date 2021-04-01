import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/patient.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

class ScreenAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      floatingActionButton: new Builder(builder: (BuildContext context) {
        return new FloatingActionButton(
            tooltip: 'Increment',
            child: Icon(
              Icons.edit,
            ),
            backgroundColor: green1.withOpacity(0.9),
            onPressed: () {
              final snackBar = SnackBar(
                backgroundColor: gray3,
                content: Text('Do you want to edit ?'),
                action: SnackBarAction(
                  label: 'Yes',
                  onPressed: () {
                   // Navigator.pushNamed(context, '/addgroup');
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
      }),
    );
  }
}

FutureBuilder<Response<Patient>> _buildBody(BuildContext context) {
  return FutureBuilder<Response<Patient>>(
    future: Provider.of<PostApiService>(context).getPatients(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        log(snapshot.toString());
        final Patient posts = snapshot.data.body;
        return _buildPosts(context, posts);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

Widget _buildPosts(BuildContext context, Patient user) {
  return ListView(
    children: <Widget>[

    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10,0 ,10),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                child: ClipOval(child: Image.network(user.patientPhoto == null ? 'https://picsum.photos/200/300?grayscale':user.patientPhoto, height: 100, width: 100, fit: BoxFit.cover,),),
              ),
              Positioned(bottom: 1, right: 1 ,child: Container(
                height: 40, width: 40,
                child: Icon(Icons.add_a_photo, color: Colors.white,),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ))
            ],
          ),
        ),
      ],
    ),
      Expanded(child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)]
            )
        ),
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 4),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Full name",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.name,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),

                  ListTile(
                    title: Text("Age",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.age.toString() + " years [ "+ user.gender+" ]",style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                  ListTile(
                    title: Text("Home address",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.address + ","+user.contactsInformation.city + " , "+user.contactsInformation.state,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                  ListTile(
                    title: Text("Phone number",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.phone,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                  ListTile(
                    title: Text("Email address",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.emailAddress,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                  ListTile(
                    title: Text("Blood group",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.bloodGroup,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                  ListTile(
                    title: Text("Last BP",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.bloodPressure,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                  ListTile(
                    title: Text("Last time height",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.height,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                  ListTile(
                    title: Text("Last time weight",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.weight,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                  ListTile(
                    title: Text("Last modified",style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
                    subtitle: Text(user.lastModifiedDate,style: TextStyle(color: Colors.white70)),
                  ),

                  const Divider(
                    height: 2,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                  ),
                ],
              )
            ),


          ],
        ),
      ))
    ],
  );

}