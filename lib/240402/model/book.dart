// ignore_for_file: public_member_api_docs, sort_constructors_first
String _getFormattedDate(DateTime date) {
  return '${date.year}/${date.month}/${date.day}';
}

DateTime getRawDate(String date) {
  final splited = date.split('/');
  final rawDate = DateTime(int.parse(splited[0]), int.parse(splited[1]), int.parse(splited[2]));
  return rawDate;
}

class Book {
  final int id;
  // isCheckout, isExtended은 private 변수로 만들어서 setter로 변경하는 것보다 copywith로 하는 게 나은지?
  final bool isCkeckout;
  final bool isExtended;
  final String title;
  final String? publishDate;
  final String? dueReturn;
  // DateTime 생성자 이렇게 만드는게 맞는지, 사용방법
  Book({
    required this.id,
    this.isCkeckout = false,
    this.isExtended = false,
    required this.title,
    String? publishDate,
    DateTime? dueReturn,
  })  : publishDate = publishDate ?? _getFormattedDate(DateTime.now()),
        dueReturn = dueReturn != null ? _getFormattedDate(dueReturn) : '';

  Book copyWith({
    int? id,
    bool? isCkeckout,
    bool? isExtended,
    String? title,
    String? publishDate,
    DateTime? dueReturn,
  }) {
    return Book(
      id: id ?? this.id,
      isCkeckout: isCkeckout ?? this.isCkeckout,
      isExtended: isExtended ?? this.isExtended,
      title: title ?? this.title,
      publishDate: publishDate == null ? publishDate : this.publishDate!,
      dueReturn: dueReturn ?? dueReturn,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'isCkeckout': isCkeckout,
      'isExtended': isExtended,
      'title': title,
      'publishDate': publishDate,
      'dueReturn': dueReturn,
    };
  }

  factory Book.fromJson(Map<String, dynamic> map) {
    return Book(
      id: map['id'] as int,
      isCkeckout: map['isCkeckout'] as bool,
      isExtended: map['isExtended'] as bool,
      title: map['title'] as String,
      publishDate: map['publishDate'],
      dueReturn: map['dueReturn'] != null ? DateTime.fromMillisecondsSinceEpoch(map['dueReturn'] as int) : null,
    );
  }

  @override
  String toString() {
    return 'Book(id: $id, isCkeckout: $isCkeckout, isExtended: $isExtended, title: $title, publishDate: $publishDate, dueReturn: $dueReturn)';
  }

  @override
  bool operator ==(covariant Book other) {
    if (identical(this, other)) return true;

    return other.id == id && other.isCkeckout == isCkeckout && other.isExtended == isExtended && other.title == title && other.publishDate == publishDate && other.dueReturn == dueReturn;
  }

  @override
  int get hashCode {
    return id.hashCode ^ isCkeckout.hashCode ^ isExtended.hashCode ^ title.hashCode ^ publishDate.hashCode ^ dueReturn.hashCode;
  }
}
