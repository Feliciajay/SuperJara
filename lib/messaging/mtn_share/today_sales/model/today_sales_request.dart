import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'today_sales_request.g.dart';

@JsonSerializable(createFactory: false)
class TodaySalesRequest implements EquatableMixin {
  const TodaySalesRequest({
    required this.process,
    required this.action,
  });

  final String process;
  final String action;

  Map<String, dynamic> toJson() => _$TodaySalesRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [process, action];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
