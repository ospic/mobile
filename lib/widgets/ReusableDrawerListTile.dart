import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableDrawerListTile extends  StatefulWidget{
  final String title;
  final String subtitle;
  final IconData leading;
  final String routename;
  final bool disabled;
  final GestureTapCallback onTap;

  ReusableDrawerListTile({
     required this.title,
    required this.subtitle,
    required this.disabled,
   required this.leading, required this.routename,required this.onTap});

  @override
  ReusableListTile createState() => new ReusableListTile();
}
class ReusableListTile extends State<ReusableDrawerListTile>{
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      title: Text(widget.title),
      dense: true,
      isThreeLine: false,
      leading: Icon(widget.leading, color: colorPrimary,),
       onTap: widget.disabled ? () {

       } : widget.onTap,
      
    );
    
  }

 
}
