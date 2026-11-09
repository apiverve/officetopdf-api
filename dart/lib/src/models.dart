/// Response models for the Office to PDF API.

/// API Response wrapper.
class OfficetopdfResponse {
  final String status;
  final dynamic error;
  final OfficetopdfData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  OfficetopdfResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory OfficetopdfResponse.fromJson(Map<String, dynamic> json) => OfficetopdfResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? OfficetopdfData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Office to PDF API.

class OfficetopdfData {
  String? pdfName;
  String? inputName;
  String? inputFormat;
  num? pageCount;
  bool? landscape;
  dynamic pageRanges;
  num? size;
  num? expires;
  String? downloadURL;

  OfficetopdfData({
    this.pdfName,
    this.inputName,
    this.inputFormat,
    this.pageCount,
    this.landscape,
    this.pageRanges,
    this.size,
    this.expires,
    this.downloadURL,
  });

  factory OfficetopdfData.fromJson(Map<String, dynamic> json) => OfficetopdfData(
      pdfName: json['pdfName'],
      inputName: json['inputName'],
      inputFormat: json['inputFormat'],
      pageCount: json['pageCount'],
      landscape: json['landscape'],
      pageRanges: json['pageRanges'],
      size: json['size'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
    );
}

class OfficetopdfRequest {
  String? document;

  OfficetopdfRequest({
    this.document,
  });

  Map<String, dynamic> toJson() => {
      if (document != null) 'document': document,
    };
}
