import 'package:hm_shop/contants/index.dart';
import 'package:hm_shop/utils/DioRequest.dart';
import 'package:hm_shop/viewmodels/home.dart';

Future<List<BannerItem>> getBannerListAPI() async {
  return ((await dioRequest.get(HttpConstants.BANNER_LIST)) as List).map((
    item,
  ) {
    return BannerItem.formJSON(item as Map<String, dynamic>);
  }).toList();
}

//分类列表
Future<List<CategoryItem>> getCategoryListAPI() async {
  return ((await dioRequest.get(HttpConstants.CATEGORY_LIST)) as List).map((
    item,
  ) {
    return CategoryItem.formJSON(item as Map<String, dynamic>);
  }).toList();
}

//特惠推荐
Future<SpecialRecommendation> getSpecialRecommendationAPI() async {
  return SpecialRecommendation.formJSON(
    await dioRequest.get(HttpConstants.PRODUCT_LIST),
  );
}

// 热榜推荐
Future<SpecialRecommendation> getInVogueListAPI() async {
  // 返回请求
  return SpecialRecommendation.formJSON(
    await dioRequest.get(HttpConstants.IN_VOGUE_LIST),
  );
}

// 一站式推荐
Future<SpecialRecommendation> getOneStopListAPI() async {
  // 返回请求
  return SpecialRecommendation.formJSON(
    await dioRequest.get(HttpConstants.ONE_STOP_LIST),
  );
}

// 推荐列表
Future<List<GoodDetailItem>> getRecommendListAPI(
  Map<String, dynamic> params,
) async {
  // 返回请求
  return ((await dioRequest.get(HttpConstants.RECOMMEND_LIST, params: params))
          as List)
      .map((item) {
        return GoodDetailItem.formJSON(item as Map<String, dynamic>);
      })
      .toList();
}
