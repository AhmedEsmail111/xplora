import 'package:flutter/material.dart';

@immutable
sealed class SliderStates {}

final class SliderInitial extends SliderStates {}

final class SliderSetAgeState extends SliderStates {}
