import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'change_user_password_request.g.dart';

@JsonSerializable(createFactory: false)
class ChangeUserPasswordRequest implements EquatableMixin {
  const ChangeUserPasswordRequest({
    required this.process,
    required this.action,
    required this.user_id,
    required this.old_password,
    required this.new_password,
  });

  final String process;
  final String action;
  final String user_id;
  final String old_password;
  final String new_password;

  Map<String, dynamic> toJson() => _$ChangeUserPasswordRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        user_id,
        old_password,
        new_password,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
