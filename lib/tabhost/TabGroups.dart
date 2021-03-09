import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/built_post.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:developer';

class TabGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      floatingActionButton: new Builder(builder: (BuildContext context) {
        return new FloatingActionButton(
            tooltip: 'Increment',
            child: Icon(
              Icons.add,
            ),
            backgroundColor: green1.withOpacity(0.9),
            onPressed: () {
              final snackBar = SnackBar(
                backgroundColor: gray3,
                content: Text('Create new Group ?'),
                action: SnackBarAction(
                  label: 'Yes',
                  onPressed: () {
                    Navigator.pushNamed(context, '/addgroup');
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
      }),
    );
  }
}

FutureBuilder<Response<BuiltPost>> _buildBody(BuildContext context) {
  return FutureBuilder<Response<BuiltPost>>(
    future: Provider.of<PostApiService>(context).getPatients(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        log(snapshot.toString());
        final BuiltPost posts = snapshot.data.body;
        return _buildPosts(context, posts);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildPosts(BuildContext context, BuiltPost posts) {
  return ListView.builder(
      itemCount: 1,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8.0),
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Card(
            color: Colors.green,
            elevation: 1,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: Transactions(
                  'group_widget',
                  mDataDate: posts.createdDate,
                  mDataInfo: '20$index',
                  mTitle: posts.name,
                  subTitle: posts.age,
                  tapCallback: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ScreenSingleGroup(posts))),
                )));
      });
}
