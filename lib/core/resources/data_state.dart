import 'package:dio/dio.dart';

abstract class DateState<T> {
  final T ? data;
  final DioException ? error;

  const DateState({this.data,this.error});
}

class DataSucess<T> extends DateState<T>{
  const DataSucess(T data) : super(data: data);
}

class DataFailed<T> extends DateState<T>{
  const DataFailed(DioException error) : super(error: error);
}