import 'package:donezy_app/src/modules/auth/blocs/sign_out_bloc/sign_out_bloc.dart';
import 'package:donezy_app/src/modules/auth/blocs/watch_auth_bloc/watch_auth_bloc.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignOutTile extends StatelessWidget {
  const SignOutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchAuthBloc, WatchAuthState>(
      builder: (context, state) => switch (state) {
        Authenticated() => ListTile(
          leading: const Icon(Icons.logout),
          title: Text(
            ConstStrings.signOut,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: () => onTap(context),
        ),
        _ => const SizedBox.shrink(),
      },
    );
  }

  void onTap(BuildContext context) {
    context.read<SignOutBloc>().add(const SignOutEvent.signOut());
  }
}
