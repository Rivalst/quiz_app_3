// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_score_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizScoreState {
  int get score => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  int get incorrectAnswers => throw _privateConstructorUsedError;
  int get currentQuizIndex => throw _privateConstructorUsedError;
  bool get isButtonsOff => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, int correctAnswers,
            int incorrectAnswers, int currentQuizIndex, bool isButtonsOff)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, int correctAnswers, int incorrectAnswers,
            int currentQuizIndex, bool isButtonsOff)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, int correctAnswers, int incorrectAnswers,
            int currentQuizIndex, bool isButtonsOff)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialScoreState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$InitialScoreState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialScoreState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizScoreStateCopyWith<QuizScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizScoreStateCopyWith<$Res> {
  factory $QuizScoreStateCopyWith(
          QuizScoreState value, $Res Function(QuizScoreState) then) =
      _$QuizScoreStateCopyWithImpl<$Res, QuizScoreState>;
  @useResult
  $Res call(
      {int score,
      int correctAnswers,
      int incorrectAnswers,
      int currentQuizIndex,
      bool isButtonsOff});
}

/// @nodoc
class _$QuizScoreStateCopyWithImpl<$Res, $Val extends QuizScoreState>
    implements $QuizScoreStateCopyWith<$Res> {
  _$QuizScoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? correctAnswers = null,
    Object? incorrectAnswers = null,
    Object? currentQuizIndex = null,
    Object? isButtonsOff = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuizIndex: null == currentQuizIndex
          ? _value.currentQuizIndex
          : currentQuizIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isButtonsOff: null == isButtonsOff
          ? _value.isButtonsOff
          : isButtonsOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$InitialScoreStateImplCopyWith<$Res>
    implements $QuizScoreStateCopyWith<$Res> {
  factory _$$$InitialScoreStateImplCopyWith(_$$InitialScoreStateImpl value,
          $Res Function(_$$InitialScoreStateImpl) then) =
      __$$$InitialScoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int score,
      int correctAnswers,
      int incorrectAnswers,
      int currentQuizIndex,
      bool isButtonsOff});
}

/// @nodoc
class __$$$InitialScoreStateImplCopyWithImpl<$Res>
    extends _$QuizScoreStateCopyWithImpl<$Res, _$$InitialScoreStateImpl>
    implements _$$$InitialScoreStateImplCopyWith<$Res> {
  __$$$InitialScoreStateImplCopyWithImpl(_$$InitialScoreStateImpl _value,
      $Res Function(_$$InitialScoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? correctAnswers = null,
    Object? incorrectAnswers = null,
    Object? currentQuizIndex = null,
    Object? isButtonsOff = null,
  }) {
    return _then(_$$InitialScoreStateImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuizIndex: null == currentQuizIndex
          ? _value.currentQuizIndex
          : currentQuizIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isButtonsOff: null == isButtonsOff
          ? _value.isButtonsOff
          : isButtonsOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$InitialScoreStateImpl extends _$InitialScoreState {
  _$$InitialScoreStateImpl(
      {this.score = 0,
      this.correctAnswers = 0,
      this.incorrectAnswers = 0,
      this.currentQuizIndex = 0,
      this.isButtonsOff = false})
      : super._();

  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int correctAnswers;
  @override
  @JsonKey()
  final int incorrectAnswers;
  @override
  @JsonKey()
  final int currentQuizIndex;
  @override
  @JsonKey()
  final bool isButtonsOff;

  @override
  String toString() {
    return 'QuizScoreState.initial(score: $score, correctAnswers: $correctAnswers, incorrectAnswers: $incorrectAnswers, currentQuizIndex: $currentQuizIndex, isButtonsOff: $isButtonsOff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$InitialScoreStateImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.incorrectAnswers, incorrectAnswers) ||
                other.incorrectAnswers == incorrectAnswers) &&
            (identical(other.currentQuizIndex, currentQuizIndex) ||
                other.currentQuizIndex == currentQuizIndex) &&
            (identical(other.isButtonsOff, isButtonsOff) ||
                other.isButtonsOff == isButtonsOff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score, correctAnswers,
      incorrectAnswers, currentQuizIndex, isButtonsOff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$InitialScoreStateImplCopyWith<_$$InitialScoreStateImpl> get copyWith =>
      __$$$InitialScoreStateImplCopyWithImpl<_$$InitialScoreStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, int correctAnswers,
            int incorrectAnswers, int currentQuizIndex, bool isButtonsOff)
        initial,
  }) {
    return initial(score, correctAnswers, incorrectAnswers, currentQuizIndex,
        isButtonsOff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, int correctAnswers, int incorrectAnswers,
            int currentQuizIndex, bool isButtonsOff)?
        initial,
  }) {
    return initial?.call(score, correctAnswers, incorrectAnswers,
        currentQuizIndex, isButtonsOff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, int correctAnswers, int incorrectAnswers,
            int currentQuizIndex, bool isButtonsOff)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(score, correctAnswers, incorrectAnswers, currentQuizIndex,
          isButtonsOff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialScoreState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$InitialScoreState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialScoreState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$InitialScoreState extends QuizScoreState {
  factory _$InitialScoreState(
      {final int score,
      final int correctAnswers,
      final int incorrectAnswers,
      final int currentQuizIndex,
      final bool isButtonsOff}) = _$$InitialScoreStateImpl;
  _$InitialScoreState._() : super._();

  @override
  int get score;
  @override
  int get correctAnswers;
  @override
  int get incorrectAnswers;
  @override
  int get currentQuizIndex;
  @override
  bool get isButtonsOff;
  @override
  @JsonKey(ignore: true)
  _$$$InitialScoreStateImplCopyWith<_$$InitialScoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizScoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, bool isCorrectAnswer) increment,
    required TResult Function(bool isButtonsOff) buttonsStatusChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, bool isCorrectAnswer)? increment,
    TResult? Function(bool isButtonsOff)? buttonsStatusChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, bool isCorrectAnswer)? increment,
    TResult Function(bool isButtonsOff)? buttonsStatusChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementScoreEvent value) increment,
    required TResult Function(_ChangeButtonsStatusEvent value)
        buttonsStatusChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementScoreEvent value)? increment,
    TResult? Function(_ChangeButtonsStatusEvent value)? buttonsStatusChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementScoreEvent value)? increment,
    TResult Function(_ChangeButtonsStatusEvent value)? buttonsStatusChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizScoreEventCopyWith<$Res> {
  factory $QuizScoreEventCopyWith(
          QuizScoreEvent value, $Res Function(QuizScoreEvent) then) =
      _$QuizScoreEventCopyWithImpl<$Res, QuizScoreEvent>;
}

/// @nodoc
class _$QuizScoreEventCopyWithImpl<$Res, $Val extends QuizScoreEvent>
    implements $QuizScoreEventCopyWith<$Res> {
  _$QuizScoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IncrementScoreEventImplCopyWith<$Res> {
  factory _$$IncrementScoreEventImplCopyWith(_$IncrementScoreEventImpl value,
          $Res Function(_$IncrementScoreEventImpl) then) =
      __$$IncrementScoreEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int score, bool isCorrectAnswer});
}

/// @nodoc
class __$$IncrementScoreEventImplCopyWithImpl<$Res>
    extends _$QuizScoreEventCopyWithImpl<$Res, _$IncrementScoreEventImpl>
    implements _$$IncrementScoreEventImplCopyWith<$Res> {
  __$$IncrementScoreEventImplCopyWithImpl(_$IncrementScoreEventImpl _value,
      $Res Function(_$IncrementScoreEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? isCorrectAnswer = null,
  }) {
    return _then(_$IncrementScoreEventImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrectAnswer: null == isCorrectAnswer
          ? _value.isCorrectAnswer
          : isCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IncrementScoreEventImpl implements _IncrementScoreEvent {
  const _$IncrementScoreEventImpl(
      {this.score = 0, this.isCorrectAnswer = false});

  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final bool isCorrectAnswer;

  @override
  String toString() {
    return 'QuizScoreEvent.increment(score: $score, isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementScoreEventImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                other.isCorrectAnswer == isCorrectAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score, isCorrectAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementScoreEventImplCopyWith<_$IncrementScoreEventImpl> get copyWith =>
      __$$IncrementScoreEventImplCopyWithImpl<_$IncrementScoreEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, bool isCorrectAnswer) increment,
    required TResult Function(bool isButtonsOff) buttonsStatusChange,
  }) {
    return increment(score, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, bool isCorrectAnswer)? increment,
    TResult? Function(bool isButtonsOff)? buttonsStatusChange,
  }) {
    return increment?.call(score, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, bool isCorrectAnswer)? increment,
    TResult Function(bool isButtonsOff)? buttonsStatusChange,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(score, isCorrectAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementScoreEvent value) increment,
    required TResult Function(_ChangeButtonsStatusEvent value)
        buttonsStatusChange,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementScoreEvent value)? increment,
    TResult? Function(_ChangeButtonsStatusEvent value)? buttonsStatusChange,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementScoreEvent value)? increment,
    TResult Function(_ChangeButtonsStatusEvent value)? buttonsStatusChange,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _IncrementScoreEvent implements QuizScoreEvent {
  const factory _IncrementScoreEvent(
      {final int score,
      final bool isCorrectAnswer}) = _$IncrementScoreEventImpl;

  int get score;
  bool get isCorrectAnswer;
  @JsonKey(ignore: true)
  _$$IncrementScoreEventImplCopyWith<_$IncrementScoreEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeButtonsStatusEventImplCopyWith<$Res> {
  factory _$$ChangeButtonsStatusEventImplCopyWith(
          _$ChangeButtonsStatusEventImpl value,
          $Res Function(_$ChangeButtonsStatusEventImpl) then) =
      __$$ChangeButtonsStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isButtonsOff});
}

/// @nodoc
class __$$ChangeButtonsStatusEventImplCopyWithImpl<$Res>
    extends _$QuizScoreEventCopyWithImpl<$Res, _$ChangeButtonsStatusEventImpl>
    implements _$$ChangeButtonsStatusEventImplCopyWith<$Res> {
  __$$ChangeButtonsStatusEventImplCopyWithImpl(
      _$ChangeButtonsStatusEventImpl _value,
      $Res Function(_$ChangeButtonsStatusEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isButtonsOff = null,
  }) {
    return _then(_$ChangeButtonsStatusEventImpl(
      isButtonsOff: null == isButtonsOff
          ? _value.isButtonsOff
          : isButtonsOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeButtonsStatusEventImpl implements _ChangeButtonsStatusEvent {
  const _$ChangeButtonsStatusEventImpl({this.isButtonsOff = false});

  @override
  @JsonKey()
  final bool isButtonsOff;

  @override
  String toString() {
    return 'QuizScoreEvent.buttonsStatusChange(isButtonsOff: $isButtonsOff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeButtonsStatusEventImpl &&
            (identical(other.isButtonsOff, isButtonsOff) ||
                other.isButtonsOff == isButtonsOff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isButtonsOff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeButtonsStatusEventImplCopyWith<_$ChangeButtonsStatusEventImpl>
      get copyWith => __$$ChangeButtonsStatusEventImplCopyWithImpl<
          _$ChangeButtonsStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, bool isCorrectAnswer) increment,
    required TResult Function(bool isButtonsOff) buttonsStatusChange,
  }) {
    return buttonsStatusChange(isButtonsOff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, bool isCorrectAnswer)? increment,
    TResult? Function(bool isButtonsOff)? buttonsStatusChange,
  }) {
    return buttonsStatusChange?.call(isButtonsOff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, bool isCorrectAnswer)? increment,
    TResult Function(bool isButtonsOff)? buttonsStatusChange,
    required TResult orElse(),
  }) {
    if (buttonsStatusChange != null) {
      return buttonsStatusChange(isButtonsOff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementScoreEvent value) increment,
    required TResult Function(_ChangeButtonsStatusEvent value)
        buttonsStatusChange,
  }) {
    return buttonsStatusChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncrementScoreEvent value)? increment,
    TResult? Function(_ChangeButtonsStatusEvent value)? buttonsStatusChange,
  }) {
    return buttonsStatusChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementScoreEvent value)? increment,
    TResult Function(_ChangeButtonsStatusEvent value)? buttonsStatusChange,
    required TResult orElse(),
  }) {
    if (buttonsStatusChange != null) {
      return buttonsStatusChange(this);
    }
    return orElse();
  }
}

abstract class _ChangeButtonsStatusEvent implements QuizScoreEvent {
  const factory _ChangeButtonsStatusEvent({final bool isButtonsOff}) =
      _$ChangeButtonsStatusEventImpl;

  bool get isButtonsOff;
  @JsonKey(ignore: true)
  _$$ChangeButtonsStatusEventImplCopyWith<_$ChangeButtonsStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
