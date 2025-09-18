import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/constants/constants.dart';
import '../../core/widgets/appbar/name_backarrow.dart';
import '../../util/colors.dart';
import '../../util/image_assets.dart';
import '../../util/style/typo.dart';
import '../../util/variable.dart';
import 'car_detail.dart';
import 'drop_location.dart';

class ListOfRentalCar extends StatelessWidget {
  const ListOfRentalCar({super.key});
  static const List<String> types = <String>['Filter', 'Popular', '0-10 km', 'SUV', 'Electronics'];
  @override
  Widget build(final BuildContext context) {
    const int i = 1;

    return Scaffold(
      appBar: const NameBackBar(title: 'Rentals'),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: FilledButton.icon(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (final BuildContext context) => const DropLocation()),
              ),
              style: FilledButton.styleFrom(
                alignment: Alignment.centerLeft,
                fixedSize: Size.fromWidth(mediaQuery.size.width),
                backgroundColor: grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              label: const Text('Lisbon', style: Primary.headingSmalll),
              icon: Container(
                height: 18,
                width: 18,
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  border: Border.all(width: 6),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(padding),
            child: Row(
              children: <Widget>[
                const Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: darkgrey,
                          ),
                          hintText: 'Search car',),
                    ),),
                const Gap(padding),
                Expanded(
                    child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      // visualDensity: VisualDensity.compact,
                      // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: const EdgeInsets.symmetric(horizontal: 4),),
                  label: const Text('Sort by', textAlign: TextAlign.center, style: Secondary.titleSmall),
                  icon: SvgPicture.asset(sort),
                ),),
              ],
            ),
          ),
          SizedBox(
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: types.length,
                padding: const EdgeInsets.symmetric(horizontal: padding),
                itemBuilder: (final BuildContext context, final int index) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: padding / 2, vertical: padding / 4),
                        alignment: Alignment.center,
                        visualDensity: VisualDensity.compact,
                        foregroundColor: i == index ? Colors.white :   darkgrey,
                        minimumSize: const Size(20, 8),
                        backgroundColor: i != index ? Colors.white : Colors.black,
                        side: i == index ? BorderSide.none : null,
                        // const darkgrey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),
                    onPressed: () {},
                    // => ref.read(trendingLocationProvider.notifier).trendingLocation(type: type),
                    label: Text(
                      types[index],
                      style: const TextStyle(fontSize: 14),
                    ),
                    icon: index == 0
                        ? const Icon(Icons.filter_alt_rounded)
                        : index == 1
                            ? SvgPicture.asset(fire)
                            : null,
                  ),
                ),
              ),),
          const Gap(padding),
          Expanded(
            child: ColoredBox(
              color: grey,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 24),
                itemCount: 8,
                itemBuilder: (final BuildContext context, final int index) => Card(
                  color: Colors.white,
                  shadowColor: Colors.black26,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (final BuildContext context) => const CarDetail(),
                        ),),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Image.asset(
                              rentCar,
                              fit: BoxFit.cover,
                              width: mediaQuery.size.width,
                              height: mediaQuery.size.height * .23,
                            ),
                            // CachedNetworkImage(
                            //         width: mediaQuery.size.width,
                            //         height: mediaQuery.size.height * .23,
                            //         // mediaQuery.size.width *
                            //         //     (trendingPlace.value[index].photos?.first.heightPx ?? 1) /
                            //         //     (trendingPlace.value[index].photos?.first.widthPx ?? 1),

                            //         filterQuality: FilterQuality.medium,
                            //         color: const Color.fromRGBO(0, 0, 0, 0.5),
                            //         colorBlendMode: BlendMode.srcOver,

                            //         imageUrl:
                            //             'https://places.googleapis.com/v1/${trendingPlace.value[index].photos?.first.name}/media?maxHeightPx=1080&maxWidthPx=1920&key=$apiKey',
                            //         placeholder: (context, url) => const ColoredBox(
                            //           color: Color.fromARGB(255, 245, 245, 245),
                            //           child: CupertinoActivityIndicator(),
                            //         ),
                            //         errorWidget: (context, url, error) => const Icon(Icons.error),
                            //         fit: BoxFit.cover,
                            //       ),

                            const Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('FORD Mustang GT 440', maxLines: 1, style: White.heading),
                                  Text(
                                    'Lorem ipsum dolor sit',
                                    style: TextStyle(
                                      color: Color(0xFFF5F5F5),
                                      fontSize: 14,
                                      fontFamily: 'Open',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Visibility(
                              child: Positioned(
                                top: 12,
                                right: padding,
                                child: Card.filled(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(6, 2, 8, 4),
                                    child: Text(
                                      'SUV',
                                      style: Bold.title,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: padding, top: 8, left: padding, bottom: 13),
                          child: Row(
                            children: <Widget>[
                              Text('Economy', style: Default.title),
                              Gap(padding),
                              Icon(
                                Icons.person,
                                color: darkgrey,
                              ),
                              Gap(4),
                              Text(
                                '4',
                                style: TextStyle(
                                  color: darkgrey,
                                  fontSize: 14,
                                  fontVariations: <FontVariation>[FontVariation('wght', 600)],
                                  height: 0,
                                ),
                              ),
                              Gap(8),
                              Icon(
                                Icons.luggage,
                                color: darkgrey,
                              ),
                              Gap(4),
                              Text(
                                '4',
                                style: TextStyle(
                                  color: darkgrey,
                                  fontSize: 14,
                                  fontVariations: <FontVariation>[FontVariation('wght', 600)],
                                  height: 0,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.euro),
                              Gap(8),
                              Text.rich(
                                TextSpan(
                                  children: <InlineSpan>[
                                    TextSpan(text: '16.2 ', style: Bold.titleBig),
                                    TextSpan(text: '/Total', style: Secondary.bodySmll),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
