import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'recall_widget.dart' show RecallWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class RecallModel extends FlutterFlowModel<RecallWidget> {
  ///  Local state fields for this page.

  bool isFront = true;

  DocumentReference? selectedCategoryId;

  String selectedCategoryName = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController1;
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  FlashcardCategoriesRecord? selectedCategory;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<FlashcardsRecord>? selectedFlashcards;

  @override
  void initState(BuildContext context) {
    swipeableStackController1 = CardSwiperController();
    swipeableStackController2 = CardSwiperController();
  }

  @override
  void dispose() {}
}
