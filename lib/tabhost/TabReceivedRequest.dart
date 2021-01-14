import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/notification_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';
class TabReceivedRequest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
  return Scaffold(
    body: _buildBody(context),
  );
  }
  
}

FutureBuilder<Response<BuiltList<NotificationModel>>> _buildBody(BuildContext context) {
  return FutureBuilder<Response<BuiltList<NotificationModel>>>(
    future: Provider.of<PostApiService>(context).getAllNotifications(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final BuiltList<NotificationModel> notifications = snapshot.data.body;
        return _buildNotifications(context, notifications);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}


ListView _buildNotifications(BuildContext context, BuiltList<NotificationModel> notifications) {
  return ListView.builder(
      itemCount: notifications.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8.0),
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
              return Container(
                width: null,
                margin: const EdgeInsets.all(0.0),
                alignment: Alignment.center,
                child: Card(
                  color: Colors.red[200],
                  elevation: 0.2,
                  child:Notifications(
                    'group_widget',
                    mDataDate: '$index/3/19',
                    mDataInfo: '20$index',
                    mTitle: "Notification $index",
                    subTitle: notifications[index].description,
                  ),
                ));
      });
}