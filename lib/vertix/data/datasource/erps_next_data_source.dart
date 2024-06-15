import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:vertex_teeth_industry/vertix/data/model/add_order_vertix_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/faq_question_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/order_vertix_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/payment_entry_user_model.dart';
import 'package:vertex_teeth_industry/vertix/data/model/tooth_history_log_model.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/faq_question_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/order_vertix_entities.dart';
import 'package:vertex_teeth_industry/vertix/domain/entities/payment_entry_user_entities.dart';

import '../../../core/error/exceptions.dart';
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

  // End Abstract Class
}

const baseURL = 'https://vertex.frappe.cloud';

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
        // pwd =90807060

        // https://vertex.frappe.cloud/api/method/vertex_app.api.login?usr=api@micronext.net&pwd=90807060

        //
        '$baseURL/api/method/vertex_app.api.login?usr=$userEmail&pwd=$userPassWord';

    //
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      //
      final extrctedData = json.decode(response.body);

      // final fullName = extrctedData['full_name'];

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
      throw ServerException();
      //
    } else {
      //
      throw UnKnownException();
    }
    // End Method Get All Vertix Order

    //
    /*
    https://vertex.frappe.cloud/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.get_vertex_orders?sid=5a301a68255336f398a3a9fe96cc35908084732d2d80824b3194e62a&api_secret=8a6b7084b61b69c&api_key=bf66075e8ea4e36 
    */
  }

  @override
  Future<Unit> addOrderVertix(
      {required String sidToekn,
      required AddOrderVertixModel addOrderVertixModel}) async {
    //
    List<ToothHistoryLogModel> listToothHistoryModel = [];

    listToothHistoryModel =
        addOrderVertixModel.listToothHistoryLogEntities.map((item) {
      //
      ToothHistoryLogModel toothHistoryLogModel = ToothHistoryLogModel(
        teethGroupNamesString: item.teethGroupNamesString,
        teethGroupNames: item.teethGroupNames,
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
    String url =
        // '$baseURL/api/method/vertex_app.vertex_app.doctype.vertex_order.vertex_order.insert_vertex_order?sid=$sidToekn';
        'https://vertex.frappe.cloud/api/resource/Vertex%20Order?sid=$sidToekn';

    //

    final jsonData = addOrderVertixModel.toJson(
        listToothHistoryLogModel: listToothHistoryModel);
    //
    final jsonEncodedData = json.encode(jsonData);
    //
    final res = await http.post(Uri.parse(url), body: jsonEncodedData);

    //
    //
    if (res.statusCode == 200) {
      //
      return Future.value(unit);
      //
    } else if (res.statusCode == 500) {
      //
      //
      throw ServerException();
      //
    } else {
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
      //
      throw ServerException();
      //
    } else {
      //
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
  // End Class DataSource
}
