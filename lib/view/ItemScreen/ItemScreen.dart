import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ItemScreen extends StatefulWidget {
  final ScrollController scrollController;
  final double bottomSheetOffset;
  const ItemScreen({required this.scrollController,
    required this.bottomSheetOffset,
    Key? key,});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.shopping_cart_sharp,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height:30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.heart_broken,
                    color: Colors.black,
                  ),
                ),

              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      decoration: BoxDecoration(
                      image: DecorationImage( image: NetworkImage('https://photo-study.ru/files/styles/750w/public/events/krievietki.jpg'),fit: BoxFit.cover),
                      ),
                      height: 170,
                      width: MediaQuery.of(context).size.width - 30,
                      child: Center(child: Text(index.toString())),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/1.2,

                      child: Container(
                        decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        ),
                        child: Column(
                          children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: MediaQuery.of(context).size.width/50),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.all(3.5),
                                      decoration: BoxDecoration(

                                        image: DecorationImage(
                                          image: Svg('assets/svg/vector1.svg'),
                                          fit: BoxFit.fitWidth,

                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('655P',
                                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27,color: CupertinoColors.opaqueSeparator),
                                          textAlign: TextAlign.center ,

                                        ),
                                      )),
                                  Container(

                                      decoration: BoxDecoration(

                                        image: DecorationImage(
                                          image: Svg('assets/svg/line.svg'),
                                          fit: BoxFit.cover,

                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,0.0),
                                        child: Text('865P',
                                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21, color: CupertinoColors.secondaryLabel ),
                                    textAlign: TextAlign.start ,
                                        ),
                                      )),
                                ],
                               ),
                                Text('/240 г.',style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21,color: CupertinoColors.secondaryLabel ),
              textAlign: TextAlign.justify ,),
                                ],
                               ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.grey.shade200,
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                              ),
                              Text('0.0', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21)),
                              SizedBox(width: MediaQuery.of(context).size.width/40)
                            ],
                          )
                              ],

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Креветка Аргентинская 234534dfgergwertgerfdgre   fdgdfgefg sdfgdfgdfgbfd',style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21)),
                                  ),width: MediaQuery.of(context).size.width*0.6),
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.black,
                                    child: const Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width/1.1,
                                height: MediaQuery.of(context).size.height/11,
                                //alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Icon(
                                      Icons.shopping_cart_sharp,

                                      color: Colors.black,
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width/40 ,),
                                    Text('В корзину', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  color : Color.fromRGBO(139, 205, 208, 1),
                                )

                            ),
                          ]
                        ),
                      ),
            ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.93,
                            height: MediaQuery.of(context).size.height/13,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color : Color.fromRGBO(250, 250, 253, 1),
                            ),
                            child: Row(


                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height/20,
                                    width: MediaQuery.of(context).size.width*0.285,
                                    child:
                                      Center(child: Text('Описание',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17))),


                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: kCupertinoModalBarrierColor.withOpacity(0.35),
                                          blurRadius: 4
                                      )
                                    ],
                                    color : Color.fromRGBO(250, 250, 253, 1),
                                  )
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height/20,
                                    width: MediaQuery.of(context).size.width*0.346,
                                    child:
                                    Center(child: Text('Характеристики',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17))),


                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),

                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: kCupertinoModalBarrierColor.withOpacity(0.35),
                                            blurRadius: 4
                                        )
                                      ],
                                      color : Color.fromRGBO(250, 250, 253, 1),
                                    )
                                ),
                                Container(
                                    height: MediaQuery.of(context).size.height/20,
                                    width: MediaQuery.of(context).size.width*0.285,
                                    child:
                                    Center(child: Text('Отзывы',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17))),


                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: kCupertinoModalBarrierColor.withOpacity(0.35),
                                          blurRadius: 4
                                        )
                                      ],
                                      color : Color.fromRGBO(250, 250, 253, 1),
                                    )
                                )
                              ],
                            ),
                          )


                        ],
                      ),
    ));
                }





}
