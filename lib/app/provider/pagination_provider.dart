import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';

import '../../shared/utils/extensions.dart';
import '../state/pagination/pagination_state.dart';

class PaginationStateNotifier extends StateNotifier<PaginationState> {
  final Reader reader;
  final Future<PaginationState> Function(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  })? fetchItems;

  final Future<CommonResponse>? Function(
    Map<String, dynamic> requestBody,
  )? createItem;

  final Future<CommonResponse>? Function(
    int id,
    Map<String, dynamic> requestBody,
  )? updateItem;

  final Future<CommonResponse>? Function(
    int id,
    int index,
  )? deleteItem;

  PaginationStateNotifier({
    required this.reader,
    this.fetchItems,
    this.createItem,
    this.updateItem,
    this.deleteItem,
  }) : super(PaginationState(isLoading: fetchItems != null)) {
    if (fetchItems != null) {
      getPaginatedData();
    }
  }

  Future<void> getPaginatedData({
    bool fromRefresh = false,
    bool fromError = false,
    Map<String, dynamic>? queryMap,
  }) async {
    if (fromRefresh || fromError) {
      state = state.copyWith(
        isLoading: true,
        pageNo: 0,
        error: null,
        isLastPage: false,
        isCreateUpdating: false,
        deleteActionIndex: null,
      );
    }

    if (!state.isLastPage && fetchItems != null) {
      if (!fromRefresh && !fromError) {
        final isLoadingState = state.pageNo == 0 && !fromRefresh;
        final isFetchingNextState = state.pageNo != 0 && !fromRefresh;

        state = state.copyWith(
          isLoading: isLoadingState,
          error: null,
          deleteActionIndex: null,
          isCreateUpdating: false,
          isFetchingNext: isFetchingNextState,
        );
      }

      final oldData = fromRefresh ? [] : [...state.datas];
      final result = await fetchItems!(
        state.pageNo,
        pageSize: state.pageSize,
        queryMap: queryMap,
      );

      if (mounted) {
        final newData = [...oldData, ...result.datas];
        final pageNo = result.error.isBlank ? (state.pageNo + 1) : state.pageNo;

        state = state.copyWith(
          datas: newData,
          pageNo: pageNo,
          isLoading: false,
          error: result.error,
          isFetchingNext: false,
          isCreateUpdating: false,
          deleteActionIndex: null,
          isLastPage: result.isLastPage,
        );
      }
    }
  }

  Future<void> createData(
    Map<String, dynamic> requestBody,
  ) async {
    if (createItem != null) {
      state = state.copyWith(
        isLoading: true,
        error: null,
        deleteActionIndex: null,
        isCreateUpdating: false,
      );

      final result = await createItem!(requestBody);
      if (result?.success == true) {
        final latestData = [result?.payload, ...state.datas];

        state = state.copyWith(
          error: null,
          datas: latestData,
          isLoading: false,
          isCreateUpdating: true,
          deleteActionIndex: null,
        );
      } else {
        state = state.copyWith(
          isLoading: false,
          error: result?.message,
          deleteActionIndex: null,
          isCreateUpdating: false,
        );
      }
    }
  }

  Future<void> updateData(
    int id,
    Map<String, dynamic> requestBody,
  ) async {
    if (updateItem != null) {
      state = state.copyWith(
        isLoading: true,
        error: null,
        deleteActionIndex: null,
        isCreateUpdating: false,
      );

      final result = await updateItem!(id, requestBody);
      if (result?.success == true) {
        final latestData = state.datas.map((element) {
          if (element.id == id) element = result!.payload;
          return element;
        }).toList();

        state = state.copyWith(
          error: null,
          datas: latestData,
          isLoading: false,
          isCreateUpdating: true,
          deleteActionIndex: null,
        );
      } else {
        state = state.copyWith(
          isLoading: false,
          error: result?.message,
          deleteActionIndex: null,
          isCreateUpdating: false,
        );
      }
    }
  }

  Future<void> deleteData({required int id, required int index}) async {
    if (deleteItem != null) {
      state = state.copyWith(
        deleteActionIndex: index,
        isCreateUpdating: false,
        error: null,
      );

      final result = await deleteItem!(id, index);
      if (result?.success == true) {
        final latestData =
            state.datas.where((element) => element.id != id).toList();

        state = state.copyWith(
          datas: latestData,
          deleteActionIndex: null,
          isCreateUpdating: false,
          error: null,
        );
      } else {
        state = state.copyWith(
          error: result?.message,
          deleteActionIndex: null,
          isCreateUpdating: false,
        );
      }
    }
  }

  void scrollListener(ScrollController scrollController) {
    scrollController.addListener(() {
      final offset = scrollController.offset;
      final outOfRange = scrollController.position.outOfRange;
      final maxScrollExtent = scrollController.position.maxScrollExtent;

      if (mounted) {
        if (!state.isLastPage &&
            !state.isFetchingNext &&
            offset >= maxScrollExtent &&
            !outOfRange) {
          getPaginatedData();
        }
      }
    });
  }

  bool isErrorOccurred() {
    return state.datas.isBlank && !state.error.isBlank;
  }
}
