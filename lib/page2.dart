import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'hesablayici.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Hesablayici>(
              builder: (context, Hesablayici, child) {
                return Text(
                  '${Hesablayici.deyer}',
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Consumer<Hesablayici>(
              builder: (BuildContext context, Hesablayici, Widget? child) {
                return ElevatedButton(
                  onPressed: () {
                    Hesablayici.artir();
                  },
                  child: const Text('artir'),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Consumer<Hesablayici>(
              builder: (context, Hesablayici, child) {
                return ElevatedButton(
                  onPressed: () {
                    Hesablayici.azalt(2);
                  },
                  child: const Text('azalt'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
