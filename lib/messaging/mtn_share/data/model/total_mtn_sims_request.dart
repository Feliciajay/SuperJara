import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'total_mtn_sims_request.g.dart';

@JsonSerializable(createFactory: false)
class TotalMtnSimsRequest implements EquatableMixin {
  const TotalMtnSimsRequest({
    required this.process,
    required this.action,
  });

  final String process;
  final String action;

  Map<String, dynamic> toJson() => _$TotalMtnSimsRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [process, action];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
