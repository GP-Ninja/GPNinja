import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'reflect_acp_widget.dart' show ReflectAcpWidget;
import 'package:flutter/material.dart';

class ReflectAcpModel extends FlutterFlowModel<ReflectAcpWidget> {
  ///  Local state fields for this page.

  bool loadingIcon = false;

  String? introPrompt =
      'I am an Advanced Clinical Practitioner, and have just taken some notes on a clinical case I have encountered:';

  String? clinicalPractice =
      'I need to write a reflective piece that demonstrates I have the following skills:\n\n1.1 Practise in compliance with their respective code\nof professional conduct and within their scope of\npractice, being responsible and accountable for\ntheir decisions, actions and omissions at this level of\npractice.\n1.2 Demonstrate a critical understanding of their\nbroadened level of responsibility and autonomy and\nthe limits of own competence and professional scope\nof practice, including when working with complexity,\nrisk, uncertainty and incomplete information.\n1.3 Act on professional judgement about when to\nseek help, demonstrating critical reflection on own\npractice, self-awareness, emotional intelligence, and\nopenness to change.\n1.4 Work in partnership with individuals, families\nand carers, using a range of assessment methods\nas appropriate (e.g. of history-taking; holistic\nassessment; identifying risk factors; mental health\nassessments; requesting, undertaking and/or\ninterpreting diagnostic tests; and conducting health\nneeds assessments).\n1.5 Demonstrate effective communication skills,\nsupporting people in making decisions, planning\ncare or seeking to make positive changes, using\nHealth Education England’s framework to promote\nperson-centred approaches in health and careviii\n1.6 Use expertise and decision-making skills to inform\nclinical reasoning approaches when dealing with\ndifferentiated and undifferentiated individual\npresentations and complex situations, synthesising\ninformation from multiple sources to make\nappropriate, evidence-based judgements and/or\ndiagnoses.\n1.7 Initiate, evaluate and modify a range of\ninterventions which may include prescribing\nmedicines, therapies, life style advice and care.\n1.8 Exercise professional judgement to manage risk\nappropriately, especially where there may be\ncomplex and unpredictable events and supporting\nteams to do likewise to ensure safety of individuals,\nfamilies and carers.\n1.9 Work collaboratively with an appropriate range\nof multi-agency and inter-professional resources,\ndeveloping, maintaining and evaluating links to\nmanage risk and issues across organisations and\nsettings.\n1.10 Act as a clinical role model/advocate for developing\nand delivering care that is responsive to changing\nrequirements, informed by an understanding\nof local population health needs, agencies and\nnetworks.\n1.11 Evidence the underpinning subject-specific\ncompetencies i.e. knowledge, skills and behaviours\nrelevant to the role setting and scope, and\ndemonstrate application of the capabilities to these,\nin an approach that is appropriate to the individual\nrole, setting and scope.';

  String? leadershipAndManagement =
      'I need to write a reflective piece that demonstrates I have the following skills:\n\n2.1 Pro-actively initiate and develop effective\nrelationships, fostering clarity of roles within teams,\nto encourage productive working.\n2.2 Role model the values of their organisation/place of\nwork, demonstrating a person-centred approach to\nservice delivery and development.\n2.3 Evaluate own practice, and participate in\nmulti-disciplinary service and team evaluation,\ndemonstrating the impact of advanced clinical\npractice on service function and effectiveness,\nand quality (i.e. outcomes of care, experience and\nsafety).\n2.4 Actively engage in peer review to inform own and\nother’s practice, formulating and implementing\nstrategies to act on learning and make\nimprovements.\n2.5 Lead new practice and service redesign solutions\nin response to feedback, evaluation and need,\nworking across boundaries and broadening sphere\nof influence.\n2.6 Actively seek feedback and involvement from\nindividuals, families, carers, communities and\ncolleagues in the co-production of service\nimprovements.\n2.7 Critically apply advanced clinical expertise in\nappropriate faciliatory ways to provide consultancy\nacross professional and service boundaries,\ninfluencing clinical practice to enhance quality,\nreduce unwarranted variation and promote the\nsharing and adoption of best practice.\n2.8 Demonstrate team leadership, resilience and\ndetermination, managing situations that are\nunfamiliar, complex or unpredictable and seeking to\nbuild confidence in others.\n2.9 Continually develop practice in response to\nchanging population health need, engaging in\nhorizon scanning for future developments (e.g.\nimpacts of genomics, new treatments and changing\nsocial challenges).\n2.10 Demonstrate receptiveness to challenge and\npreparedness to constructively challenge others,\nescalating concerns that affect individuals’,\nfamilies’, carers’, communities’ and colleagues’\nsafety and well-being when necessary.\n2.11 Negotiate an individual scope of practice within\nlegal, ethical, professional and organisational\npolicies, governance and procedures, with a focus\non managing risk and upholding safety.';

  String? education =
      'I need to write a reflective piece that demonstrates I have the following skills:\n\n3.1 Critically assess and address own learning needs,\nnegotiating a personal development plan that\nreflects the breadth of ongoing professional\ndevelopment across the four pillars of advanced\nclinical practice.\n3.2 Engage in self-directed learning, critically reflecting\nto maximise clinical skills and knowledge, as well as\nown potential to lead and develop both care and\nservices.\n3.3 Engage with, appraise and respond to individuals’\nmotivation, development stage and capacity,\nworking collaboratively to support health literacy\nand empower individuals to participate in decisions\nabout their care and to maximise their health and\nwell-being.\n3.4 Advocate for and contribute to a culture of\norganisational learning to inspire future and existing\nstaff.\n3.5 Facilitate collaboration of the wider team and\nsupport peer review processes to identify individual\nand team learning.\n3.6 Identify further developmental needs for the\nindividual and the wider team and supporting them\nto address these.\n3.7 Supporting the wider team to build capacity\nand capability through work-based and inter-\nprofessional learning, and the application of\nlearning to practice\n3.8 Act as a role model, educator, supervisor, coach\nand mentor, seeking to instill and develop the\nconfidence of others.';

  String? research =
      'I need to write a reflective piece that demonstrates I have the following skills:\n\n4.1 Critically engage in research activity, adhering to\ngood research practice guidance, so that evidence-\nbased strategies are developed and applied to\nenhance quality, safety, productivity and value\nfor money.\n4.2 Evaluate and audit own and others’ clinical practice,\nselecting and applying valid, reliable methods, then\nacting on the findings.\n4.3 Critically appraise and synthesise the outcome of\nrelevant research, evaluation and audit, using the\nresults to underpin own practice and to inform that\nof others.\n4.4 Take a critical approach to identify gaps in the\nevidence base and its application to practice,\nalerting appropriate individuals and organisations\nto these and how they might be addressed in a safe\nand pragmatic way.\n4.5 Actively identify potential need for further research\nto strengthen evidence for best practice. This may\ninvolve acting as an educator, leader, innovator and\ncontributor to research activityix and/or seeking out\nand applying for research funding.\n4.6 Develop and implement robust governance systems\nand systematic documentation processes, keeping\nthe need for modifications under critical review.\n4.7 Disseminate best practice research findings and\nquality improvement projects through appropriate\nmedia and fora (e.g. presentations and peer review\nresearch publications).\n4.8 Facilitate collaborative links between clinical practice\nand research through proactive engagement,\nnetworking with academic, clinical and other active\nresearchers';

  String? closingPrompt =
      'Select 5 of the skills above that are most relevant to my case. Give a list of these 5 skills with their original numbering. Do not add any additional numbering. E.g. if the original numbering is 2.3 use this rather than ‘1. 2.3’. With each skill include an example of how I could have shown this skill in the specific case mentioned above, separated from the skill with a blank line. Begin this example with \'You may have’, and word the example hypothetically, rather than saying that I did do something, for example using ‘you could have’, rather than ‘you did’. Format the entirety of the response in second person to address the user, do not use first person. Separate each statement pair with a blank line. Avoid generalised responses, and personalise the response as much as possible to the individual case. Do not include any additional comments apart from the list of skills and associated examples. Start your response with the first item with no introductory text.';

  String? clinicalCase;

  String? keyPoints = 'This is an area I’d like you to focus on: ';

  DocumentReference? reflectionRef;

  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for MouseRegionCase widget.
  bool mouseRegionCaseHovered = false;
  // State field(s) for ClinicalCase widget.
  FocusNode? clinicalCaseFocusNode;
  TextEditingController? clinicalCaseTextController;
  String? Function(BuildContext, String?)? clinicalCaseTextControllerValidator;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? clinicalPracticeAPI;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? clinicalPracticeAPIRetry;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? leadershipAndManagementAPI;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? leadershipAndManagementAPIRetry;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? educationAPI;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? educationAPIRetry;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? researchAPI;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? researchAPIRetry;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReflectionACPRecord? newReflection;
  // State field(s) for MouseRegionCapability1 widget.
  bool mouseRegionCapability1Hovered = false;
  // State field(s) for clinicalPractice widget.
  FocusNode? clinicalPracticeFocusNode;
  TextEditingController? clinicalPracticeTextController;
  String? Function(BuildContext, String?)?
      clinicalPracticeTextControllerValidator;
  // State field(s) for MouseRegionCapability2 widget.
  bool mouseRegionCapability2Hovered = false;
  // State field(s) for leadershipAndManagement widget.
  FocusNode? leadershipAndManagementFocusNode;
  TextEditingController? leadershipAndManagementTextController;
  String? Function(BuildContext, String?)?
      leadershipAndManagementTextControllerValidator;
  // State field(s) for MouseRegionCapability3 widget.
  bool mouseRegionCapability3Hovered = false;
  // State field(s) for education widget.
  FocusNode? educationFocusNode;
  TextEditingController? educationTextController;
  String? Function(BuildContext, String?)? educationTextControllerValidator;
  // State field(s) for MouseRegionCapability4 widget.
  bool mouseRegionCapability4Hovered = false;
  // State field(s) for research widget.
  FocusNode? researchFocusNode;
  TextEditingController? researchTextController;
  String? Function(BuildContext, String?)? researchTextControllerValidator;

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
    clinicalCaseFocusNode?.dispose();
    clinicalCaseTextController?.dispose();

    clinicalPracticeFocusNode?.dispose();
    clinicalPracticeTextController?.dispose();

    leadershipAndManagementFocusNode?.dispose();
    leadershipAndManagementTextController?.dispose();

    educationFocusNode?.dispose();
    educationTextController?.dispose();

    researchFocusNode?.dispose();
    researchTextController?.dispose();
  }
}
