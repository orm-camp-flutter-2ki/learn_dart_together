class Result {
  final String code;
  final String developerMessage;
  final String link;
  final String message;
  final int status;
  final int total;

  Result(this.code, this.developerMessage, this.link, this.message, this.status,
      this.total);

  Result.fromJson(Map<String, dynamic> json) :
    code = json['code'] ?? '',
    developerMessage = json['developerMessage'] ?? '',
    link = json['link'] ?? '',
    message = json['message'] ?? '',
    status = int.parse(json['status'] ?? 0),
    total = int.parse(json['total'] ?? 0);

  Map<String, dynamic> toJson() => {
    'code': code,
    'developerMessage': developerMessage,
    'link': link,
    'message': message,
    'status': status,
    'total': total,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Result &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          developerMessage == other.developerMessage &&
          link == other.link &&
          message == other.message &&
          status == other.status &&
          total == other.total;

  @override
  int get hashCode =>
      code.hashCode ^
      developerMessage.hashCode ^
      link.hashCode ^
      message.hashCode ^
      status.hashCode ^
      total.hashCode;

  @override
  String toString() {
    return 'Result{code: $code, developerMessage: $developerMessage, link: $link, message: $message, status: $status, total: $total}';
  }
}