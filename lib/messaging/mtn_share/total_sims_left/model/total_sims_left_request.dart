import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'total_sims_left_request.g.dart';

@JsonSerializable(createFactory: false)
class TotalSimsLeftRequest implements EquatableMixin {
  const TotalSimsLeftRequest({
    required this.process,
    required this.action,
  });

  final String process;
  final String action;

  Map<String, dynamic> toJson() => _$TotalSimsLeftRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [process, action];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
