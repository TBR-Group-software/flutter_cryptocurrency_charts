import 'package:clean_app/backbone/bloc_status.dart';
import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/data/gateway/constants.dart';
import 'package:clean_app/presentation/bloc/coin/bloc.dart';
import 'package:clean_app/presentation/bloc/global_data/bloc.dart';
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefreshButton extends StatefulWidget {
  final void Function()? onPressed;
  const RefreshButton({
    this.onPressed,
  });

  @override
  State<RefreshButton> createState() => _RefreshButtonState();
}

class _RefreshButtonState extends State<RefreshButton> {
  final CoinBloc coinBloc = di.sl.get();
  final GlobalDataBloc globalDataBloc = di.sl.get();
  final SettingsBloc settingsBloc = di.sl.get();
  int pageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // ignore: unnecessary_statements
        widget.onPressed;
        settingsBloc.add(const SettingsEvent.getFiatCurrency());
        settingsBloc.stream.listen(
          (SettingsState state) {
            if (state.status == BlocStatus.Loaded) {
              globalDataBloc.add(const GlobalDataEvent.getGlobalData());
              coinBloc.add(CoinEvent.getMarketCoins(
                state.fiatCurrency!,
                order,
                pageNumber,
                perPage100,
                sparkLineIsTrue,
              ));
            }
          },
        );
      },
      icon: Icon(
        Icons.refresh,
        color: Palette.primary,
        size: 32.sp,
      ),
    );
  }
}
