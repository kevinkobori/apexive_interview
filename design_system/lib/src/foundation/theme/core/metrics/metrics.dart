import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

class UKeepMetrics {
  static XMetricsData data(XFormFactor? formFactor) {
    return XMetricsData(
      spacings: UKeepSpacings.data,
      durations: UKeepDurations.data,
      radius: UKeepRadius.data,
      boxShadows: UKeepBoxShadows.data,
      elevations: UKeepElevations.data,
      formFactor: formFactor,
    );
  }
}
