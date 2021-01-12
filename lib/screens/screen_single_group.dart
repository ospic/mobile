import 'package:mobile/model/built_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/utils.dart';
class ScreenSingleGroup extends StatelessWidget {
  final BuiltPost postId;
  ScreenSingleGroup(this.postId);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    //final isLandscape = mediaQuery.orientation == Orientation.landscape;
    final PreferredSizeWidget appBar = Utils.isAndroidPlatform()
        ? AppBar(
          title: Text(postId.groupName, style: TextStyle(fontFamily: 'Batmfa'),),
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
            middle: Text('Group no.' + postId.groupId.toString(),style: TextStyle(fontFamily: 'Batmfa'),
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

Padding pageBody(BuiltPost post) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text('Group Name:'),
          subtitle: Text(post.groupName),
        ),
        ListTile(
          title: Text('Total Members'),
          subtitle: Text(post.totalMembers.toString()),
        ),
        ListTile(
          title: Text('Share Price'),
          subtitle: Text(post.sharePrice.toString()),
        ),
        ListTile(
          title: Text('Group Type'),
          subtitle: Text(post.groupType),
        ),
        ListTile(
          title: Text('Group Account'),
          subtitle: Text(post.groupAcct),
        ),
        ListTile(
          title: Text('Group Id'),
          subtitle: Text(post.groupId.toString()),
        )
      ],
    ),
  );
}

_startAddNewTransaction(BuildContext context) {
  print('No object');
}
