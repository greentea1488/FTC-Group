import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? datetotextFuncRus(
  String? dateArrive,
  String? dateQuarantine,
  String? datePrincuts,
  String? dateDeclarationSub,
  String? dateDeclarationIssue,
  String? dateDeparture,
) {
  var dateMap = {
    'dateArrive': dateArrive,
    'dateQuarantine': dateQuarantine,
    'datePrincuts': datePrincuts,
    'dateDeclarationSub': dateDeclarationSub,
    'dateDeclarationIssue': dateDeclarationIssue,
    'dateDeparture': dateDeparture,
  };

  // Отфильтруем карту, чтобы исключить null даты
  dateMap.removeWhere((key, value) => value == null);

  // Сортируем карту по времени в обратном порядке
  var sortedDates = dateMap.entries.toList()
    ..sort((a, b) => b.value!.compareTo(a.value!));

  if (sortedDates.isEmpty) {
    return null;
  } else {
    // Теперь в sortedDates[0] хранится последняя дата и ее название (ключ)
    String dateName = sortedDates[0].key;

    // Переводим названия на русский язык
    var translateMap = {
      'dateArrive': 'Прибытие судна',
      'dateQuarantine': 'Карантин',
      'datePrincuts': 'Пропечатка',
      'dateDeclarationSub': 'Подача декларации товара',
      'dateDeclarationIssue': 'Выпуск декларации товара',
      'dateDeparture': 'Отъезд к клиенту',
    };

    return translateMap[dateName] ?? '';
  }
}

String? datetotextFuncLandTurc(
  String? arrivalTime,
  String? terminalEntry,
  String? quarantinetime,
  String? sealingTime,
  String? declarationSubmissionTime,
) {
  var dateMap = {
    'arrivalTime': arrivalTime,
    'terminalEntry': terminalEntry,
    'quarantinetime': quarantinetime,
    'sealingtime': sealingTime,
    'declarationSubmissionTime': declarationSubmissionTime,
  };

  // Отфильтруем карту, чтобы исключить null даты
  dateMap.removeWhere((key, value) => value == null);

  // Сортируем карту по времени в обратном порядке
  var sortedDates = dateMap.entries.toList()
    ..sort((a, b) => b.value!.compareTo(a.value!));

  if (sortedDates.isEmpty) {
    return null;
  } else {
    // Теперь в sortedDates[0] хранится последняя дата и ее название (ключ)
    String dateName = sortedDates[0].key;

    // Переводим названия на русский язык
    var translateMap = {
      'arrivalTime': 'Sınırı geçti',
      'terminalEntry': 'İç gümrüğe varış',
      'quarantinetime': 'İç gümrüğe varış',
      'sealingTime': 'Beyanname açılışı',
      'declarationSubmissionTime': 'Beyanname kapanışı',
    };

    return translateMap[dateName] ?? '';
  }
}

String? datetotextFuncLandEng(
  String? arrivalTime,
  String? terminalEntry,
  String? quarantinetime,
  String? sealingTime,
  String? declarationSubmissionTime,
) {
  var dateMap = {
    'arrivalTime': arrivalTime,
    'terminalEntry': terminalEntry,
    'quarantinetime': quarantinetime,
    'sealingtime': sealingTime,
    'declarationSubmissionTime': declarationSubmissionTime,
  };

  // Отфильтруем карту, чтобы исключить null даты
  dateMap.removeWhere((key, value) => value == null);

  // Сортируем карту по времени в обратном порядке
  var sortedDates = dateMap.entries.toList()
    ..sort((a, b) => b.value!.compareTo(a.value!));

  if (sortedDates.isEmpty) {
    return null;
  } else {
    // Теперь в sortedDates[0] хранится последняя дата и ее название (ключ)
    String dateName = sortedDates[0].key;

    // Переводим названия на русский язык
    var translateMap = {
      'arrivalTime': 'Border crossing',
      'terminalEntry': 'Arrival at the terminal',
      'quarantinetime': 'Phytosanintary Control',
      'sealingTime': 'Declaration',
      'declarationSubmissionTime': 'Release of a declaration',
    };

    return translateMap[dateName] ?? '';
  }
}

String? datetotextFuncLandRus(
  String? arrivalTime,
  String? terminalEntry,
  String? quarantinetime,
  String? sealingTime,
  String? declarationSubmissionTime,
) {
  var dateMap = {
    'arrivalTime': arrivalTime,
    'terminalEntry': terminalEntry,
    'quarantinetime': quarantinetime,
    'sealingtime': sealingTime,
    'declarationSubmissionTime': declarationSubmissionTime,
  };

  // Отфильтруем карту, чтобы исключить null даты
  dateMap.removeWhere((key, value) => value == null);

  // Сортируем карту по времени в обратном порядке
  var sortedDates = dateMap.entries.toList()
    ..sort((a, b) => b.value!.compareTo(a.value!));

  if (sortedDates.isEmpty) {
    return null;
  } else {
    // Теперь в sortedDates[0] хранится последняя дата и ее название (ключ)
    String dateName = sortedDates[0].key;

    // Переводим названия на русский язык
    var translateMap = {
      'arrivalTime': 'Пересечение границы РФ',
      'terminalEntry': 'Заезд на терминал',
      'quarantinetime': 'Фитосанитарный контроль',
      'sealingTime': 'Подача декларации',
      'declarationSubmissionTime': 'Выпуск декларации',
    };

    return translateMap[dateName] ?? '';
  }
}

String? datetotextFuncSeaTurc(
  String? dateArrive,
  String? dateQuarantine,
  String? datePrincuts,
  String? dateDeclarationSub,
  String? dateDeclarationIssue,
  String? dateDeparture,
) {
  var dateMap = {
    'dateArrive': dateArrive,
    'dateQuarantine': dateQuarantine,
    'datePrincuts': datePrincuts,
    'dateDeclarationSub': dateDeclarationSub,
    'dateDeclarationIssue': dateDeclarationIssue,
    'dateDeparture': dateDeparture,
  };

  // Отфильтруем карту, чтобы исключить null даты
  dateMap.removeWhere((key, value) => value == null);

  // Сортируем карту по времени в обратном порядке
  var sortedDates = dateMap.entries.toList()
    ..sort((a, b) => b.value!.compareTo(a.value!));

  if (sortedDates.isEmpty) {
    return null;
  } else {
    // Теперь в sortedDates[0] хранится последняя дата и ее название (ключ)
    String dateName = sortedDates[0].key;

    // Переводим названия на русский язык
    var translateMap = {
      'dateArrive': 'Geminin varışı',
      'dateQuarantine': 'Karantina kontrol',
      'datePrincuts': 'Karantina izni',
      'dateDeclarationSub': 'Beyanname açılışı',
      'dateDeclarationIssue': 'Beyanname kapanışı',
      'dateDeparture': 'Müşteriye gidiş',
    };

    return translateMap[dateName] ?? '';
  }
}

String? datetotextFuncSeaEng(
  String? dateArrive,
  String? dateQuarantine,
  String? datePrincuts,
  String? dateDeclarationSub,
  String? dateDeclarationIssue,
  String? dateDeparture,
) {
  var dateMap = {
    'dateArrive': dateArrive,
    'dateQuarantine': dateQuarantine,
    'datePrincuts': datePrincuts,
    'dateDeclarationSub': dateDeclarationSub,
    'dateDeclarationIssue': dateDeclarationIssue,
    'dateDeparture': dateDeparture,
  };

  // Отфильтруем карту, чтобы исключить null даты
  dateMap.removeWhere((key, value) => value == null);

  // Сортируем карту по времени в обратном порядке
  var sortedDates = dateMap.entries.toList()
    ..sort((a, b) => b.value!.compareTo(a.value!));

  if (sortedDates.isEmpty) {
    return null;
  } else {
    // Теперь в sortedDates[0] хранится последняя дата и ее название (ключ)
    String dateName = sortedDates[0].key;

    // Переводим названия на русский язык
    var translateMap = {
      'dateArrive': 'Ship arrival',
      'dateQuarantine': 'Quarantine',
      'datePrincuts': 'Stamping',
      'dateDeclarationSub': 'Declaration',
      'dateDeclarationIssue': 'Release of a declaration',
      'dateDeparture': 'Departure to the customer',
    };

    return translateMap[dateName] ?? '';
  }
}

bool listEmail(
  String? var1,
  String? var2,
  String? var3,
  String? var4,
  String? authuserMail,
) {
  // Create condition that user's mail must contains in list of 4 mails and return true or false
  List<String> emails = [];
  if (var1 != null) emails.add(var1);
  if (var2 != null) emails.add(var2);
  if (var3 != null) emails.add(var3);
  if (var4 != null) emails.add(var4);
  return emails.contains(authuserMail);
}

List<OrdersSeaRow>? search(
  List<OrdersSeaRow>? rows,
  String? textField,
) {
  final results = rows?.where((row) {
    final isMatchingBatchNumber =
        row.batchNumber?.startsWith(textField ?? '') ?? false;
    final isMatchingExpensiveBrand =
        row.expensiveBrand?.startsWith(textField ?? '') ?? false;
    return isMatchingBatchNumber || isMatchingExpensiveBrand;
  }).toList();

  return results;
}

List<BatchNumberRow>? searchBatchNumber(
  List<BatchNumberRow>? rows,
  String? textField,
) {
  final results = rows?.where((row) {
    final isMatchingBatchNumber =
        row.batchNumber?.startsWith(textField ?? '') ?? false;
    final isMatchingTradeMark =
        row.tradeMark?.startsWith(textField ?? '') ?? false;
    return isMatchingBatchNumber || isMatchingTradeMark;
  }).toList();

  return results;
}

List<BatchNumberArchieveRow>? searchBatchNumberArchieve(
  List<BatchNumberArchieveRow>? rows,
  String? textField,
) {
  final results = rows?.where((row) {
    final isMatchingBatchNumber =
        row.batchNumber?.startsWith(textField ?? '') ?? false;
    final isMatchingTradeMark =
        row.tradeMark?.startsWith(textField ?? '') ?? false;
    return isMatchingBatchNumber || isMatchingTradeMark;
  }).toList();
  return results;
}

List<OrdersSeaArchieveRow>? searchOrdersSeaArchive(
  List<OrdersSeaArchieveRow>? rows,
  String? textField,
) {
  final results = rows?.where((row) {
    final isMatchingBatchNumber =
        row.batchNumber?.startsWith(textField ?? '') ?? false;
    final isMatchingExpensiveBrand =
        row.expensiveBrand?.startsWith(textField ?? '') ?? false;
    return isMatchingBatchNumber || isMatchingExpensiveBrand;
  }).toList();

  return results;
}

int? codeGen() {
  return math.Random().nextInt(900000) + 100000;
}
