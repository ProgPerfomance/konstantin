import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';

class SubCatalogScreen extends StatefulWidget {
  final ScrollController scrollController;
  final double bottomSheetOffset;
  const SubCatalogScreen({required this.scrollController,
    required this.bottomSheetOffset,
    Key? key,});

  @override
  State<SubCatalogScreen> createState() => _SubCatalogScreenState();
}

class _SubCatalogScreenState extends State<SubCatalogScreen> {
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
              Text(
                'Рыба, морепродукты, икра',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              Text(
                'Поиск продуктов',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                textAlign: TextAlign.left ,
              ),
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
                  height: 50,
                  child: GestureDetector(
                    // onTap: ()=>_showSubCatalog(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                child: Text('Морепродукты и креветки ',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21),),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Text('(15) ',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21,color: Colors.black12),),
                          ),
                        )
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
