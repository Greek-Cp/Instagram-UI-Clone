import 'package:flutter/material.dart';

class PageSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          ImageIcon(AssetImage("assets/nav_search_ic.png")),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Cari")
                        ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Terbaru"),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
