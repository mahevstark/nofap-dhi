import 'package:flutter/material.dart';import 'package:nofapp/core/app_export.dart';import 'package:nofapp/presentation/experience_encounter_tips_screen/models/experience_encounter_tips_model.dart';/// A provider class for the ExperienceEncounterTipsScreen.
///
/// This provider manages the state of the ExperienceEncounterTipsScreen, including the
/// current experienceEncounterTipsModelObj

// ignore_for_file: must_be_immutable
class ExperienceEncounterTipsProvider extends ChangeNotifier {ExperienceEncounterTipsModel experienceEncounterTipsModelObj = ExperienceEncounterTipsModel();

@override void dispose() { super.dispose(); } 
 }
