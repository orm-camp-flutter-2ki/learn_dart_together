abstract interface class Mappable<T> {
  Map<String, dynamic> toJson();
  T toObject(Map<String, dynamic> json);
}
