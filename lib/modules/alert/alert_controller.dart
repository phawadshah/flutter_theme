import 'package:get/get.dart';
import 'package:sgm_admin/common/widgets/alert.dart';

class AlertController extends GetxController {
  RxInt tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  void goBack() {
    Get.back();
  }
}

List<Map<String, dynamic>> alerts = [
  {
    "title": "Informational message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.INFO_ACTIVE,
  },
  {
    "title": "Success message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.SUCCESS_ACTIVE,
  },
  {
    "title": "Warning message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.WARNING_ACTIVE,
  },
  {
    "title": "Critical message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.CRITICAL_ACTIVE,
  },

  // no icon
  {
    "title": "Informational message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.INFO_ACTIVE,
    "hideIcon": true,
  },
  {
    "title": "Success message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.SUCCESS_ACTIVE,
    "hideIcon": true,
  },
  {
    "title": "Warning message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.WARNING_ACTIVE,
    "hideIcon": true,
  },
  {
    "title": "Critical message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.CRITICAL_ACTIVE,
    "hideIcon": true,
  },

  // not active
  {
    "title": "Informational message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.INFO,
  },
  {
    "title": "Success message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.SUCCESS,
  },
  {
    "title": "Warning message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.WARNING,
  },
  {
    "title": "Critical message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.CRITICAL,
  },
  // not active
  {
    "title": "Informational message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.INFO,
    "hideIcon": true,
  },
  {
    "title": "Success message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.SUCCESS,
    "hideIcon": true,
  },
  {
    "title": "Warning message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.WARNING,
    "hideIcon": true,
  },
  {
    "title": "Critical message",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "secondaryButtonText": "Secondary",
    "type": KAlertType.CRITICAL,
    "hideIcon": true,
  },
];

List<Map<String, dynamic>> mixAlerts = [
  {
    "title": "Title",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "type": KAlertType.INFO_ACTIVE,
  },
  {
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "type": KAlertType.INFO_ACTIVE,
  },
  {
    "title": "Title",
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "type": KAlertType.INFO_ACTIVE,
    "hideIcon": true,
  },
  {
    "description": alertDescription,
    "primaryButtonText": "Primary",
    "type": KAlertType.INFO_ACTIVE,
    "hideIcon": true,
  },
];
