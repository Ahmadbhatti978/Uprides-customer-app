import '../../../util/variable.dart';
import '../provider/get_activity_provider.dart';

class EmptyStateText {
  const EmptyStateText(this.title, this.subtitle);
  final String title;
  final String subtitle;
}

EmptyStateText emptyStateFor(RideStatusType type) {
  switch (type) {
    case RideStatusType.COMPLETED:
      return EmptyStateText(l10n.noRidesYetTitle, l10n.noRidesYetMessage);
    case RideStatusType.CANCELED:
      return EmptyStateText(l10n.noCancelledRidesTitle, l10n.noCancelledRidesMessage);
    case RideStatusType.UPCOMMING: // (fixed spelling from UPCOMMING)
      return EmptyStateText(l10n.noUpcomingRidesTitle, l10n.noUpcomingRidesMessage);
    // ignore: no_default_cases
    default:
      return EmptyStateText(l10n.noRidesYetTitle, l10n.noRidesYetMessage);
  }
}
