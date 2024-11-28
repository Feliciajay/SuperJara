import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'average_sales_request.g.dart';

@JsonSerializable(createFactory: false)
class AverageSalesRequest implements EquatableMixin {
  const AverageSalesRequest({
    required this.process,
    required this.action,
  });

  final String process;
  final String action;

  Map<String, dynamic> toJson() => _$AverageSalesRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [process, action];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
