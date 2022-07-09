import 'package:chopper/chopper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/index.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

import '../../utils/sharedpreference.dart';
import '../../utils/util.dart';

class TabUserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Scaffold(
      backgroundColor:  _theme.appBarTheme.backgroundColor,
      body: _currentInstanceBuilder(context),
      floatingActionButton: new Builder(builder: (BuildContext context) {
        return new FloatingActionButton(
            tooltip: 'Increment',
            child: Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
            backgroundColor:  _theme.appBarTheme.backgroundColor,
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            });
      }),
    );
  }

  FutureBuilder<int?> _currentInstanceBuilder(BuildContext context) {
    return FutureBuilder<int?>(
        future: Utils.getPatientId(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return _buildBody(context, snapshot.data!);
          }
          return NothingFoundWarning();
        });
  }

  FutureBuilder<Response<Patient>> _buildBody(
      BuildContext context, int patientId) {
    return FutureBuilder<Response<Patient>>(
      future: Provider.of<PostApiService>(context).getPatients(patientId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          log(snapshot.toString());
          final Patient? posts = snapshot.data!.body;
          return _buildPosts(context, posts);
        } else if (snapshot.hasError) {
          return SomethingWrongHasHappened();
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _buildPosts(BuildContext context, Patient? user) {
    final String baseUrl = Provider.of<PostApiService>(context)
        .client
        .baseUrl
        .replaceAll('/self', '');
    final ContactsInformation? contactsInformation = user?.contactsInformation;
    final String city =
        contactsInformation == null ? '' : contactsInformation.city!;
    final String state =
        contactsInformation == null ? '' : contactsInformation.state!;

    return ListView(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: colorPrimaryDark,
                    child: ClipOval(
                        child: FadeInImage.assetNetwork(
                      image: '${user?.patientPhoto}',
                      placeholder: 'assets/images/placeholder.gif',
                      fit: BoxFit.cover,
                      height: 70.0,
                      width: 70.0,
                      imageErrorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/user_icon.png',
                          fit: BoxFit.cover,
                          height: 70.0,
                          width: 70.0,
                        );
                      },
                    )),
                  ),
                  Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.white,size: 20.0,
                        ),
                        decoration: BoxDecoration(
                            color: blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ))
                ],
              ),
            ),
          ],
        ),
        Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.black54, colorPrimary])),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 4),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("title.fullname".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.name}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("title.age".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text(
                            "${user?.age} years [ " + '${user?.gender}' + " ]",
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("title.address".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text(
                            " ${user?.address}," + city + " , " + state,
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("title.phonenumber".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.phone}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("title.email".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.emailAddress}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("title.bloodgroup".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.bloodGroup}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("title.lastbp".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.bloodPressure}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      ListTile(
                        title: Text("title.allergies".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.allergies}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("title.height".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.height}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("title.weight".tr(),
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.weight}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                      ListTile(
                        title: Text("Last modified",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('${user?.lastModifiedDate}',
                            style: TextStyle(color: Colors.white70)),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 2,
                        endIndent: 2,
                      ),
                    ],
                  )),
            ],
          ),
        ))
      ],
    );
  }
}
