import 'package:flutter/material.dart';

import 'model/class.dart';

class Gradient_ extends StatefulWidget {
  const Gradient_({Key? key}) : super(key: key);

  @override
  State<Gradient_> createState() => _Gradient_State();
}

class _Gradient_State extends State<Gradient_> {
  List<TransferModel> listOfSearch = [];
  bool isSearching = false;
  List<TransferModel> list = [
    TransferModel(
        name: "James Michel",
        bankInfo: "4242 4242 4242 4242",
        linerColors: [Color(0xffFBC2EB), Color(0xffA6C1EE)]),
    TransferModel(
        name: "Tony Stark",
        bankInfo: "4242 7777 4242 7777",
        linerColors: [Color(0xffF4C96D), Color(0xff9AD6E9)]),
    TransferModel(
        name: "Jon Konor",
        bankInfo: "6666 4242 6666 4242",
        linerColors: [Color(0xffEBBBA7), Color(0xffCFC7F8)]),
    TransferModel(
        name: "Charlie William",
        bankInfo: "4242 4242 4242 4242",
        linerColors: [Color(0xff8FEFE9), Color(0xffDBBAEF)]),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Color(0xff133FDB),
                          Color(0xffB7004D).withOpacity(0.3)
                        ])),
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      padding: EdgeInsets.all(2),
                      child: ClipOval(
                        child: Image.network(
                            'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000'),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 4,
                      right: 2,
                      child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            border: Border.all(color: Colors.white, width: 2)),
                      ))
                ],
              ),
            ],
          ),
          TextFormField(
            onChanged: (text) {
              listOfSearch.clear();
              list.forEach((element) {
                if (element.name.toUpperCase().contains(text.toUpperCase())) {
                  listOfSearch.add(element);
                }
              });
              isSearching = true;
              setState(() {});
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          Expanded(
            child: isSearching
                ? ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 35),
                    itemCount: listOfSearch.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [...listOfSearch[index].linerColors],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                    "${listOfSearch[index].name.substring(
                                          0,
                                          1,
                                        )}"
                                    "${listOfSearch[index].name.substring(listOfSearch[index].name.indexOf(" ") + 1, listOfSearch[index].name.indexOf(" ") + 2)}"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(listOfSearch[index].name),
                                  Text("2 text 2 text 2 text"),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    })
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 35),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [...list[index].linerColors],
                                ),
                              ),
                              child: Center(
                                child: Text("${list[index].name.substring(
                                          0,
                                          1,
                                        )}"
                                    "${list[index].name.substring(list[index].name.indexOf(" ") + 1, list[index].name.indexOf(" ") + 2)}"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(list[index].name),
                                  Text("2 text 2 text 2 text"),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
          )
        ],
      ),
    );
  }
}
//smooth like butter like a criminal under cover gone pop like trouble breakin into ur heart like that oh
//cool shaade stunner yeah I owe it to my mother hot like summer yeah I'm making u feel like that
