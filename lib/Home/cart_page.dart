import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/user4.png",
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Dion S",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            "",
                          ),
                          Text(
                            "- Mie Tek-Tek    :   10.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- Hilo   :   4.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.attach_money_rounded,
                color: Colors.black,
              ),
              title: Text(
                "Tagihan   :    14.000",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                "Lokasi   :   JL. Perintis no.2c",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),

            //Benni
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/user2.png",
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Benni",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            "",
                          ),
                          Text(
                            "- Magelangan    :   11.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- Nasi Omelet    :   11.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- Hilo   :   4.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- Nurdin Jeruk   :   3.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.attach_money_rounded,
                color: Colors.black,
              ),
              title: Text(
                "Tagihan   :    29.000",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                "Lokasi   :   JL. Kampus Utara no.30",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),

            //Sugeng HR
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/user3.png",
                              height: 105,
                              width: 105,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Sugeng HR",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            "",
                          ),
                          Text(
                            "- Nasi Orak-Arik    :   12.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- Mie Goreng Komplit : 10.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- GoodDay   :   4.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- Nurdin Jeruk   :   3.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.attach_money_rounded,
                color: Colors.black,
              ),
              title: Text(
                "Tagihan   :    29.000",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                "Lokasi   :   JL. Makam Agus Salim",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),

            //Aisyah
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/user1.png",
                              height: 105,
                              width: 105,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Aisyah",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            "",
                          ),
                          Text(
                            "- Mie Dhok-Dhok    :   10.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- Nurdin Jeruk florida :  3.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.attach_money_rounded,
                color: Colors.black,
              ),
              title: Text(
                "Tagihan   :    13.000",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                "Lokasi   :   JL. Masjid",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),

            //Melly
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/user5.png",
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Melly",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            "",
                          ),
                          Text(
                            "- Mie Dhok-Dhok    :   10.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "- Nurdin Jeruk florida :  3.000",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.attach_money_rounded,
                color: Colors.black,
              ),
              title: Text(
                "Tagihan   :    13.000",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              title: Text(
                "Lokasi   :   JL. Pahlawan",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
