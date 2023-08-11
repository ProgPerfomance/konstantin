import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';

class SubCatalogWithPicture extends StatefulWidget {
  final ScrollController scrollController;
  final double bottomSheetOffset;
  const SubCatalogWithPicture({required this.scrollController,
    required this.bottomSheetOffset,
    Key? key,});

  @override
  State<SubCatalogWithPicture> createState() => _SubCatalogWithPictureState();
}

class _SubCatalogWithPictureState extends State<SubCatalogWithPicture> {
  // final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          controller: widget.scrollController,
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  Text('Морепродукты и креветки',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                    textAlign: TextAlign.center ,
                  ),

                ],
              ),
            ),
            SizedBox(),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                ],
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height - 170),
              child: ListView.builder( itemBuilder: (context, index) {
                return Column(
                  children: [

                    SizedBox(
                      width: MediaQuery.of(context).size.width,

                      child: GestureDetector(
                       // onTap: ()=>_showItem(),
                        child: Row(
                         // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10,),
                                Container(
                                  height: MediaQuery.of(context).size.width/1.5,
                                  width: MediaQuery.of(context).size.width/2.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.shade200
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network('http://static.tildacdn.com/tild6563-3561-4531-b966-646632326461/105013-800x800.jpg'),
                                      ),
                                      Text('Креветка Аргентинская',
                                        // style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21),
                                        textAlign: TextAlign.center, ),
                                      Text('825.99',
                                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                                        textAlign: TextAlign.start, ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.width/1.5,
                                  width: MediaQuery.of(context).size.width/2.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.shade200
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network('https://s.optlist.ru/i/74/22/15c4ecdd8a088ca0-7422-1.jpg')),

                                         Text('Креветка северная "ОПЛОТ МИРА"',
                                       // style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21),
                                        textAlign: TextAlign.center, ),
                                      Text('645.99',
                                         style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                                        textAlign: TextAlign.left ),

                                    ],
                                  ),
                                ),

                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ]),
        ));
  }
}
