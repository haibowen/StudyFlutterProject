//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//
//import 'goods.dart';
//import 'goods_list_provider.dart';
//
//class GoodsListScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return ChangeNotifierProvider(
//      create: (_) => GoodsListProvider(),
//      child: Selector<GoodsListProvider, GoodsListProvider>(
//        shouldRebuild: (pre, next) => false,
//        selector: (context, provider) => provider,
//        builder: (context, provider, child) {
//          return ListView.builder(
//            itemCount: provider.total,
//            itemBuilder: (context, index) {
//              return Selector<GoodsListProvider, Goods>(
//                selector: (context, provider) => provider.goodsList[index],
//                builder: (context, data, child) {
//                  print(('No.${index + 1} rebuild'));
//
//                  return ListTile(
//                    title: Text(data.goodsName),
//                    trailing: GestureDetector(
//                      onTap: () => provider.collect(index),
//                      child: Icon(
//                          data.isCollection ? Icons.star : Icons.star_border),
//                    ),
//                  );
//                },
//              );
//            },
//          );
//        },
//      ),
//    );
//  }
//}
