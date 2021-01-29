import 'package:flutter_module/generated/json/base/json_convert_content.dart';

class IndexBean with JsonConvert<IndexBean> {
	List<IndexBeanData> data;
	int errorCode;
	String errorMsg;
}

class IndexBeanData with JsonConvert<IndexBeanData> {
	List<dynamic> children;
	int courseId;
	int id;
	String name;
	int order;
	int parentChapterId;
	bool userControlSetTop;
	int visible;
}
