// Created by Muhamad Fauzi Ridwan on 22/07/21.

part of '_decorators.dart';

class TextInputDecorator {
  TextInputDecorator() {
    _inputDecoration = const InputDecoration();
  }

  InputDecoration? _inputDecoration;

  InputDecoration defaultDecoration() {
    return _inputDecoration!.copyWith();
  }

  InputDecoration fullRadiusDecoration() {
    return _inputDecoration!.copyWith(
      hintStyle: const TextStyle(fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(200),
          borderSide: const BorderSide(color: OrdoColors.disableColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(200),
          borderSide: const BorderSide(color: OrdoColors.disableColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(200),
          borderSide: const BorderSide(color: OrdoColors.disableColor)),
    );
  }

  InputDecoration radiusDecoration(String hint) {
    return _inputDecoration!.copyWith(
      hintText: hint,
      fillColor: OrdoColors.neutralWhite,
      filled: true,
      hintStyle: const TextStyle(fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: OrdoColors.disableColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: OrdoColors.disableColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: OrdoColors.primaryColor)),
    );
  }

  InputDecoration generalDecoration({String? hint, Widget? prefix}) {
    return _inputDecoration!.copyWith(
      hintText: hint,
      prefixIcon: prefix,
      filled: true,
      fillColor: OrdoColors.border,
    );
  }

  InputDecoration fillDecoration() {
    return _inputDecoration!.copyWith(
      filled: true,
    );
  }
}
