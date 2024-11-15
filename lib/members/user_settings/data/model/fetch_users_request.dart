import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_users_request.g.dart';

@JsonSerializable(createFactory: false)
class FetchUserRequest implements EquatableMixin {
  const FetchUserRequest({
    required this.process,
    required this.action,
    required this.page,
    required this.limit,
    required this.search,
  });

  final String process;
  final String action;
  final String page;
  final String limit;
  final String search;

  Map<String, dynamic> toJson() => _$FetchUserRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        page,
        limit,
        search,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
