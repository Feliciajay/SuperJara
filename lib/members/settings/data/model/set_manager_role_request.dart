import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'set_manager_role_request.g.dart';

@JsonSerializable(createFactory: false)
class SetManagerRoleRequest implements EquatableMixin {
  const SetManagerRoleRequest(
      {required this.process,
      required this.action,
      required this.userId,
      required this.roleStatus});

  final String process;
  final String action;
  final String userId;
  final String roleStatus;

  Map<String, dynamic> toJson() => _$SetManagerRoleRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        userId,
        roleStatus,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
