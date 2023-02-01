import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../app/values/constants.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState<T> with _$PaginationState<T> {
  const factory PaginationState({
    @Default([]) List<T> datas,
    @Default(false) bool isLoading,
    @Default(false) bool isCreateUpdating,
    @Default(false) bool isFetchingNext,
    @Default(false) bool isLastPage,
    @Default(0) int pageNo,
    @Default(defaultPageSize) int pageSize,
    int? deleteActionIndex,
    String? error,
  }) = _PaginationState;
}
