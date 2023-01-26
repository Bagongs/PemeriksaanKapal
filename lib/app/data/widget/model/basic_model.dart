class BasicModel {
  bool? success;
  String? message;

  BasicModel({this.success, this.message});

  factory BasicModel.fromJson(Map<String, dynamic> json) => BasicModel(
        success: json['success'] as bool?,
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
      };
}
