import 'package:flutter_svg/svg.dart';
import '../../../../core/location_validator.dart';
import '../../../../util/colors.dart';
import '../../../../util/image_assets.dart';
import '../../../booking/addlocation/import.dart';
import '../../model/trending_place.dart';
import 'depth.dart';
import 'trending_banner.dart';

// Constants
class QuoteConstants {
  static const double quoteFontSize = 20;
  static const double summaryFontSize = 14;
  static const double iconSize = 28;
  static const double summaryWidthRatio = 0.8;
  static const double topPositionRatio = 0.22;
  static const double topPositionRatioVisible = 0.2;
  static const double homeScreenHeightRatio = 0.6;
  static const Duration animationDuration = Duration(milliseconds: 400);
  static const EdgeInsets summaryPadding = EdgeInsets.all(12);
}

final summaryProvider = AutoDisposeStateProvider<bool>((ref) => false);

// Quote Widget Improvements
class Quote extends ConsumerWidget {
  const Quote({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TrendingPlace? currentPlace = ref.watch(currentTrendingPlaceProvider);
    final bool isSummaryVisible = ref.watch(summaryProvider);
    final Size screenSize = MediaQuery.sizeOf(context);

    return Positioned(
      top: screenSize.height * (isSummaryVisible ? QuoteConstants.topPositionRatioVisible : QuoteConstants.topPositionRatio),
      child: SizedBox(
        height: screenSize.width,
        child: Stack(
          alignment: Alignment.center,
          children: [DepthEffect(width: screenSize.width), _buildContent(context, ref, currentPlace, isSummaryVisible, screenSize)],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, WidgetRef ref, TrendingPlace? currentPlace, bool isSummaryVisible, Size screenSize) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [_buildQuoteButton(context, ref, currentPlace), _buildAnimatedSummary(currentPlace, isSummaryVisible, screenSize)],
  );

  Widget _buildQuoteButton(BuildContext context, WidgetRef ref, TrendingPlace? currentPlace) => TextButton.icon(
    iconAlignment: IconAlignment.end,
    label: Text(
      currentPlace?.displayName?.text ?? l10n.homeQuote,
      style: const TextStyle(
        fontSize: QuoteConstants.quoteFontSize,
        height: 1,
        fontVariations: <FontVariation>[FontVariation('wght', 650)],
        color: Colors.white,
      ),
    ),
    onPressed: () => _toggleSummary(ref, currentPlace),
    icon: _buildNavigationIcon(ref, currentPlace),
  );

  Widget _buildNavigationIcon(WidgetRef ref, TrendingPlace? currentPlace) =>
      currentPlace == null
          ? const SizedBox.shrink()
          : InkWell(
            onTap: () => _navigateToPlace(ref, currentPlace),
            child: SvgPicture.asset(arrowDot, colorFilter: const ColorFilter.mode(Colorx.primary, BlendMode.srcIn), width: QuoteConstants.iconSize),
          );

  Widget _buildAnimatedSummary(TrendingPlace? currentPlace, bool isVisible, Size screenSize) => AnimatedSwitcher(
    duration: QuoteConstants.animationDuration,
    transitionBuilder:
        (child, animation) => SlideTransition(
          position: Tween<Offset>(begin: const Offset(0, -0.2), end: Offset.zero).animate(animation),
          child: FadeTransition(opacity: animation, child: child),
        ),
    child:
        isVisible && currentPlace?.editorialSummary?.text != null
            ? _buildSummaryContainer(currentPlace!, screenSize)
            : const SizedBox.shrink(key: ValueKey('empty')),
  );

  Widget _buildSummaryContainer(TrendingPlace place, Size screenSize) => Container(
    key: const ValueKey('summary'),
    width: screenSize.width * QuoteConstants.summaryWidthRatio,
    padding: QuoteConstants.summaryPadding,
    child: Text(
      place.editorialSummary!.text!,
      style: const TextStyle(fontSize: QuoteConstants.summaryFontSize, fontFamily: 'open', height: 1, color: Colors.white),
    ),
  );

  void _toggleSummary(WidgetRef ref, TrendingPlace? currentPlace) {
    if (currentPlace?.editorialSummary?.text != null) {
      ref.read(summaryProvider.notifier).update((state) => !state);
    }
  }

  void _navigateToPlace(WidgetRef ref, TrendingPlace? currentPlace) {
    if (currentPlace != null) {
      ref.read(pickedlocationProvider.notifier).addTrending(currentPlace);
      LocationValidator(ref).navigateToConfirmScreen();
    }
  }
}
