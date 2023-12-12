import 'controller/date_filter_one_controller.dart';
import 'models/date_filter_one_model.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DateFilterOnePage extends StatelessWidget {
  DateFilterOnePage({Key? key})
      : super(
          key: key,
        );

  DateFilterOneController controller =
      Get.put(DateFilterOneController(DateFilterOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              _buildApplySection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplySection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 39.h),
      child: Column(
        children: [
          Obx(
            () => SizedBox(
              height: 256.v,
              width: 297.h,
              child: TableCalendar(
                locale: 'en_US',
                firstDay: DateTime(DateTime.now().year - 5),
                lastDay: DateTime(DateTime.now().year + 5),
                calendarFormat: CalendarFormat.month,
                rangeSelectionMode: controller.rangeSelectionMode.value,
                startingDayOfWeek: StartingDayOfWeek.sunday,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                calendarStyle: CalendarStyle(
                  outsideDaysVisible: false,
                  isTodayHighlighted: true,
                  todayTextStyle: TextStyle(
                    color: appTheme.gray10001,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  todayDecoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: theme.colorScheme.primary,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                rowHeight: 31.adaptSize,
                focusedDay: controller.focusedDay.value,
                rangeStartDay: controller.rangeStart,
                rangeEndDay: controller.rangeEnd,
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(controller.selectedDay, selectedDay)) {
                    controller.focusedDay.value = focusedDay;
                    controller.selectedDay = selectedDay;
                    controller.rangeSelectionMode.value =
                        RangeSelectionMode.toggledOn;
                  }
                },
                onRangeSelected: (start, end, focusedDay) {
                  controller.focusedDay.value = focusedDay;
                  controller.rangeEnd = end;
                  controller.rangeStart = start;
                  controller.rangeSelectionMode.value =
                      RangeSelectionMode.toggledOn;
                },
                onPageChanged: (focusedDay) {
                  controller.focusedDay.value = focusedDay;
                },
              ),
            ),
          ),
          SizedBox(height: 32.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.v),
                    child: Text(
                      "lbl_cancel".tr,
                      style: CustomTextStyles.titleSmallBluegray900,
                    ),
                  ),
                  CustomElevatedButton(
                    width: 112.h,
                    text: "lbl_apply".tr,
                    buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                    buttonTextStyle: CustomTextStyles.titleSmallGray10001,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
