import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
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
                    child: Row(
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
                               child: Image.network('https://free-png.ru/wp-content/uploads/2022/05/free-png.ru-268-340x280.png'),
                             ),
                           ),
                           Text('Сладости'),
                         ],
                    ),
                  ),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
