import 'package:mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Transactions extends StatefulWidget {
  final String mTitle, mDataInfo, mDataDate;
  final int subTitle;
  final IconData iconData;
  final GestureTapCallback tapCallback;

  const Transactions(String s,
      {Key key,
      this.iconData,
      @required this.mTitle,
      this.subTitle,
      this.mDataDate,
      this.mDataInfo,
      this.tapCallback})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TransactionsWidgetState();
}

class _TransactionsWidgetState extends State<Transactions> {
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
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(width: 1.0, color: gray2))),
                  child: new CircleAvatar(
                    radius: 30,
                    backgroundColor: gray1,
                    child: new Icon(
                      MdiIcons.accountGroup,
                      color: green1,
                    ),
                  ),
                ),
                title: Text(
                  widget.mTitle ?? '',
                  style: TextStyle(color: gray3),
                ),
                subtitle: Text('${widget.subTitle == 1 ? '${widget.subTitle} Member': '${widget.subTitle} Members'}'),
                onTap: widget.tapCallback,
              ),
            ),
            /*Expanded(
              
              flex: 1,
              child: ListTile(
                title: Text(
                  widget.mDataInfo ?? '',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: colorAccent, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  widget.mDataDate ?? '',
                  textAlign: TextAlign.end,
                ),
              ),
            )*/
          ])),
    );
  }
}
