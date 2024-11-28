import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_manager_role_request.g.dart';

@JsonSerializable(createFactory: false)
class GetManagerRoleRequest implements EquatableMixin {
  const GetManagerRoleRequest({
    required this.process,
    required this.action,
    required this.userId,
  });

  final String process;
  final String action;
  final String userId;

  Map<String, dynamic> toJson() => _$GetManagerRoleRequestToJson(this);

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
