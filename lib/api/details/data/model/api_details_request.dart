// import 'package:equatable/equatable.dart';
// import 'package:json_annotation/json_annotation.dart';

// part 'api_details_request.g.dart';

// @JsonSerializable(createFactory: false)
// class ApiDetailsRequest implements EquatableMixin {
//   const ApiDetailsRequest({
//     required this.process,
//     required this.action,
//     required this.search,
//     required this.id
//   });

//   final String process;
//   final String action;
//   final String search;
//   final int id;

//   Map<String, dynamic> toJson() => _$ApiDetailsRequestToJson(this);

//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   List<Object?> get props => [process, action];

//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   bool? get stringify => true;
// }
