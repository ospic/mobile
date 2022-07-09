import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/model/transaction.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TransactionWidget extends StatefulWidget {
  final Transaction transaction;

  const TransactionWidget(String s, {required this.transaction});

  @override
  State<StatefulWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  final formatCurrency = new NumberFormat.simpleCurrency();
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    final Transaction transaction = widget.transaction;
    return  Container(
        decoration: BoxDecoration( //                    <-- BoxDecoration
          border: Border(bottom: BorderSide()),
          color: _theme.appBarTheme.foregroundColor,
        ),
        child:ListTile(
          tileColor: _theme.appBarTheme.foregroundColor,
          dense: true,
          leading: Icon(transaction.medicalServiceName != null? Icons.medical_services_outlined :MdiIcons.pill, color: colorPrimary,),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('${formatCurrency.format(transaction.amount)}' +" "+ transaction.currencyCode!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),)],
          ),
          title:  Text((transaction.medicalServiceName == null?  'Medicine: ${transaction.medicineName.toString()}':'Service: ${transaction.medicalServiceName.toString()}')),
          subtitle:     Text(transaction.transactionDate!,style: _theme.textTheme.bodyText1),
          onTap:() => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ViewTransaction(transaction.consultationId!,transaction.id))),

        ));
  }
}
