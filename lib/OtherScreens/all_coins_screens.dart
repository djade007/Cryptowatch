import 'package:cryptowatch/models/big_data_models.dart';
import 'package:cryptowatch/widgets/coin_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AllCoins extends StatelessWidget {
  const AllCoins(this.futureCoins,this.required_list, {Key? key}) : super(key: key);
  final Future<BigDataModel> futureCoins;
  final List<String> required_list;
  @override
  Widget build(BuildContext context) {
    double all_coins_height = MediaQuery.of(context).size.height * 0.879;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.090,
          left: 24,
          right: 24,
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                }, child: Icon(CupertinoIcons.arrow_left, size: 21)),
              Text('All Coins',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
              Icon(
                IconlyLight.search,
                size: 24,
              ),
            ],
          ),
          CoinListWidget(
            futureCoins: futureCoins,
            required_height: all_coins_height,
            required_list: required_list,
          )
        ]),
      ),
    );
  }
}
