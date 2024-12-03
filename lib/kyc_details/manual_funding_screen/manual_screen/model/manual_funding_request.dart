import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manual_funding_request.g.dart';

@JsonSerializable(createFactory: false)
class ManualFundingRequest implements EquatableMixin {
  const ManualFundingRequest({
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

  Map<String, dynamic> toJson() => _$ManualFundingRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [process, action];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
