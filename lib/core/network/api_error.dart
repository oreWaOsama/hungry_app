class ApiError {
  final String message;
  final int? code;

  ApiError({required this.message, this.code});


   @override
     String toString(){
    return 'error is: $message with StatusCode $code';
  }
}
 