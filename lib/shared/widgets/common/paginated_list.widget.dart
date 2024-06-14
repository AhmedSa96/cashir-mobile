import 'package:cashir/shared/controllers/fetch_data.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:cashir/shared/constants/colors.dart' as app_colors;

class PaginatedList<T> extends StatefulWidget {
  final Widget Function(T, int) listItemBuilder;
  final FetchDataController<T> controller;

  const PaginatedList({
    required this.listItemBuilder,
    required this.controller,
    super.key,
  });

  @override
  State<PaginatedList<T>> createState() => _PaginatedListState<T>();
}

class _PaginatedListState<T> extends State<PaginatedList<T>> {
  final refreashController = RefreshController();

  final PagingController<int, T> pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _initPages();
  }

  void _initPages() {
    pagingController.itemList?.clear();
    widget.controller.execute().then((list) {
      _putPage(list);

      _listenOnPageChange();
    });
  }

  void _listenOnPageChange() {
    pagingController.addPageRequestListener((pageKey) {
      widget.controller.toPage(pageKey).then((list) {
        _putPage(list, pageKey);
      });
    });
  }

  void _putPage(list, [int pageKey = 1]) {
    if (list.meta?.nextPage == null) {
      pagingController.appendLastPage(list.data as List<T>);
      return;
    }

    pagingController.appendPage(list.data as List<T>, pageKey);
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: refreashController,
      header: const WaterDropHeader(waterDropColor: app_colors.primary),
      onRefresh: () async {
        refreashController.refreshCompleted();
        await widget.controller.firstPage();
      },
      child: PagedListView<int, T>(
        pagingController: pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          noItemsFoundIndicatorBuilder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "No Data Found".tr,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: app_colors.primary,
                  ),
                ),
              ],
            );
          },
          itemBuilder: (context, item, index) {
            return widget.listItemBuilder(item, index);
          },
        ),
      ),
    );
  }
}
