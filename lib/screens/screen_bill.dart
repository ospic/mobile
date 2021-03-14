import 'package:mobile/model/patient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/utils.dart';
class BillScreen extends StatelessWidget {
  final int postId;
 BillScreen(this.postId);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    //final isLandscape = mediaQuery.orientation == Orientation.landscape;
    final PreferredSizeWidget appBar = Utils.isAndroidPlatform()
        ? AppBar(
          title: Text("postId.name", style: TextStyle(fontFamily: 'Batmfa'),),
            backgroundColor: green1,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => _startAddNewTransaction(context),
              )
            ],
          )
        : CupertinoNavigationBar(
          backgroundColor: green1,
            middle: Text('Group no.'/** + postId.id.toString()**/,style: TextStyle(fontFamily: 'Batmfa'),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  child: Icon(CupertinoIcons.add),
                  onTap: () => _startAddNewTransaction(context),
                )
              ],
            ),
          );

    return Utils.isAndroidPlatform() ? Scaffold(appBar: appBar, body: pageBody(postId))
        : CupertinoPageScaffold(child: pageBody(postId), navigationBar: appBar);
  }
}

Padding pageBody(int post) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
    /**    ListTile(
          title: Text('Group Name:'),
          subtitle: Text(post.name),
        ),
        ListTile(
          title: Text('Age'),
          subtitle: Text(post.age.toString()),
        ),
        ListTile(
          title: Text('Guardian'),
          subtitle: Text(post.guardianName.toString()),
        ),
        ListTile(
          title: Text('Blood group'),
          subtitle: Text(post.bloodGroup),
        ),
        ListTile(
          title: Text('BP'),
          subtitle: Text(post.bloodPressure),
        ),
        ListTile(
          title: Text('Group Id'),
          subtitle: Text(post.id.toString()),
        )
        **/
      ],
    ),
  );
}

_startAddNewTransaction(BuildContext context) {
  print('No object');
}
