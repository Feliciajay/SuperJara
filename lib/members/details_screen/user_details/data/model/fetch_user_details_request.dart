import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_user_details_request.g.dart';

@JsonSerializable(createFactory: false)
class FetchUserDetailsRequest implements EquatableMixin {
  const FetchUserDetailsRequest({
    required this.process,
    required this.action,
    required this.user_id,
  });

  final String process;
  final String action;
  final String user_id;

  Map<String, dynamic> toJson() => _$FetchUserDetailsRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        user_id,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
