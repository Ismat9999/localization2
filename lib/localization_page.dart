import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationPage extends StatefulWidget {
  const LocalizationPage({super.key});

  @override
  State<LocalizationPage> createState() => _LocalizationPageState();
}

class _LocalizationPageState extends State<LocalizationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
      title: Text("Localization",style: TextStyle(color: Colors.white),),
    ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
               Container(
                 padding: EdgeInsets.all(2),
                 height: 45,
                 color: Colors.blue,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("Language",style: TextStyle(color: Colors.white),),
                     Row(
                       children: [
                         Container(
                           child: MaterialButton(
                             onPressed: (){
                               context.setLocale(Locale('en', 'US'));
                             },
                             child:Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Icon(Icons.language,color: Colors.white,),
                                 Text("EN",style: TextStyle(color: Colors.white,fontSize: 10),),
                               ],
                             ),
                           ),
                         ),
                         Container(
                           child: MaterialButton(
                             onPressed: (){
                               context.setLocale(Locale('ru', 'RU'));
                             },
                             child:Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Icon(Icons.language,color: Colors.white,),
                                 Text("RU",style: TextStyle(color: Colors.white,fontSize: 10),),
                               ],
                             ),
                           ),
                         ),
                         Container(
                           child: MaterialButton(
                             onPressed: (){
                               context.setLocale(Locale('uz', 'UZ'));
                             },
                             child:Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Icon(Icons.language,color: Colors.white,),
                                 Text("UZ",style: TextStyle(color: Colors.white,fontSize: 10),),
                               ],
                             ),
                           ),
                           ),
                       ],
                     ),

        ]
               ),
               ),
            Expanded(child: Center(child: Text("flutter".tr(),style: TextStyle(fontSize: 35),),))
                ],
              ),
        ),
      );
  }
}
