import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:recipes/core/enums/request_state.dart';
import 'package:recipes/core/router/router.dart';
import 'package:recipes/core/shared-widgets/banners/default_banner.dart';
import 'package:recipes/core/shared-widgets/cards/recipe_card.dart';
import 'package:recipes/core/shared-widgets/default_scaffold.dart';
import 'package:recipes/core/shared-widgets/inputs/search_field.dart';
import 'package:recipes/core/shared-widgets/refreshable_list.dart';
import 'package:recipes/core/shared-widgets/shimmer_loading.dart';
import 'package:recipes/features/search/view/bloc/search_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

part 'search_screen.dart';
