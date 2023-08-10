import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.dashboard,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'Выберите тип доставки',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 170,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15),
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
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 53,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Text("Поиск по каталогу"),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 33,
                            backgroundColor: Colors.grey.shade300,
                            child: const Icon(
                              Icons.event_seat,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          const Text('Популярное'),
                        ],
                      ));
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'ПОПУЛЯРНОЕ',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 20,
                    width: 80,
                    child: const Center(
                      child: Text(
                        '+45 ещё >',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 280,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 280,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Raspberries_%28Rubus_Idaeus%29.jpg/275px-Raspberries_%28Rubus_Idaeus%29.jpg')),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Инжир сладкий золотой'),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('250 г',
                                style: TextStyle(color: Colors.grey)),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'товар недели',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 5.0),
                            child: Container(
                              width: 145,
                              height: 43,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.grey.shade300),
                              child: const Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '363.78 \$',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor:
                                                Colors.orangeAccent,
                                            decorationThickness: 2),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '-29 %',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '255 \$',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
