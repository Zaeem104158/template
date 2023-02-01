import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/repository/common_repository.dart';
import 'package:thrive_mobile_app/app/state/db_file/db_file_state.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';

final fileUploadStateProvider =
    StateNotifierProvider<FileUploadStateNotifier, DbFileState>((ref) {
  return FileUploadStateNotifier(ref.watch(commonRepositoryProvider));
});

class FileUploadStateNotifier extends StateNotifier<DbFileState> {
  final CommonRepository _commonRepository;

  FileUploadStateNotifier(
    this._commonRepository,
  ) : super(DbFileState.initial());

  bool get isLoading => state == DbFileState.loading();

  Future<void> uploadFile({
    required String apiPath,
    required String filePath,
    required String formDataName,
    required FileUploadType fileUploadType,
  }) async {
    state = DbFileState.loading();

    final response = await _commonRepository.uploadFile(
      apiPath: apiPath,
      filePath: filePath,
      formDataName: formDataName,
      query: {
        "fileUploadType": fileUploadType.name,
        "fileType": filePath.split('.').last,
      },
    );

    if (response.success == true) {
      final dbFile = DbFile.fromJson(response.payload);
      state = DbFileState.data(
        dbFile.copyWith(message: response.message),
      );
    } else {
      state = DbFileState.error(
        response.message ?? LocaleKeys.somethingWentWrong.tr(),
      );
    }
  }
}
