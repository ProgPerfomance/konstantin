import 'package:flutter/material.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:konstantin/view/CatalogScreen/SubCatalogScreen.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  bool isUseSafeArea = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('МАГНИТ', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),),
              Icon(Icons.search)
            ],),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 170,
            child: ListView.builder(itemBuilder: (context, index) {return
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Container(
                      color: Colors.grey,
                      height: 1,
                      width: MediaQuery.of(context).size.width - 35,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    child: GestureDetector(
onTap: ()=>_showSubCatalog(),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                               children: [
                                 SizedBox(width: 20,),
                                 Container(
                                   height: 90,
                                   width: 90,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                     color: Colors.grey.shade200
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Image.network('https://avatars.mds.yandex.net/get-altay/6955494/2a0000018355473c28409dfaec02944c2a96/XXL'),
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: SizedBox(child: Text('Рыба, морепродукты, икра '), ),
                                 ),

                               ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          SizedBox(child: Text('Доставим завтра 10-11'),),
          //SizedBox(child: Text('Доставка бесплатно',style: TextStyle(color: Colors.green),))
      SizedBox(
        child: RichText(
          text: TextSpan(
            text: 'Доставка бесплатно',
            style: TextStyle(color: Colors.green), /*defining default style is optional */
            children: <TextSpan>[

              TextSpan(
                  text: ' и сборка 29р',
                  style: TextStyle(color: Colors.black)),

            ],
          ),
        ),
      )
        ],
      ),
    );
  }
  void _showSubCatalog() {
    showFlexibleBottomSheet<void>(
      minHeight: 0,
      initHeight: 0.7,
      maxHeight: 1,
      context: context,
      isSafeArea: isUseSafeArea,
      bottomSheetColor: Colors.white,
      builder: (context, controller, offset) {
        return SubCatalogScreen(
          scrollController: controller,
          bottomSheetOffset: offset,
        );
      },
      anchors: [0, 0.7, 1],
    );
  }
}
