import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Arial text style
  static get arialBluegray900 => TextStyle(
        color: appTheme.blueGray900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).arial;
  static get arialBluegray900Bold => TextStyle(
        color: appTheme.blueGray900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).arial;
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeArapeyBluegray900 =>
      theme.textTheme.bodyLarge!.arapey.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeBlack90003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90003.withOpacity(0.9),
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 19.fSize,
      );
  static get bodyLargeBluegray90016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray90016_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray90016_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray90018_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray90018_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray90018_3 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeGray5000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray5000118 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray70018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimary16 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeTealA70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.tealA70001,
        fontSize: 18.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumAudiowideBlack90003 =>
      theme.textTheme.bodyMedium!.audiowide.copyWith(
        color: appTheme.black90003,
      );
  static get bodyMediumAudiowideGreen800 =>
      theme.textTheme.bodyMedium!.audiowide.copyWith(
        color: appTheme.green800,
      );
  static get bodyMediumAudiowideOrange700 =>
      theme.textTheme.bodyMedium!.audiowide.copyWith(
        color: appTheme.orange700,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumBlack90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumBluegray90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumPink200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.pink200,
      );
  static get bodyMediumPink20014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.pink200,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray50001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallTealA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.tealA700,
      );
  static get bodySmallTealA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.tealA70001,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmall_2 => theme.textTheme.bodySmall!;
  static get bodySmall_3 => theme.textTheme.bodySmall!;
  // Display text style
  static get displaySmall34 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 34.fSize,
      );
  static get displaySmallIndigoA20001 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.indigoA20001,
        fontSize: 35.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displaySmallRegular => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get displaySmallRegular_1 => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get displaySmallSofiaPro =>
      theme.textTheme.displaySmall!.sofiaPro.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get displaySmallSofiaProSemiBold =>
      theme.textTheme.displaySmall!.sofiaPro.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get displaySmallSofiaProWhiteA700 =>
      theme.textTheme.displaySmall!.sofiaPro.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 35.fSize,
        fontWeight: FontWeight.w400,
      );
  static get displaySmallWhiteA700Regular =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 35.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeBlack90003 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90003,
      );
  static get headlineLargeBluegray900 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineLargeBluegray90030 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 30.fSize,
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumErrorContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumPrimary28 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 28.fSize,
      );
  static get headlineMediumPrimaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 28.fSize,
      );
  static get headlineMediumWhiteA700Regular =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineMedium_1 => theme.textTheme.headlineMedium!;
  static get headlineSmallBluegray900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineSmallBluegray900_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  // Label text style
  static get labelLargeBluegray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static get labelLargeGray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get labelLargeGray5000113 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 13.fSize,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get labelLargePink200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pink200,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeRed100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red100,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get labelLargeSecondaryContainer13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
      );
  static get labelLargeSofiaProGray700 =>
      theme.textTheme.labelLarge!.sofiaPro.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSofiaProSecondaryContainer =>
      theme.textTheme.labelLarge!.sofiaPro.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallGray50001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get labelSmallGray700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get labelSmall_1 => theme.textTheme.labelSmall!;
  static get labelSmall_2 => theme.textTheme.labelSmall!;
  static get labelSmall_3 => theme.textTheme.labelSmall!;
  static get labelSmall_4 => theme.textTheme.labelSmall!;
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLarge22_1 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack90003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90003,
      );
  static get titleLargeBlack90003_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90003,
      );
  static get titleLargeBluegray100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray100,
      );
  static get titleLargeBluegray10002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get titleLargeBluegray10003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray10003,
      );
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray90021 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 21.fSize,
      );
  static get titleLargeBluegray90022 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 22.fSize,
      );
  static get titleLargeBluegray900Regular =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray900Regular_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray900Regular_2 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeBluegray900_2 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeBluegray900_3 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeBluegray900_4 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeGray500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray50001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray50001Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray50001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get titleLargeGray70021 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 21.fSize,
      );
  static get titleLargeGray700_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get titleLargePink200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.pink200,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 22.fSize,
      );
  static get titleLargeSecondaryContainerRegular =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSecondaryContainerRegular_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSecondaryContainerRegular_2 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSecondaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleLargeSecondaryContainer_2 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleLargeSofiaProBluegray900 =>
      theme.textTheme.titleLarge!.sofiaPro.copyWith(
        color: appTheme.blueGray900,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSofiaProPrimaryContainer =>
      theme.textTheme.titleLarge!.sofiaPro.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeTealA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.tealA700,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTealA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.tealA70001,
        fontWeight: FontWeight.w400,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBlack90003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90003,
        fontSize: 17.fSize,
      );
  static get titleMediumBluegray200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get titleMediumBluegray200_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBluegray90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray90016_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray90016_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray90019 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 19.fSize,
      );
  static get titleMediumBluegray90019_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 19.fSize,
      );
  static get titleMediumBluegray90019_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 19.fSize,
      );
  static get titleMediumBluegray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBluegray900_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBluegray900_3 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBluegray900_4 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBluegray900_5 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 19.fSize,
      );
  static get titleMediumGray5000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray5000116_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray5000117 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 17.fSize,
      );
  static get titleMediumGray50001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray50001_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray50001_3 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumGray70016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
      );
  static get titleMediumGray700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumPink200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink200,
      );
  static get titleMediumPink20016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink200,
        fontSize: 16.fSize,
      );
  static get titleMediumPink20016_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink200,
        fontSize: 16.fSize,
      );
  static get titleMediumPink20017 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink200,
        fontSize: 17.fSize,
      );
  static get titleMediumPink200_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink200,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary16_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary17 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary_2 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSofiaProBluegray900 =>
      theme.textTheme.titleMedium!.sofiaPro.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSofiaProGray50001 =>
      theme.textTheme.titleMedium!.sofiaPro.copyWith(
        color: appTheme.gray50001,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSofiaProPrimary =>
      theme.textTheme.titleMedium!.sofiaPro.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSofiaProTealA700 =>
      theme.textTheme.titleMedium!.sofiaPro.copyWith(
        color: appTheme.tealA700,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTealA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA70001,
        fontSize: 16.fSize,
      );
  static get titleMediumTealA7000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA70001,
        fontSize: 16.fSize,
      );
  static get titleMediumTealA7000116_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA70001,
        fontSize: 16.fSize,
      );
  static get titleMediumTealA70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.tealA70002,
        fontSize: 16.fSize,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 19.fSize,
      );
  static get titleMediumWhiteA70016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumWhiteA700_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallBlack90003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90003,
      );
  static get titleSmallBlack90003_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90003.withOpacity(0.9),
      );
  static get titleSmallBluegray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray20014 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
        fontSize: 14.fSize,
      );
  static get titleSmallGray50001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get titleSmallGray700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallPink200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink200,
        fontSize: 14.fSize,
      );
  static get titleSmallPink20014 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink200,
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary14 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary14_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallTealA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.tealA700,
        fontSize: 14.fSize,
      );
  static get titleSmallTealA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.tealA70001,
        fontSize: 14.fSize,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get sofiaPro {
    return copyWith(
      fontFamily: 'Sofia Pro',
    );
  }

  TextStyle get audiowide {
    return copyWith(
      fontFamily: 'Audiowide',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

  TextStyle get arapey {
    return copyWith(
      fontFamily: 'Arapey',
    );
  }
}
