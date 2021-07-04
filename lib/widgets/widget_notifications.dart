import 'package:mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Notifications extends StatefulWidget {
  final String mTitle, mDataInfo, mDataDate;
  final String subTitle;
  final IconData iconData;

  const Notifications(
    String s, {
    required this.iconData,
    required this.mTitle,
    required this.subTitle,
    required this.mDataDate,
    required this.mDataInfo,
  });

  @override
  State<StatefulWidget> createState() => _NotificationsWidgetState();
}

enum Answers { YES, NO, MAYBE }

class _NotificationsWidgetState extends State<Notifications> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser(String groupname) async {
    switch (await showDialog(
        context: context,
        /*it shows a popup with few options which you can select, for option we
        created enums which we can use with switch statement, in this first switch
        will wait for the user to select the option which it can use with switch cases*/
        builder:(_)=> new SimpleDialog(
          elevation: 0.0,
          title:  ListTile(
                leading: new CircleAvatar(
                  radius: 16,
                  backgroundColor: green1.withOpacity(0.8),
                  child: new Icon(
                    MdiIcons.informationVariant,
                    color: Colors.white,
                  ),
                ),
                
                subtitle:   new Text(
            'Click Accept to join ' + groupname + ' or Decline to ignore and delete this request !',
           textAlign: TextAlign.start,),
              ),
          
        
          children: <Widget>[
            Row(
                children: <Widget>[
                  new SimpleDialogOption(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(color: Colors.white),
                          onPrimary: green1,
                        ),
                    child: const Text('Accept', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      //Navigator.pop(context, Answers.YES);
                    },
                  )),
                  Spacer(),
                  new SimpleDialogOption(
                      child: new ElevatedButton(
                    child: Text('Decline', style: TextStyle(fontSize: 20.0)),
                   style: ElevatedButton.styleFrom(
                     onPrimary:  blue,
                       textStyle:TextStyle(color:  Colors.white)
                   ),
                    onPressed: () {
                      //Navigator.pop(context, Answers.NO);
                    },
                  )),
                ])
          ],
        ))) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Material(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 4,
              child: ListTile(
                onTap: () {
                  _askUser(widget.mTitle);
                },
                leading: new CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: new Icon(
                    MdiIcons.informationVariant,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  widget.mTitle ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(widget.subTitle ?? ''),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                subtitle: Text(
                  widget.mDataDate ?? '',
                  textAlign: TextAlign.end,
                ),
              ),
            )
          ])),
    );
  }
}
