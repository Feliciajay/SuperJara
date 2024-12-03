import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manual_funding_details_request.g.dart';

@JsonSerializable(createFactory: false)
class ManualFundingDetailsRequest implements EquatableMixin {
  const ManualFundingDetailsRequest({
    required this.process,
    required this.action,
    required this.id,
  });

  final String process;
  final String action;
  final String id;

  Map<String, dynamic> toJson() => _$ManualFundingDetailsRequestToJson(this);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  List<Object?> get props => [
        process,
        action,
        id,
      ];

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  bool? get stringify => true;
}
