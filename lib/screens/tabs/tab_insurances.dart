import 'package:chopper/chopper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/index.dart';

import 'package:mobile/utils/colors.dart';
import 'package:mobile/utils/index.dart';
import 'package:mobile/widgets/widget_not_found.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';

import '../../utils/sharedpreference.dart';

class TabInsurances extends StatefulWidget {
  TabInsurances();
  @override
  _InsurancesTabState createState() => _InsurancesTabState();
}

class _InsurancesTabState extends State<TabInsurances> {
  late ThemeData _theme;
  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Container(
        color: _theme.appBarTheme.backgroundColor,
        child: Container(
      decoration: new BoxDecoration(
          color: _theme.appBarTheme.foregroundColor,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          )),
      child: _currentInstanceBuilder(context),
    ));
  }

  FutureBuilder<int?> _currentInstanceBuilder(BuildContext context){
    return FutureBuilder<int?>(
        future: Utils.getPatientId(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
            return _buildBody(context, snapshot.data!);
          }
          return NothingFoundWarning();
        });
  }

  FutureBuilder<Response<BuiltList<InsuranceCard>>> _buildBody(BuildContext context, int patientId) {
    return FutureBuilder<Response<BuiltList<InsuranceCard>>>(
      future: Provider.of<PostApiService>(context).getInsuranceCards(patientId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          final BuiltList<InsuranceCard>? cards = snapshot.data?.body;
          return cards!.isNotEmpty  ? _buildCardList(
              context,  cards.reversed.toBuiltList()) : NothingFoundWarning();
        } else if(snapshot.hasError){
          return SomethingWrongHasHappened();
        }  else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }




  Widget _buildCardList(BuildContext context, BuiltList<InsuranceCard> cs) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 15.0),
          child: Text('title.insurancecards'.tr(), style: _theme.textTheme.headline3),),
        Expanded(
          child: ListView.separated(
            itemCount: cs.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0.0),
            physics: const AlwaysScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return  Container(
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                  decoration: new BoxDecoration(
                      color: _theme.appBarTheme.foregroundColor,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      )),
                  child:
                  ListTile(
                    tileColor: _theme.appBarTheme.foregroundColor,
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),//or 15.0
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: cs[index].isActive! ? blue : Colors.black12,
                        child:  Center(child: Icon(cs[index].isActive! ? Icons.add_card_sharp :Icons.credit_card_off_outlined, color: Colors.white,),)
                      ),
                    ),
                    title: Text(cs[index].insurance!, style: _theme.textTheme.headline3,),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text("Member No: \t\t\t\t\t" + cs[index].membershipNumber!, style: _theme.textTheme.headline4, ),
                        Text("Member name: \t" +cs[index].patientName!, style: _theme.textTheme.headline4,),
                        Text('Expire date: \t\t\t\t\t\t' + cs[index].expireDate!, style: _theme.textTheme.headline4,)
                      ],
                    ),
                    onTap: () {}
                  ));
            },
            separatorBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  color: _theme.appBarTheme.backgroundColor, height: 1);
            },
            ),
        ),


      ],
    );
  }


}

