import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/application/counter/counter_cubit.dart';
import 'package:flutter_boilerplate/ui/routes/app_router.gr.dart';
import 'package:flutter_boilerplate/ui/widgets/spaces.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  CounterCubit _counterCubit;
  int currentValue = 0;

  @override
  void initState() {
    _counterCubit = CounterCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: BlocBuilder<CounterCubit, CounterState>(
              cubit: _counterCubit,
              builder: (context, state) {
                currentValue = int.parse(state.value);

                if (state is CounterInitial) {
                  return Text(
                    state.value,
                    style: theme.textTheme.headline4,
                  );
                } else if (state is CounterInitial) {
                  return Text(
                    state.value,
                    style: theme.textTheme.headline4,
                  );
                } else {
                  return Text(
                    state.value,
                    style: theme.textTheme.headline4,
                  );
                }
              },
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            onPressed: () {
              ExtendedNavigator.root.push(Routes.nextScreen);
            },
            heroTag: null,
          ),
          SpaceH16(),
          FloatingActionButton(
            child: fabChild("2"),
            onPressed: onIncrementBy2,
            heroTag: null,
          ),
          SpaceH16(),
          FloatingActionButton(
            child: fabChild("4"),
            onPressed: onIncrementBy4,
            heroTag: null,
          )
        ],
      ),
    );
  }

  Widget fabChild(String incrementNum) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add),
//        SpaceW2(),
        Text(incrementNum),
      ],
    );
  }

  void onIncrementBy4() {
    _counterCubit.countByFour(value: currentValue);
  }

  void onIncrementBy2() {
    _counterCubit.countByTwo(value: currentValue);
  }
}
