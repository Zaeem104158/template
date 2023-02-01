import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/home/model/home_response/home_response.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.loading() = _Loading;
  const factory ProductState.error(String error) = _Error;
  const factory ProductState.data(HomeApiResponse homeApiResponse) =
      _Data;
}
