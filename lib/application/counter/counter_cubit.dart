import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial("0"));

  Future<void> countByTwo({@required int value}) async {
    emit(CountByTwo((value + 2).toString()));
  }

  Future<void> countByFour({@required int value}) async {
    emit(CountByFour((value + 4).toString()));
  }
}
