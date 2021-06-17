// Copyright (c) 2021, Prime Holding JSC
// https://www.primeholding.com
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_rx_bloc/flutter_rx_bloc.dart';

import '../../app_extensions.dart';
import '../../base/common_blocs/user_account_bloc.dart';
import '../../base/common_ui_components/popup_builder.dart';

// ignore_for_file: avoid_field_initializers_in_const_classes

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
  }) : super(key: key);

  final _notificationKey = 'notifications';
  final _logoutKey = 'logout';

  /// region Builders

  @override
  Widget build(BuildContext context) =>
      RxBlocBuilder<UserAccountBlocType, bool>(
        state: (bloc) => bloc.states.loggedIn,
        builder: (context, loggedInState, bloc) => Padding(
          padding: const EdgeInsets.all(12),
          child: (loggedInState.hasData && loggedInState.data!)
              ? _buildLoggedInAvatar(context)
              : _buildLoginButton(context),
        ),
      );

  Widget _buildLoginButton(BuildContext context) => IconButton(
    icon: Icon(context.designSystem.icons.login),
    onPressed: () => context.router.push(const LoginRoute()),
  );

  Widget _buildLoggedInAvatar(BuildContext context) => PopupBuilder<String>(
    items: [
      PopupMenuItem<String>(
        value: _notificationKey,
        child: Text(
          context.l10n.notifications,
          style: context.designSystem.typography.fadedButtonText,
        ),
      ),
      const PopupMenuDivider(height: 2),
      PopupMenuItem<String>(
        value: _logoutKey,
        child: Text(
          context.l10n.logOut,
          style: context.designSystem.typography.fadedButtonText,
        ),
      ),
    ],
    onSelected: (selected) {
      if (selected == _notificationKey) {
        context.router.push(const NotificationsRoute());
      } else if (selected == _logoutKey) {
        RxBlocProvider.of<UserAccountBlocType>(context).events.logout();
      }
    },
    child: const Icon(Icons.person),
  );

/// endregion

}
