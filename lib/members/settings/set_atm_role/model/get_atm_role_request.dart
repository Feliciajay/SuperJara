import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_atm_role_request.g.dart';

@JsonSerializable(createFactory: false)
class GetAtmRoleRequest implements EquatableMixin {
  const GetAtmRoleRequest({
    required this.process,
    required this.action,
    required this.userId,
  });

  final String process;
  final String action;
  final String userId;

  Map<String, dynamic> toJson() => _$GetAtmRoleRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        userId,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
