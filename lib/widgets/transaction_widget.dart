import 'package:mobile/model/transaction.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TransactionWidget extends StatefulWidget {
  final Transaction transaction;

  const TransactionWidget(String s,
      {Key key,
        @required this.transaction})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    final Transaction transaction = widget.transaction;
    return  Container(
        decoration: BoxDecoration( //                    <-- BoxDecoration
          border: Border(bottom: BorderSide()),
        ),
        child:ListTile(
          tileColor: gray1,
          dense: true,
          leading: Icon(MdiIcons.account),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(transaction.amount.toString() +" "+ transaction.currencyCode, style: TextStyle(fontWeight: FontWeight.bold),)],
          ),
          title:  Text((transaction.medicalServiceName == null?  'Medicine:\t'+transaction.medicineName.toString():'Service:\t'+transaction.medicalServiceName.toString())),
          subtitle:     Text('Date:'+transaction.transactionDate,style: TextStyle(color: textPrimaryColor,  fontWeight: FontWeight.w200)),
          onTap:() => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ViewTransaction(transaction.consultationId,transaction.id))),

        ));
  }
}
