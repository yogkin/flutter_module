import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/mvp/base_page_presenter.dart';
import 'package:flutter_module/mvp/mvps.dart';
import 'package:flutter_module/mvp/simple_page.dart';
import 'package:flutter_module/net/base_entity.dart';
import 'package:flutter_module/net/dio_utils.dart';
import 'package:flutter_module/res/resources.dart';
import 'package:flutter_module/widgets/list_card_view.dart';
import 'package:flutter_module/mvp/base_page.dart';
import 'package:flutter_module/mvp/base_presenter.dart';
import 'package:flutter_module/net/http_api.dart';

import 'bean/index_bean.dart';

class NetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NetPage();
  }
}

class _NetPage extends SimplePage<NetPage> {
  final items = [ItemTap('请求一个网络', '')];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('网络请求'),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          itemBuilder: (context, index) => ListCardView(
                items[index],
                callBack: () {
                  presenter.requestNetwork<List<IndexBeanData>>(Method.get,
                      url: HttpApi.users, onSuccess: (data) {
                          showToast(data.map((e) => e.name).toString());
                      });
                },
              ),
          separatorBuilder: (context, index) => Gaps.vGap10,
          itemCount: items.length),
    );
  }
}
