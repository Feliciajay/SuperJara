class FetchUserDetailsResponse {
  final String serverMessage;
  final bool status;
  final List<UserDetailsData> data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  FetchUserDetailsResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory FetchUserDetailsResponse.fromJson(Map<String, dynamic> json) =>
      FetchUserDetailsResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: List<UserDetailsData>.from(
            json["data"].map((x) => UserDetailsData.fromJson(x))),
        dataResult: List<dynamic>.from(json["data_result"].map((x) => x)),
        errorData: List<dynamic>.from(json["error_data"].map((x) => x)),
        textStatus: json["text_status"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "server_message": serverMessage,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "data_result": List<dynamic>.from(dataResult.map((x) => x)),
        "error_data": List<dynamic>.from(errorData.map((x) => x)),
        "text_status": textStatus,
        "error": error,
      };
}

class UserDetailsData {
  final int userid;
  final String userCode;
  final String username;
  final String email;
  final dynamic sex;
  final String phone;
  final dynamic street;
  final int city;
  final int state;
  final int country;
  final String dob;
  final String userType;
  final int rId;
  final int emailConfirm;
  final int phoneConfirm;
  final int confirmed;
  final String refId;
  final DateTime lastvisitdate;
  final DateTime whenjoined;
  final DateTime whenedited;
  final String firstname;
  final String lastname;
  final dynamic secretQuestion1;
  final dynamic secretAnswer1;
  final dynamic secretQuestion2;
  final dynamic secretAnswer2;
  final dynamic deletedMeta;
  final String walletBalance;
  final String cashback;

  UserDetailsData({
    required this.userid,
    required this.userCode,
    required this.username,
    required this.email,
    required this.sex,
    required this.phone,
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.dob,
    required this.userType,
    required this.rId,
    required this.emailConfirm,
    required this.phoneConfirm,
    required this.confirmed,
    required this.refId,
    required this.lastvisitdate,
    required this.whenjoined,
    required this.whenedited,
    required this.firstname,
    required this.lastname,
    required this.secretQuestion1,
    required this.secretAnswer1,
    required this.secretQuestion2,
    required this.secretAnswer2,
    required this.deletedMeta,
    required this.walletBalance,
    required this.cashback,
  });

  factory UserDetailsData.fromJson(Map<String, dynamic> json) =>
      UserDetailsData(
        userid: json["userid"],
        userCode: json["user_code"],
        username: json["username"],
        email: json["email"],
        sex: json["sex"],
        phone: json["phone"],
        street: json["street"],
        city: json["city"] ?? 0 ?? '',
        state: json["state"] ?? 0 ?? '',
        country: json["country"],
        dob: json["dob"],
        userType: json["user_type"],
        rId: json["r_id"],
        emailConfirm: json["email_confirm"],
        phoneConfirm: json["phone_confirm"],
        confirmed: json["confirmed"],
        refId: json["ref_id"],
        lastvisitdate: DateTime.parse(json["lastvisitdate"]),
        whenjoined: DateTime.parse(json["whenjoined"]),
        whenedited: DateTime.parse(json["whenedited"]),
        firstname: json["firstname"],
        lastname: json["lastname"],
        secretQuestion1: json["secret_question1"],
        secretAnswer1: json["secret_answer1"],
        secretQuestion2: json["secret_question2"],
        secretAnswer2: json["secret_answer2"],
        deletedMeta: json["deleted_meta"],
        walletBalance: json["wallet_balance"],
        cashback: json["cashback"],
      );

  Map<String, dynamic> toJson() => {
        "userid": userid,
        "user_code": userCode,
        "username": username,
        "email": email,
        "sex": sex,
        "phone": phone,
        "street": street,
        "city": city,
        "state": state,
        "country": country,
        "dob": dob,
        "user_type": userType,
        "r_id": rId,
        "email_confirm": emailConfirm,
        "phone_confirm": phoneConfirm,
        "confirmed": confirmed,
        "ref_id": refId,
        "lastvisitdate": lastvisitdate.toIso8601String(),
        "whenjoined": whenjoined.toIso8601String(),
        "whenedited": whenedited.toIso8601String(),
        "firstname": firstname,
        "lastname": lastname,
        "secret_question1": secretQuestion1,
        "secret_answer1": secretAnswer1,
        "secret_question2": secretQuestion2,
        "secret_answer2": secretAnswer2,
        "deleted_meta": deletedMeta,
        "wallet_balance": walletBalance,
        "cashback": cashback,
      };
}
