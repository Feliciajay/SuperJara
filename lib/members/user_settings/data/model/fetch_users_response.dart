class FetchUsersResponse {
  final String serverMessage;
  final bool status;
  final FetchUserData data;
  final List<dynamic> dataResult;
  final List<dynamic> errorData;
  final String textStatus;
  final dynamic error;

  FetchUsersResponse({
    required this.serverMessage,
    required this.status,
    required this.data,
    required this.dataResult,
    required this.errorData,
    required this.textStatus,
    required this.error,
  });

  factory FetchUsersResponse.fromJson(Map<String, dynamic> json) =>
      FetchUsersResponse(
        serverMessage: json["server_message"],
        status: json["status"],
        data: FetchUserData.fromJson(json["data"]),
        dataResult: List<dynamic>.from(json["data_result"].map((x) => x)),
        errorData: List<dynamic>.from(json["error_data"].map((x) => x)),
        textStatus: json["text_status"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "server_message": serverMessage,
        "status": status,
        "data": data.toJson(),
        "data_result": List<dynamic>.from(dataResult.map((x) => x)),
        "error_data": List<dynamic>.from(errorData.map((x) => x)),
        "text_status": textStatus,
        "error": error,
      };
}

class FetchUserData {
  final Users allUsers;
  final Users activeUsers;
  final Users inactiveUsers;

  FetchUserData({
    required this.allUsers,
    required this.activeUsers,
    required this.inactiveUsers,
  });

  factory FetchUserData.fromJson(Map<String, dynamic> json) => FetchUserData(
        allUsers: Users.fromJson(json["all_users"]),
        activeUsers: Users.fromJson(json["active_users"]),
        inactiveUsers: Users.fromJson(json["inactive_users"]),
      );

  Map<String, dynamic> toJson() => {
        "all_users": allUsers.toJson(),
        "active_users": activeUsers.toJson(),
        "inactive_users": inactiveUsers.toJson(),
      };
}

class Users {
  final List<Datum> data;
  final Pagination pagination;

  Users({
    required this.data,
    required this.pagination,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
      };
}

class Datum {
  final int userid;
  final String refId;
  final String email;
  final String username;
  final String accessStatus;

  Datum({
    required this.userid,
    required this.refId,
    required this.email,
    required this.username,
    required this.accessStatus,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        userid: json["userid"],
        refId: json["ref_id"],
        email: json["email"],
        username: json["username"],
        accessStatus: json["access_status"],
      );

  Map<String, dynamic> toJson() => {
        "userid": userid,
        "ref_id": refId,
        "email": email,
        "username": username,
        "access_status": accessStatus,
      };
}

class Pagination {
  final int totalRecords;
  final int totalPages;
  final int currentPage;
  final int limit;

  Pagination({
    required this.totalRecords,
    required this.totalPages,
    required this.currentPage,
    required this.limit,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        totalRecords: json["total_records"],
        totalPages: json["total_pages"],
        currentPage: json["current_page"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "total_records": totalRecords,
        "total_pages": totalPages,
        "current_page": currentPage,
        "limit": limit,
      };
}
