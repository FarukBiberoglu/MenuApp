import 'package:flutter/material.dart';
import 'package:untitled39/yemekler.dart';

class DetaySayfa extends StatefulWidget {
  Yemekler yemekk;
  DetaySayfa({required this.yemekk});
  @override
  _DetaySayfaState createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.yemekk.yemek_adi),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.yemekk.yemek_resim_adi}"),
            Text("${widget.yemekk.yemek_fiyat} \u{20BA}",style: TextStyle(fontSize: 48,color: Colors.blue),),
            SizedBox(width: 200,height: 50,
              child: ElevatedButton(
                child: Text("SİPARİŞ VER",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange
                ),
                onPressed: (){
                  print("${widget.yemekk.yemek_adi} sipariş verildi");
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}


