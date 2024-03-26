// ignore_for_file: public_member_api_docs, sort_constructors_first

class Result {
  final String code;
  final String developerMessage;
  final String link;
  final String message;
  final String status;
  final String total;
  Result({
    required this.code,
    required this.developerMessage,
    required this.link,
    required this.message,
    required this.status,
    required this.total,
  });

  Result copyWith({
    String? code,
    String? developerMessage,
    String? link,
    String? message,
    String? status,
    String? total,
  }) {
    return Result(
      code: code ?? this.code,
      developerMessage: developerMessage ?? this.developerMessage,
      link: link ?? this.link,
      message: message ?? this.message,
      status: status ?? this.status,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'code': code,
      'developerMessage': developerMessage,
      'link': link,
      'message': message,
      'status': status,
      'total': total,
    };
  }

  Result.fromJson(Map<String, dynamic> map)
      : code = map['code'] as String,
        developerMessage = map['developerMessage'] as String,
        link = map['link'] as String,
        message = map['message'] as String,
        status = map['status'] as String,
        total = map['total'] as String;

  @override
  String toString() {
    return 'Result(code: $code, developerMessage: $developerMessage, link: $link, message: $message, status: $status, total: $total)';
  }

  @override
  bool operator ==(covariant Result other) {
    if (identical(this, other)) return true;

    return other.code == code && other.developerMessage == developerMessage && other.link == link && other.message == message && other.status == status && other.total == total;
  }

  @override
  int get hashCode {
    return code.hashCode ^ developerMessage.hashCode ^ link.hashCode ^ message.hashCode ^ status.hashCode ^ total.hashCode;
  }
}
