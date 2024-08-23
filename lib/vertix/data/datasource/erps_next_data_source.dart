import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:vertex_teeth_industry/vertix/data/model/add_order_vertix_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/details_order_vertex/comment_order_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/details_order_vertex/details_order_vertex_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/details_payment_entry_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/faq_question_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/order_vertix_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/payment_entry_user_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/tooth_history_log_model.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/details_order_vertex_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/details_payment_entry_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/faq_question_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/order_vertix_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/payment_entry_user_entities.dart';

import '../../../core/error/exceptions.dart';
import '../../domain/entities/comment_entites.dart';
import '../../domain/entities/user_register_entites.dart';
import 'package:http/http.dart' as http;

import '../model/user_register_mold.dart';

abstract class ERPnextDataSource {
  Future<UserRegisterEntites> registerUserData({
    required String userEmail,
    required String userPassWord,
  });

  Future<List<OrderVertixEntities>> getAllVertixOrder(
      {required String sidToken});

  //
  Future<DetailsOrderVertexEntities> getDetailsOrderVertexDataSourse({
    required String sidToken,
    required String idOrder,
  });

  //
  Future<List<CommentOnOrderEntities>> getCommentsOnOrderDataSource({
    required String sidToken,
    required String idOrder,
  });

  //
  Future<Unit> addCommentsOnOrderDataSource({
    required String sidToken,
    required String idOrder,
    required String commentText,
  });

  //
  Future<Unit> rejectOrderVertextWithMessageDataSource({
    required String sidToken,
    required String idOrder,
    required String message,
  });

  //

  Future<List<FAQQuestionEntities>> getAllFAQQuestionData(
      {required String sidToken});

  //

  Future<List<PaymentEnteryUserEntities>> getAllPaymentEntryUser(
      {required String sidToken});
  //

  Future<String> getCustomerNameOfSessionUser({required String sidToken});

  //

  Future<List<String>> getImagesBannerAds({required String sidToken});

  //
  Future<Unit> addOrderVertix(
      {required String sidToekn,
      required AddOrderVertixModel addOrderVertixModel});
  //
  Future<double> getTotalMoneyUnpaidOfUser({
    required String sidToekn,
  });
  //
  Future<DetailesPaymentEntryEntities> getDetailsPaymentEntryDataSource({
    required String sidToken,
    required String idNamePayment,
  });

  // End Abstract Class
}

// const baseURL = 'https://vertex.frappe.cloud';
const baseURL = 'https://vertex.micronext.net';

class ERPnextDataSourceImple implements ERPnextDataSource {
  //
  //

  @override
  Future<UserRegisterEntites> registerUserData(
      {required String userEmail, required String userPassWord}) async {
    //

    UserRegisterEntites? userRegisterEntites;
    //
    String url =
        // 'https://vertex.frappe.cloud?User=api@micronext.net&Pass=90807060';
        // usr =api@micronext.net
        // usr =api@micronext.net
        // pwd =90807060

        //
        '$baseURL/api/method/vertex_app.api.login?usr=$userEmail&pwd=$userPassWord';

    //
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      //
      final extrctedData = json.decode(response.body);

      userRegisterEntites = UserRegisterModel.fromJson(
        fullName: extrctedData['full_name'],
        json: extrctedData['message'],
        // listRoleString: listRoleString,
      );



      return Future.value(userRegisterEntites);
    } else if (response.statusCode == 500) {
      //
      //
      // Either Email or Password are wrong
      //

      throw EmailOrPassWordWrongException();
      // return Future.value(unit);
    } else {
      //
      throw UnKnownException();
    }

    // End Method Register
    // ------------------------------------------
  }

  @override
  Future<List<OrderVertixEntities>> getAllVertixOrder(
      {required String sidToken}) async {
    //

    String url =
        '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.get_vertex_orders?sid=$sidToken';

    //
    List<OrderVertixEntities> listOrderVertixEntities = [];
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);

      //
      if (extractedData != null) {
        //
        //

        final listExracted = extractedData['message'];

        if (listExracted != null) {
          //
          listExracted.forEach((value) {
            //
            listOrderVertixEntities.add(OrderVertixModel.fromJson(json: value));
            // End For Ech
          });
          //
          if (listOrderVertixEntities.isEmpty) {
            //  if listExtracted is Empty
            throw GetOrderVertixEmptyException();
          }

          //
          return Future.value(listOrderVertixEntities);
        } else {
          //
          //  if listExtracted is Empty
          throw GetOrderVertixEmptyException();
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw GetOrderVertixEmptyException();
      }
      //
    } else if (response.statusCode == 500) {
      //
      if (response.body.contains('"session_expired":1')) {
        //
        throw SessionExpiredException();
      }
      //

      throw ServerException();
      //
    } else {
      //
      //
      if (response.body.contains('"session_expired":1')) {
        //
        throw SessionExpiredException();
      }
      /*
      flutter: The Error is UnKnown  the error is {"session_expired":1,"exception":"frappe.exceptions.PermissionError: <details><summary>You are not permitted to access this resource.</summary>Function <strong>vertex_app.vertex_app.doctype.vertex_order.vertex_order.get_vertex_orders</strong> is not whitelisted.</details>","exc_type":"PermissionError","exc":"[\"Traceback (most recent call last):\\n  File \\\"apps/frappe/frappe/app.py\\\", line 114, in application\\n    response = frappe.api.handle(request)\\n  File \\\"apps/frappe/frappe/api/__init__.py\\\", line 49, in handle\\n    data = endpoint(**arguments)\\n  File \\\"apps/frappe/frappe/api/v1.py\\\", line 36, in handle_rpc_call\\n    return frappe.handler.handle()\\n  File \\\"apps/frappe/frappe/handler.py\\\", line 49, in handle\\n    data = execute_cmd(cmd)\\n  File \\\"apps/frappe/frappe/handler.py\\\", line 82, in execute_cmd\\n    is_whitelisted(method)\\n  File \\\"apps/frappe/frappe/__init__.py\\\", line 900, in is_whitelisted\\n    thro<…>*/
      //
      throw UnKnownException();
    }
    // End Method Get All Vertix Order


  }

  @override
  Future<Unit> addOrderVertix(
      {required String sidToekn,
      required AddOrderVertixModel addOrderVertixModel}) async {
    //
    //
    List<ToothHistoryLogModel> listToothHistoryModel = [];

    listToothHistoryModel =
        addOrderVertixModel.listToothHistoryLogEntities.map((item) {
      //
      ToothHistoryLogModel toothHistoryLogModel = ToothHistoryLogModel(
        teethGroupNamesString: item.teethGroupNamesString,
        ndShadeGuide: item.ndShadeGuide,
        // teethGroupNames: item.teethGroupNames,
        toothDescription: item.toothDescription,
        toothStatus: item.toothStatus,
        productType: item.productType,
        pfmLaser: item.pfmLaser,
        tempoary: item.tempoary,
        inlayAndOnlay: item.inlayAndOnlay,
        zicronFacingEMax: item.zicronFacingEMax,
        zicronFullAnatomy: item.zicronFullAnatomy,
        zicronLayered: item.zicronLayered,
        zicronPrettauAnterior: item.zicronPrettauAnterior,
        eMaxPress: item.eMaxPress,
        eMaxSuprem: item.eMaxSuprem,
      );
      return toothHistoryLogModel;
    }).toList();

    //
    //
    //

    //
    //
    String url = '$baseURL/api/resource/Vertex%20Order?sid=$sidToekn';

    //
    //

    final jsonData = addOrderVertixModel.toJson(
        listToothHistoryLogModel: listToothHistoryModel);
    //
    //
    //
    final jsonEncodedData = json.encode(jsonData);
    //
    //
    //
    final res = await http.post(Uri.parse(url), body: jsonEncodedData);

    //
    //

    //
    if (res.statusCode == 200) {
      //
      return Future.value(unit);
      //
    } else if (res.statusCode == 500) {
      //
      //

      //
      throw ServerException();
      //
    } else {
      //
      //

      //
      throw UnKnownException();
      //
    }
    //
  }

  @override
  Future<List<PaymentEnteryUserEntities>> getAllPaymentEntryUser(
      {required String sidToken}) async {
    //
    //  https://vertex.frappe.cloud/api/method/vertex_app.overrides.payment_entry.get_payment_entry_details
    String url =
        '$baseURL/api/method/vertex_app.overrides.payment_entry.get_payment_entry_details?sid=$sidToken';

    //
    List<PaymentEnteryUserEntities> listPaymentEntryUserEntities = [];
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);

      //
      if (extractedData != null) {
        //
        //

        final listExracted = extractedData['message'];

        if (listExracted != null) {
          //
          listExracted.forEach((value) {
            //
            listPaymentEntryUserEntities
                .add(PaymentEntryUserModel.fromJson(json: value));
            // End For Ech
          });
          //

          //
          return Future.value(listPaymentEntryUserEntities);
        } else {
          //
          //  if listExtracted is Empty
          throw GetPaymentEntryUserEmptyException();
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw GetPaymentEntryUserEmptyException();
      }
      //
    } else if (response.statusCode == 500) {
      //
      throw ServerException();
      //
    } else {
      //
      throw UnKnownException();
    }
    // End Method Get All Vertix Order

    //
    /*
    */
  }

  @override
  Future<String> getCustomerNameOfSessionUser(
      {required String sidToken}) async {
    //
    // https://vertex.frappe.cloud/api/method/vertex_app.api.get_customer_name

    String url =
        '$baseURL/api/method/vertex_app.api.get_customer_name?sid=$sidToken';

    //
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);

      //
      if (extractedData != null) {
        //
        //

        final nameCustome = extractedData['message'];

        if (nameCustome != null) {
          //
          final reslt = nameCustome;

          //

          //
          return Future.value(reslt);
        } else {
          //
          //  if Name Custome is Empty
          throw CustomerNameForSessionUserEmptyException;
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw CustomerNameForSessionUserEmptyException;
      }
      //
    } else if (response.statusCode == 500) {
      //
      throw ServerException();
      //
    } else {
      //
      throw UnKnownException();
    }
    // end Method get customer Name
  }

  @override
  Future<double> getTotalMoneyUnpaidOfUser({required String sidToekn}) async {
    //
    // https://vertex.frappe.cloud/api/method/vertex_app.api.get_customer_debt

    String url =
        '$baseURL/api/method/vertex_app.api.get_customer_debt?sid=$sidToekn';

    //
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);

      //
      if (extractedData != null) {
        //
        //

        final totalMoneyUser = extractedData['message'][0]['total_amount'];

        if (totalMoneyUser != null) {
          //
          final reslt = totalMoneyUser;

          //

          //
          return Future.value(reslt);
        } else {
          //
          //  if Total Money  is Empty
          throw TotalMoneyUnpaidUserEmptyException();
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw TotalMoneyUnpaidUserEmptyException();
      }
      //
    } else if (response.statusCode == 500) {
      //
      throw ServerException();
      //
    } else {
      //
      throw UnKnownException();
    }
    // end Method get  Total Money unpaid
  }

  @override
  Future<List<String>> getImagesBannerAds({required String sidToken}) async {
    //
    // https://vertex.frappe.cloud/api/method/vertex_app.api.get_banner

    String url = '$baseURL/api/method/vertex_app.api.get_banner?sid=$sidToken';

    //
    List<String> listImages = [];
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);

      //
      if (extractedData != null) {
        //
        //

        final listExracted = extractedData['message'];

        if (listExracted != null) {
          //
          //
          listExracted.forEach((value) {
            //
            // banner_image
            //
            listImages.add(value['banner_image']);

            // End For Ech
          });

          //

          //
          return Future.value(listImages);
        } else {
          //
          //  if banner Images  is Empty
          throw ImagesBannerAdsEmptyException();
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw ImagesBannerAdsEmptyException();
      }
      //
    } else if (response.statusCode == 500) {
      //      //
      if (response.body.contains('"session_expired":1')) {
        //
        throw SessionExpiredException();
      }
     
      //
      throw ServerException();
      //
    } else {
      //
     
      //
      if (response.body.contains('"session_expired":1')) {
        //
        throw SessionExpiredException();
      }
      throw UnKnownException();
    }
    // end Method get  Images Banner Ads
  }

  @override
  Future<List<FAQQuestionEntities>> getAllFAQQuestionData(
      {required String sidToken}) async {
    //
    // https://vertex.frappe.cloud/api/method/vertex_app.vertex_app.doctype.vertex_app_faq.vertex_app_faq.get_vertex_app_faq

    String url =
        '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_app_faq.vertex_app_faq.get_vertex_app_faq?sid=$sidToken';

    //
    List<FAQQuestionEntities> lisFAQquestion = [];
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);

      //
      if (extractedData != null) {
        //
        //

        final listExracted = extractedData['message'];

        if (listExracted != null) {
          //
          listExracted.forEach((value) {
            //
            lisFAQquestion.add(FAQQuestionModel.fromJson(json: value));
            // End For Ech
          });
          //

          //
          return Future.value(lisFAQquestion);
        } else {
          //
          //  if lisFAQquestion is Empty
          throw FAQQuestionEmptyException();
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw FAQQuestionEmptyException();
      }
      //
    } else if (response.statusCode == 500) {
      //
      throw ServerException();
      //
    } else {
      //
      throw UnKnownException();
    }
    // End Method Get All  FAQ Question Method
  }

  @override
  Future<DetailesPaymentEntryEntities> getDetailsPaymentEntryDataSource(
      {required String sidToken, required String idNamePayment}) async {
    //
    baseURL;
    String url =
        // '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_app_faq.vertex_app_faq.get_vertex_app_faq?sid=$sidToken';
        '$baseURL/api/method/vertex_app.overrides.payment_entry.get_payment_entry_detail?sid=$sidToken&payment_entry=$idNamePayment';

    //]
    //

    // List<DetailesPaymentEntryEntities> listDetailsPaymentEntry = [];
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);
      //
      //

      //
      if (extractedData != null) {
        //
        //

        final listExracted = extractedData['message'];
        //

        if (listExracted != null) {
          //
          // listExracted.forEach((value) {
          //
          final reslt = DetailsPaymentEntryModel.fromJson(json: listExracted);
          // End For Ech
          // });
          //

          //

          //
          return Future.value(reslt);
        } else {
          //
          //  if list Details Payment Entry is Empty
          throw EmptyDetailspaymentEntryException();
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw EmptyDetailspaymentEntryException();
      }
      //
    } else if (response.statusCode == 500) {
      //
      throw ServerException();
      //
    } else {
      //
      throw UnKnownException();
    }
    // End Method Get Details Payment Entry  Method
  }

  @override
  Future<DetailsOrderVertexEntities> getDetailsOrderVertexDataSourse(
      {required String sidToken, required String idOrder}) async {
    //
    baseURL;
    String url =
        '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.get_vertex_order?sid=$sidToken&order=$idOrder';
    //
    // List<DetailesPaymentEntryEntities> listDetailsPaymentEntry = [];
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);

      //
      if (extractedData != null) {
        //
        //

        final listExracted = extractedData['message'];
        //

        if (listExracted != null) {
          //
          // listExracted.forEach((value) {
          //
          final reslt = DetailsOrderVertexModel.fromJson(json: listExracted);
          // End For Ech
          // });

          //

          //
          return Future.value(reslt);
        } else {
          //
          //  if    Details  Order Vertex is Empty
          throw EmptyDetailsOrderVertexException();
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw EmptyDetailsOrderVertexException();
      }
      //
    } else if (response.statusCode == 500) {
      //
      throw ServerException();
      //
    } else {
      //
      throw UnKnownException();
    }
    // End Method Get Details Order Vertex  Method
  }

  // @override
  // Future<Unit> rejectOrderVertextWithMessageDataSource(
  //     {required String sidToken,
  //     required String idOrder,
  //     required String message}) async {
  //   //
  //   //

  //   //
  //   //  https://vertex.micronext.net/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.update_order_case_rejected
  //   //
  //   //
  //   print('\n');
  //   print('\n');
  //   print('The Reject Order With Message');
  //   print('\n');
  //   print('\n');
  //   //
  //   //
  //   String url =
  //       'https://vertex.micronext.net/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.update_order_case_rejected?sid=$sidToken';
  //   // '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.update_order_case_rejected?sid=$sidToken';

  //   //
  //   //

  //   final jsonData = {
  //     'self': idOrder,
  //     'case_rejected_reason': message,
  //   };
  //   //

  //   //
  //   //
  //   final jsonEncodedData = json.encode(jsonData);
  //   //
  //   //
  //   //
  //   // await http.p
  //   final res = await http.post(Uri.parse(url), body: jsonEncodedData);

  //   //
  //   print('\n');
  //   print('\n');
  //   print('The Json Code is $jsonEncodedData');
  //   print('\n');
  //   print('\n');

  //   //
  //   //
  //   if (res.statusCode == 200) {
  //     //
  //     return Future.value(unit);
  //     //
  //   } else if (res.statusCode == 500) {
  //     //
  //     //
  //     //

  //     print('\n');
  //     print('\n');
  //     print('The Error of 500 is ${res.body}');
  //     print('\n');
  //     print('\n');

  //     //
  //     throw ServerException();
  //     //
  //   } else {
  //     //
  //     //

  //     print('\n');
  //     print('\n');
  //     print('The Error of UnKnown is ${res.body}');
  //     print('\n');
  //     print('\n');

  //     //
  //     throw UnKnownException();
  //     //
  //   }
  //   //
  // } // End Method Reject Order with Message

  // ============================================================================
  @override
  Future<Unit> rejectOrderVertextWithMessageDataSource(
      {required String sidToken,
      required String idOrder,
      required String message}) async {
    String url =
        '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.update_order_case_rejected?sid=$sidToken';

    final Map<String, String> headers = {
      'Content-Type': 'application/x-www-form-urlencoded'
    };

    final Map<String, String> body = {
      'self': idOrder,
      'case_rejected_reason': message,
    };

    final res = await http.put(Uri.parse(url), headers: headers, body: body);

    if (res.statusCode == 200) {
      return Future.value(unit);
    } else if (res.statusCode == 500) {
      throw ServerException();
    } else {
      throw UnKnownException();
    }
  }

  @override
  Future<List<CommentOnOrderEntities>> getCommentsOnOrderDataSource(
      {required String sidToken, required String idOrder}) async {
    //

    List<CommentOnOrderEntities> listComment = [];

    baseURL;
    String url =
        '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.get_order_comments?name=$idOrder&sid=$sidToken';
    // '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.get_vertex_order?sid=$sidToken&order=$idOrder';
    //
    //
    var response = await http.get(Uri.parse(url));

    //
    if (response.statusCode == 200) {
      //
      final extractedData = json.decode(response.body);

      //
      if (extractedData != null) {
        //
        //

        final listExracted = extractedData['message'];
        //

        if (listExracted != null) {
          //
          listExracted.forEach((value) {
            //
            listComment.add(CommentOnOrderModel.fromJson(json: value));
            // End For Ech
          });

          //
          if (listComment.isNotEmpty) {
            //
            //
            return Future.value(listComment);
          } else {
            //  if      Order Comments Vertex is Empty
            throw EmptyCommentsOnOrderException();
          }

          //
        } else {
          //
          //  if    Details  Order Vertex is Empty
          throw EmptyCommentsOnOrderException();
          //
        }
        //

        //
      } else {
        //
        //  it should throw NoData Exception
        //
        throw EmptyCommentsOnOrderException();
      }
      //
    } else if (response.statusCode == 500) {
      //
      throw ServerException();
      //
    } else {
      //
      throw UnKnownException();
    }
    // End Method Get Comment on  Order Vertex  Method
  }

  @override
  Future<Unit> addCommentsOnOrderDataSource({
    required String sidToken,
    required String idOrder,
    required String commentText,
  }) async {
    //
    //

    //
    //
    //

    //
    //
    String url =
        'https://vertex.micronext.net/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.insert_order_comment?name=$idOrder&comment=$commentText&sid=$sidToken';
    // '$baseURL/api/resource/Vertex%20Order?sid=$sidToken';

    //
    //

    // final jsonData = {'name': idOrder, 'comment': commentText};
    //
    //
    //
    // final jsonEncodedData = json.encode(jsonData);
    //
    //
    //
    final res = await http.post(
      Uri.parse(url),
      // body: jsonEncodedData
    );

    //
    //

    //
    if (res.statusCode == 200) {
      //
      return Future.value(unit);
      //
    } else if (res.statusCode == 500) {
      //
      //
  

      //
      throw ServerException();
      //
    } else {
      //
      //
      //
  

      //
      throw UnKnownException();
      //
    }
    // end Method Add Comment On Order
  }

  // End Class DataSource
}
