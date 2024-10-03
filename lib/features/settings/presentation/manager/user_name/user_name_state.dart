import 'package:flutter/material.dart';

@immutable
sealed class UserNameStates {}

final class UserNameInitial extends UserNameStates {}

final class ChangeUserName extends UserNameStates {}
