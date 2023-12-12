import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/date_filter_page/models/date_filter_model.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the DateFilterPage.
///
/// This class manages the state of the DateFilterPage, including the
/// current dateFilterModelObj
class DateFilterController extends GetxController {DateFilterController(this.dateFilterModelObj);

Rx<DateFilterModel> dateFilterModelObj;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

 }
