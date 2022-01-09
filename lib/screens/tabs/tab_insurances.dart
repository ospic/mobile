import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/widget_not_found.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';

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
          color: _theme.appBarTheme.backgroundColor,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          )),
      child: _buildBody(context),
    ));
  }

  FutureBuilder<Response<BuiltList<InsuranceCard>>> _buildBody(
      BuildContext context) {
    return FutureBuilder<Response<BuiltList<InsuranceCard>>>(
      future: Provider.of<PostApiService>(context).getInsuranceCards(),
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
        Padding(padding: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 15.0),child: Text('Insurance Cards', style: TextStyle(fontWeight: FontWeight.bold, color: Constants.clr_blue)),),
        Expanded(
          child: ListView.builder(
            itemCount: cs.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0.0),
            physics: const AlwaysScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return  Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  decoration: new BoxDecoration(
                      color: Constants.clr_light_blue,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      )),
                  child:
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),//or 15.0
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: cs[index].isActive! ? Constants.clr_blue : Colors.black12,
                        child:  Center(child: Icon(cs[index].isActive! ? Icons.lock_open_outlined :Icons.lock_outline, color: Colors.white,),)
                      ),
                    ),
                    title: Text(cs[index].insurance.name!, style: TextStyle(fontWeight: FontWeight.bold, color: colorPrimary),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        Text("Member No: \t\t\t\t\t" + cs[index].membershipNumber! ),
                        Text("Member name: \t" +cs[index].patientName!),
                        Text('Expire date: \t\t\t\t\t\t' + cs[index].expireDate!)
                      ],
                    ),
                    onTap: () {}
                  ));
            },
            ),
        ),


      ],
    );
  }


}

