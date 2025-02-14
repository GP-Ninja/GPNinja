import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool accountCreatedBefore(DateTime date) {
  // return true if the input date is before 4/24/2024
  return date.isBefore(DateTime(2024, 4, 24));
}

DateTime? addoneday(DateTime? inputdate) {
  // add day to input date
  if (inputdate == null) return null;
  return inputdate.add(Duration(days: 1));
}

DateTime? addaweek(DateTime? inputdate) {
  // add day to input date
  if (inputdate == null) return null;
  return inputdate.add(Duration(days: 7));
}

DateTime? addfourdays(DateTime? inputdate) {
  // add day to input date
  if (inputdate == null) return null;
  return inputdate.add(Duration(days: 4));
}

DateTime? addtwodays(DateTime? inputdate) {
  // add day to input date
  if (inputdate == null) return null;
  return inputdate.add(Duration(days: 2));
}

double? divideby3(int? input) {
  // divide by 3
  if (input == null) return null;
  return input / 3;
}

String asterixtonewline(String input) {
  // replace all commas and their subsequent space with a new line
  return input.replaceAll('*', '\n');
}

List<String>? makelist(
  String? capability1,
  String? capability2,
  String? capability3,
) {
  // make a list of the 3 inputs
  if (capability1 == null && capability2 == null && capability3 == null)
    return null;
  List<String> list = [];
  if (capability1 != null) list.add(capability1);
  if (capability2 != null) list.add(capability2);
  if (capability3 != null) list.add(capability3);
  return list;
}

double? divideby36(int? numberofreflections) {
  // divide the input by 36
  if (numberofreflections == null) return null;
  return numberofreflections / 36;
}

String? convertListToStringComma(List<String>? string) {
  // convert list to a string
  if (string == null || string.isEmpty) {
    return null;
  }
  return string.join(', ');
}

double? cegprogress(
  int? fitnesstopractice,
  int? maintaininganethicalapproach,
  int? communicationandconsultationskills,
  int? datagatheringandinterpretation,
  int? clinicalexaminationandproceduralskills,
  int? makingadiagnosisdecisions,
  int? clinicalmanagement,
  int? managingmedicalcomplexity,
  int? workingwithcolleaguesandinteams,
  int? maintainingperformancelearningandteaching,
  int? organisationmanagementandleadership,
  int? practisingholisticallypromotinghealthandsafeguarding,
  int? communityorientation,
) {
  // calculate the sum of the arguments and divide by 39
  if (fitnesstopractice == null &&
      maintaininganethicalapproach == null &&
      communicationandconsultationskills == null &&
      datagatheringandinterpretation == null &&
      clinicalexaminationandproceduralskills == null &&
      makingadiagnosisdecisions == null &&
      clinicalmanagement == null &&
      managingmedicalcomplexity == null &&
      workingwithcolleaguesandinteams == null &&
      maintainingperformancelearningandteaching == null &&
      organisationmanagementandleadership == null &&
      practisingholisticallypromotinghealthandsafeguarding == null &&
      communityorientation == null) return null;
  double sum = 0;
  if (fitnesstopractice != null) sum += fitnesstopractice;
  if (maintaininganethicalapproach != null) sum += maintaininganethicalapproach;
  if (communicationandconsultationskills != null)
    sum += communicationandconsultationskills;
  if (datagatheringandinterpretation != null)
    sum += datagatheringandinterpretation;
  if (clinicalexaminationandproceduralskills != null)
    sum += clinicalexaminationandproceduralskills;
  if (makingadiagnosisdecisions != null) sum += makingadiagnosisdecisions;
  if (clinicalmanagement != null) sum += clinicalmanagement;
  if (managingmedicalcomplexity != null) sum += managingmedicalcomplexity;
  if (workingwithcolleaguesandinteams != null)
    sum += workingwithcolleaguesandinteams;
  if (maintainingperformancelearningandteaching != null)
    sum += maintainingperformancelearningandteaching;
  if (organisationmanagementandleadership != null)
    sum += organisationmanagementandleadership;
  if (practisingholisticallypromotinghealthandsafeguarding != null)
    sum += practisingholisticallypromotinghealthandsafeguarding;
  if (communityorientation != null) sum += communityorientation;
  return sum / 39;
}

int? numberofdays(
  DateTime? reflectiondate,
  DateTime? accountcreationdate,
) {
  // calculate the time in days elapsed from argument 2 to argument 1, and add 1 to the output
  if (reflectiondate == null || accountcreationdate == null) {
    return null;
  }
  return reflectiondate.difference(accountcreationdate).inDays + 1;
}

String createDynamicLink(
  String? dynamicLinkDomain,
  String? packageName,
  String? deepLink,
  String params,
) {
  // null safety
  dynamicLinkDomain ??= 'https://gpninja.page.link';
  packageName ??= 'com.mycompany.dashboard';
  deepLink ??= 'page';
  params ??= '';

  // more info- https://firebase.google.com/docs/dynamic-links/create-manually

  // build the dynamic link
  String dynamicLinkCombined = dynamicLinkDomain + '?';

  // apn	The package name of the Android app to use to open the link. The app must be connected to your project from the Overview page of the Firebase console. Required for the Dynamic Link to open an Android app.
  dynamicLinkCombined += 'ofl=' + packageName + '&';

  String link = 'link=' +
      Uri.encodeComponent(dynamicLinkDomain + '/' + deepLink + '?' + params);

  dynamicLinkCombined += link;

  return dynamicLinkCombined;
}

List<double> convert2Doubles(String arg) {
  return (jsonDecode(arg) as List).cast<double>().toList();
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  // If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

String newLine(String input) {
  // make a new line after each \n in the input
  return input.replaceAll('\\n', '\n');
}

List<int>? datetointagerCopy(List<DateTime>? date) {
  // convert date to intager in format DDMM
  if (date == null) {
    return null;
  }
  final formatter = DateFormat('ddMM');
  return date.map((d) => int.parse(formatter.format(d))).toList();
}

String? copyNewLines(String? input) {
  // take the input and make a new line with each '\n', then copy the formatted text to clipboard
  if (input == null) return null;
  final formatted = input.replaceAll('\\n', '\n');
  return formatted;
}

int? countWords(String? text) {
  // count the number of words in the input
  if (text == null || text.isEmpty) {
    return null;
  }
  final words = text.trim().split(RegExp(r'\s+'));
  return words.length;
}

bool wordsLessThan(String? text) {
  // return True if word count less than or equal to 80, return False if greater than 80
  if (text == null) {
    return true;
  }
  final words = text.trim().split(' ');
  return words.length <= 400;
}

int? increaseIndex(int? currentQuestion) {
// increase the current question integer by 1
  return currentQuestion != null ? currentQuestion + 1 : null;
}

int? multiply100(int? questionNumber) {
  // multiply an integer by 100
  if (questionNumber == null) {
    return null;
  } else {
    return questionNumber * 100;
  }
}

double progressBarValueDemo(
  int? totalNumber,
  int? completedNumber,
) {
  // Sum the number of tasks complete and convert to a 0 - 1.0 scale
  if (totalNumber == null || completedNumber == null || totalNumber == 0) {
    return 0.0;
  }
  final value = completedNumber.toDouble() / totalNumber;
  if (value == 1.0) {
    return 1.0;
  }
  return value;
  // I have updated this. Updated again.
}

String? convertListToStringNewLine(List<String>? string) {
  // convert list to a string
  if (string == null || string.isEmpty) {
    return null;
  }
  return string.join('\n');
}

int? decreasebyone(int? input) {
  // decrease input by 1
  if (input == null) {
    return null;
  } else {
    return input - 1;
  }
}

String? removeblanklines(String? input) {
  if (input == null) {
    return null;
  }

  final lines =
      LineSplitter.split(input).where((line) => line.trim().isNotEmpty);

  String? result = lines.isEmpty ? null : lines.join('\n').trimRight();

  return result;
}

List<SelectedTextStruct> reorderlist(List<SelectedTextStruct> input) {
  // re-order the list so that the items are listed by the valie of their order variable
  if (input == null || input.isEmpty) {
    return input;
  }
  input.sort((a, b) => a.order.compareTo(b.order));
  return input;
}

String commatonewline(String input) {
  // replace all commas and their subsequent space with a new line
  return input.replaceAll(', ', '\n');
}

List<String>? insertasterixatstart(List<String>? input) {
  // insert asterix at the start of each list item
  if (input == null) {
    return null;
  }
  List<String> output = [];
  for (String item in input) {
    output.add('*$item');
  }
  return output;
}

List<OptionStruct>? orderoptionlist(List<OptionStruct>? optionlist) {
  // order the option items by the index field
  if (optionlist == null || optionlist.isEmpty) {
    return null;
  }
  optionlist.sort((a, b) => a.index.compareTo(b.index));
  return optionlist;
}

String? escapenewline(String? prompt) {
  // escape new line characters
  return prompt?.replaceAll('\n', '\\n');
}

double? sumoflistdouble(List<double>? input) {
  // calculate the sum of a list of doubles
  if (input == null || input.isEmpty) {
    return null;
  }
  double sum = 0.0;
  for (double num in input) {
    sum += num;
  }
  return sum;
}

String? removeQuotationMarks(String? input) {
  // remove all double quotation marks from the string
  return input?.replaceAll('"', '');
}

DateTime? convertdatetimetodate(DateTime? datetime) {
  // convert datetime to show only the date but not the time
  if (datetime == null) {
    return null;
  }
  return DateTime(datetime.year, datetime.month, datetime.day);
}

DateTime? addthreedays(DateTime? inputdate) {
  // add day to input date
  if (inputdate == null) return null;
  return inputdate.add(Duration(days: 3));
}

int? daysbetween(
  DateTime inputdate1,
  DateTime inputdate2,
) {
  // return number of days between input dates
  final difference = inputdate2.difference(inputdate1);
  return difference.inDays.abs();
}

DateTime? muinussevendays() {
  // return the date from 7 days ago, and round to midnight
  return DateTime.now().subtract(Duration(days: 7)).subtract(Duration(
        hours: DateTime.now().hour,
        minutes: DateTime.now().minute,
        seconds: DateTime.now().second,
        milliseconds: DateTime.now().millisecond,
        microseconds: DateTime.now().microsecond,
      ));
}

List<SelectedTextV2Struct> reorderlistV2(List<SelectedTextV2Struct> input) {
  // re-order the list by rowIndex, and within this by unitIndex
  input.sort((a, b) {
    if (a.rowIndex != b.rowIndex) {
      return a.rowIndex.compareTo(b.rowIndex);
    } else {
      return a.unitIndex.compareTo(b.unitIndex);
    }
  });
  return input;
}

DateTime? roundtomidnight(DateTime? date) {
  // round the current date to midnight
  if (date == null) return null;
  return DateTime(date.year, date.month, date.day);
}

List<SelectedTextV2Struct> reorderlistV2all(List<SelectedTextV2Struct> input) {
  // re-order the list by section_index, then rowIndex, and within this by unitIndex
  input.sort((a, b) {
    if (a.sectionIndex != b.sectionIndex) {
      return a.sectionIndex.compareTo(b.sectionIndex);
    } else if (a.rowIndex != b.rowIndex) {
      return a.rowIndex.compareTo(b.rowIndex);
    } else {
      return a.unitIndex.compareTo(b.unitIndex);
    }
  });
  return input;
}

DateTime? incrementdate(
  DateTime? date,
  int? intager,
) {
  // increment date by intager number of days
  if (date == null || intager == null) {
    return null;
  }
  return date.add(Duration(days: intager));
}

List<String>? datetostring(List<DateTime>? date) {
  // convert dates to strings in format DD-MM-YYYY
  if (date == null) return null;
  final formatter = DateFormat('dd-MM-yyyy');
  return date.map((d) => formatter.format(d)).toList();
}

int? stringtointager(String? string) {
  // String to intager
  if (string == null) {
    return null;
  }
  try {
    return int.parse(string);
  } catch (e) {
    return null;
  }
}

List<String>? datetimetoDDMM(List<DateTime>? date) {
  // CONVERT DATE TO STRING FORMAT "DD-MM"
  if (date == null) return null;
  final formatter = DateFormat('dd-MM');
  return date.map((d) => formatter.format(d)).toList();
}

String? convertListToString(List<String>? list) {
  // convert list to string
  if (list == null || list.isEmpty) {
    return null;
  }
  return list.join('');
}

String? removenewlinesatstart(String? input) {
  // remove new lines at start of text
  if (input == null) {
    return null;
  }
  return input.replaceAll(RegExp('^\\n+'), '');
}

List<String>? convertOtherToTypeHere(List<String>? input) {
  // replace any instance of 'Other' in the input with '[Type here...]'
  if (input == null) {
    return null;
  }
  return input.map((str) => str.replaceAll('Other', '[Type here...]')).toList();
}

int? indexOfLastItem(List<String>? list) {
  // return the index of the last item in the list
  if (list == null || list.isEmpty) {
    return null;
  } else {
    return list.length - 1;
  }
}

int? indexOfLastItemRef(List<DocumentReference>? list) {
  // index of last item
  if (list == null || list.isEmpty) {
    return null;
  }
  return list.length - 1;
}

DocumentReference? returnInput(DocumentReference? input) {
  // return the input
  return input;
}

String? replaceTabWithSpace(String? input) {
  // replace tab with space
  if (input == null) {
    return null;
  }
  return input.replaceAll('\t', ' ').replaceAll('\n', ' ').replaceAll('"', '');
  ;
}

String? convertListToStringLeaveALine(List<String>? inputList) {
  // convert the list to a string, leaving a blank line between items
  if (inputList == null || inputList.isEmpty) {
    return null;
  }
  return inputList.join('\n\n');
}

List<ClicknoteSelectedStruct>? orderClicknteSelected(
    List<ClicknoteSelectedStruct>? appStateClicknoteSelected) {
  // order by row_index, then by option_index
  if (appStateClicknoteSelected == null || appStateClicknoteSelected.isEmpty) {
    return null;
  }

  appStateClicknoteSelected.sort((a, b) {
    if (a.rowIndex != b.rowIndex) {
      return a.rowIndex.compareTo(b.rowIndex);
    } else {
      return a.optionIndex.compareTo(b.optionIndex);
    }
  });

  return appStateClicknoteSelected;
}

String? convertToLower(String? input) {
  // convert to lower case
  return input?.toLowerCase();
}

String? addNewLineIfNotEmpty(String? input) {
  // add new line of input is set and not empty
  if (input != null && input.isNotEmpty) {
    return '$input\n';
  }
  return input;
}

int coordinatesToIndex(
  int optionIndex,
  int rowIndex,
  int sectionIndex,
) {
  // return index of item, where there are 4 sections, the first with 20 rows, second with 10, third with 2 and fourth with 10, , each row has 10 items
  int index = 0;
  for (int i = 0; i < sectionIndex; i++) {
    if (i == 0) {
      index += 20 * 10;
    } else if (i == 1) {
      index += 10 * 10;
    } else if (i == 2) {
      index += 2 * 10;
    } else if (i == 3) {
      index += 10 * 10;
    }
  }
  index += rowIndex * 10 + optionIndex;
  return index;
}

int? getIndexInAppStateList(
  int sectionIndex,
  int rowIndex,
  int optionIndex,
  List<ClicknoteSelectedStruct>? appStateClicknoteSelected,
) {
  // return index of item in list appStateClicknoteSelected that has the same section, row and option idex as the arguments
  if (appStateClicknoteSelected == null) {
    return null;
  }
  for (int i = 0; i < appStateClicknoteSelected.length; i++) {
    final item = appStateClicknoteSelected[i];
    if (item.sectionIndex == sectionIndex &&
        item.rowIndex == rowIndex &&
        item.optionIndex == optionIndex) {
      return i;
    }
  }
  return null;
}

List<String>? convertStringToList(String? input) {
  // convert string to list at comma
  if (input == null) {
    return null;
  }
  return input.split(',');
}

String? replaceStarNewLineForClicknote(String? input) {
  // replace * symbol either single or multiple in a row with a single new line
  if (input == null) {
    return null;
  }
  return input.replaceAll(RegExp(r'\*+'), '\n');
}

String? newLineAtStart(String? input) {
  // add new line at start of string
  if (input == null) {
    return null;
  }
  return '\n$input';
}

String? makeAllCaps(String? input) {
  // return input text in all caps
  return input?.toUpperCase();
}

String? formatEmail(String? email) {
  // convert to lower and strip white space from start and end
  return email?.toLowerCase().trim();
}

List<DocumentReference>? templateRefToList(DocumentReference? ref) {
  // turn ref into a list
  if (ref != null) {
    return [ref];
  } else {
    return null;
  }
}

String? addBullets(String? input) {
  // add a hyphon and space at the start of each new line
  if (input == null) {
    return null;
  }

  return input.replaceAll(RegExp(r'^', multiLine: true), '- ');
}

String? addNumbering(String? input) {
  // add numbering and space at the start of each new line, like '1. ' etc
  if (input == null || input.isEmpty) {
    return null;
  }

  List<String> lines = input.split('\n');
  String numberedString = '';

  for (int i = 0; i < lines.length; i++) {
    numberedString += '${i + 1}. ${lines[i]}\n';
  }

  return numberedString;
}

int? textfieldLineCountMultiplier(String? text) {
  // count the number of lines in the text and multliply this by 18
  if (text == null) {
    return null;
  }

  List<String> lines = text.split('\n');
  int lineCount = lines.length;

  // Calculate the height, starting with a base of 50
  int height = 50 + (lineCount - 1) * 18;

  // Ensure the height is at least 50
  if (height < 50) {
    return 50;
  } else {
    return height;
  }
}

String? checkIfStringInTextAndRemove(
  String? optionText,
  String? textfield,
) {
  if (textfield != null && optionText != null) {
    // Append a newline to optionText for the search
    String searchText = optionText + '\n';

    // Find the last occurrence of searchText (optionText + newline) from back to front
    int index = textfield.lastIndexOf(searchText);

    if (index != -1) {
      // Calculate the end index of searchText in textfield
      int endOfOptionText = index + searchText.length;

      // Remove the optionText and the newline after it
      return textfield.replaceRange(index, endOfOptionText, '');
    }

    // Special case: Check if optionText is at the end of textfield, with or without preceding newline
    if (textfield.endsWith(optionText)) {
      // Check if there is a newline before optionText at the end
      int optionTextStart = textfield.length - optionText.length;
      if (optionTextStart > 0 && textfield[optionTextStart - 1] == '\n') {
        // Remove the newline and optionText
        return textfield.substring(0, optionTextStart - 1);
      } else {
        // No newline before, just remove optionText
        return textfield.substring(0, optionTextStart);
      }
    }
  }

  return textfield; // Return the modified or unmodified textfield
}

bool? checkIfStringInText(
  String? optiontext,
  String? textfield,
) {
  if (optiontext != null && textfield != null) {
    // Use a regular expression to check if optiontext is the only text on the line
    RegExp regex =
        RegExp(r'^' + RegExp.escape(optiontext) + r'$', multiLine: true);
    return regex.hasMatch(textfield);
  } else {
    return null;
  }
}

int? getLengthOfString(String? input) {
  // get length of string
  if (input != null) {
    return input.length;
  } else {
    return null;
  }
}

int? convertStringToInteger(String? input) {
  // convert string to integer
  try {
    return int.parse(input ?? '');
  } catch (e) {
    return null;
  }
}

dynamic passCheckupJSON(String? pass) {
  var ret = {
    'moreThan8Char': false,
    'hasUppercase': false,
    'hasDigit': false,
    'hasSpecialChar': false,
    'difficulty': 0
  };
  if (pass == null || pass == '') return ret;
  int count = 0;
  if (pass.length >= 8) {
    ret['moreThan8Char'] = true;
    count = 1;
  }
  if (RegExp(r'[A-Z]').hasMatch(pass)) {
    ret['hasUppercase'] = true;
    count++;
  }
  if (RegExp(r'[0-9]').hasMatch(pass)) {
    ret['hasDigit'] = true;
    count++;
  }
  if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(pass)) {
    ret['hasSpecialChar'] = true;
    count++;
  }
  ret['difficulty'] = count;
  return ret;
}

double passCheckupProgress(String? pass) {
  if (pass == null || pass == '') return 0;
  int count = 0;
  if (pass.length >= 8) count = 1;
  if (RegExp(r'[a-z]').hasMatch(pass)) count++;
  if (RegExp(r'[A-Z]').hasMatch(pass)) count++;
  if (RegExp(r'[0-9]').hasMatch(pass)) count++;
  if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(pass)) count++;
  return (count * 20) / 100;
}

bool isDouble(String? input) {
  // if input is an integer or double return true
  if (input == null) {
    return false;
  }

  try {
    double.parse(input);
    return true;
  } catch (e) {
    return false;
  }
}

bool? subscribeCountCheck(int? count) {
  // if count is greater than or equal to 2 return 2 otherwise return false
  if (count != null && count >= 2) {
    return true;
  } else {
    return false;
  }
}

DateTime? increaseByOneYear(DateTime? date) {
  // return date one year ahead of input
  if (date != null) {
    return DateTime(date.year + 1, date.month, date.day, date.hour, date.minute,
        date.second);
  }
  return null;
}

String? decodeString(String? input) {
  if (input == null) {
    return null;
  }
  // Decode special characters (e.g. %20 => space, %0A => newline)
  return Uri.decodeFull(input);
}
