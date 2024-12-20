import 'package:bmi_calc/presentation/calc/calc_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<CalcCubit>(() => CalcCubit());
}
