import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'change_user_plan_request.g.dart';

@JsonSerializable(createFactory: false)
class ChangeUserPlanRequest implements EquatableMixin {
  const ChangeUserPlanRequest({
    required this.process,
    required this.action,
    required this.user_id,
    required this.plan_id,
    required this.bypass_plan,
  });

  final String process;
  final String action;
  final String user_id;
  final String plan_id;
  final String bypass_plan;

  Map<String, dynamic> toJson() => _$ChangeUserPlanRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        user_id,
        plan_id,
        bypass_plan,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
