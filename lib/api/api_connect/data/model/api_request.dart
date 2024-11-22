import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_request.g.dart';

@JsonSerializable(createFactory: false)
class ApiRequest implements EquatableMixin {
  const ApiRequest({
    required this.process,
    required this.action,
    required this.search,
    required this.page,
    required this.limit,
  });

  final String process;
  final String action;
  final String search;
  final int page;
  final int limit;

  Map<String, dynamic> toJson() => _$ApiRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [process, action];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
