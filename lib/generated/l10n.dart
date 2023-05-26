// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `A planet is a global leader in real life entertainment, serving a passionate audience of superfans around the world with content that inspires, informs and entertains.`
  String get ready_to_watch_des {
    return Intl.message(
      'A planet is a global leader in real life entertainment, serving a passionate audience of superfans around the world with content that inspires, informs and entertains.',
      name: 'ready_to_watch_des',
      desc: '',
      args: [],
    );
  }

  /// `Ready to watch?`
  String get ready_to_watch {
    return Intl.message(
      'Ready to watch?',
      name: 'ready_to_watch',
      desc: '',
      args: [],
    );
  }

  /// `Start Enjoying`
  String get start_enjoying {
    return Intl.message(
      'Start Enjoying',
      name: 'start_enjoying',
      desc: '',
      args: [],
    );
  }

  /// `languages`
  String get languages {
    return Intl.message(
      'languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `App Language`
  String get app_language {
    return Intl.message(
      'App Language',
      name: 'app_language',
      desc: '',
      args: [],
    );
  }

  /// `Select your preferred languages`
  String get select_your_preferred_languages {
    return Intl.message(
      'Select your preferred languages',
      name: 'select_your_preferred_languages',
      desc: '',
      args: [],
    );
  }

  /// `Choose a plan`
  String get chooseAPlan {
    return Intl.message(
      'Choose a plan',
      name: 'chooseAPlan',
      desc: '',
      args: [],
    );
  }

  /// `Week subscription`
  String get weekSubscription {
    return Intl.message(
      'Week subscription',
      name: 'weekSubscription',
      desc: '',
      args: [],
    );
  }

  /// `1 Month subscription`
  String get oneMonthSubscription {
    return Intl.message(
      '1 Month subscription',
      name: 'oneMonthSubscription',
      desc: '',
      args: [],
    );
  }

  /// `3 Month subscription`
  String get threeMonthSubscription {
    return Intl.message(
      '3 Month subscription',
      name: 'threeMonthSubscription',
      desc: '',
      args: [],
    );
  }

  /// `6 Month subscription`
  String get sixMonthSubscription {
    return Intl.message(
      '6 Month subscription',
      name: 'sixMonthSubscription',
      desc: '',
      args: [],
    );
  }

  /// `Last step to enjoy`
  String get LAST_STEP_TO_ENJOY {
    return Intl.message(
      'Last step to enjoy',
      name: 'LAST_STEP_TO_ENJOY',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to New Aplanet`
  String get welcomeToAPlanet {
    return Intl.message(
      'Welcome to New Aplanet',
      name: 'welcomeToAPlanet',
      desc: '',
      args: [],
    );
  }

  /// `Related to you`
  String get relatedToYou {
    return Intl.message(
      'Related to you',
      name: 'relatedToYou',
      desc: '',
      args: [],
    );
  }

  /// `Life with a Tiger`
  String get lifeWithATiger {
    return Intl.message(
      'Life with a Tiger',
      name: 'lifeWithATiger',
      desc: '',
      args: [],
    );
  }

  /// `Wild animals`
  String get wildAnimals {
    return Intl.message(
      'Wild animals',
      name: 'wildAnimals',
      desc: '',
      args: [],
    );
  }

  /// `Quick categories`
  String get quickCategories {
    return Intl.message(
      'Quick categories',
      name: 'quickCategories',
      desc: '',
      args: [],
    );
  }

  /// `BEAR`
  String get bear {
    return Intl.message(
      'BEAR',
      name: 'bear',
      desc: '',
      args: [],
    );
  }

  /// `LION`
  String get lion {
    return Intl.message(
      'LION',
      name: 'lion',
      desc: '',
      args: [],
    );
  }

  /// `REPTILES`
  String get reptiles {
    return Intl.message(
      'REPTILES',
      name: 'reptiles',
      desc: '',
      args: [],
    );
  }

  /// `PETS`
  String get pets {
    return Intl.message(
      'PETS',
      name: 'pets',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor erat in arcu finibus vulputate.`
  String get loremIpsum {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor erat in arcu finibus vulputate.',
      name: 'loremIpsum',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'bn'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}