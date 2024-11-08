import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'count_member_request.g.dart';

@JsonSerializable(createFactory: false)
class CountMemberRequest implements EquatableMixin {
  const CountMemberRequest({
    required this.process,
    required this.action,
    required this.apiKey,
  });

  final String process;
  final String action;

  @JsonKey(defaultValue: "api_key")
  final String apiKey;

  Map<String, dynamic> toJson() => _$CountMemberRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [process, action, apiKey];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
