import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/date_filter_one_page/models/date_filter_one_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A controller class for the DateFilterOnePage.
///
/// This class manages the state of the DateFilterOnePage, including the
/// current dateFilterOneModelObj
class DateFilterOneController extends GetxController {
  DateFilterOneController(this.dateFilterOneModelObj);

  Rx<DateFilterOneModel> dateFilterOneModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;
}
