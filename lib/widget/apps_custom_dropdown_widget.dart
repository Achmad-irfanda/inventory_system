// apps custom dropdown

import 'package:inventory_system/apps_common_libs.dart';

enum Tema { primary, secondary }

class CustomDropdownItem<T> {
  final T value;
  final String label;

  CustomDropdownItem(
    this.value,
    this.label,
  );
}

class CustomDropdown<T> extends StatelessWidget {
  final bool withSearchBar;
  final String searchhint;
  final String title;
  final dynamic colorBgTitle;
  final Tema tema;
  final T value;
  final Function(T) onChange;
  final bool stringMapping;
  final List<CustomDropdownItem<T>> itemString;
  final List<DropdownMenuItem<T>> itemStringMap;
  final List<DropdownMenuItem<T>> itemInt;

  const CustomDropdown({
    this.withSearchBar = false,
    this.searchhint = "",
    required this.title,
    this.colorBgTitle,
    required this.tema,
    required this.value,
    required this.onChange,
    this.stringMapping = false,
    required this.itemString,
    required this.itemStringMap,
    required this.itemInt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final primaryColor = Theme.of(context).primaryColor;
    final hoverColor = Theme.of(context).hoverColor;
    final bodyText1 = Theme.of(context).textTheme.bodyText1;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(
                  color: hoverColor,
                ),
                borderRadius: BorderRadius.circular(16)),
            child: (withSearchBar == true)
                ? SearchChoices.single(
                    isCaseSensitiveSearch: true,
                    underline: const SizedBox(),
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    clearIcon: Icon(
                      Icons.delete_forever_rounded,
                      color: primaryColor,
                    ),
                    items: (T == int)
                        ? itemInt
                        : (T == String && stringMapping == true)
                            ? itemStringMap
                            : itemString
                                .map((item) => DropdownMenuItem(
                                      value: item.value,
                                      child: Text(
                                        item.label,
                                        style: bodyText1,
                                      ),
                                    ))
                                .toList(),
                    value: value,
                    hint: Text(
                      "Choose an item",
                      style: bodyText1,
                    ),
                    searchHint: null,
                    onChanged: (value) {
                      onChange(value!);
                      print('valuesnya $value');
                    },
                    isExpanded: true,
                  )
                : DropdownButtonHideUnderline(
                    child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<T>(
                            icon: const Visibility(
                                visible: false,
                                child: Icon(Icons.arrow_downward)),
                            borderRadius: BorderRadius.circular(12),
                            isExpanded: true,
                            hint: const Text("Choose an item"),
                            dropdownColor: scaffoldBackgroundColor,
                            value: value,
                            onChanged: (value) {
                              onChange(value!);
                              print('valuesnya $value');
                            },
                            items: (T == int)
                                ? itemInt
                                : (T == String && stringMapping == true)
                                    ? itemStringMap
                                    : itemString
                                        .map((item) => DropdownMenuItem(
                                              value: item.value,
                                              child: Text(
                                                item.label,
                                                style: bodyText1,
                                              ),
                                            ))
                                        .toList()))),
          ),
        ),
        if (T == int || stringMapping == true)
          Positioned(
            left: 32,
            child: Container(
              color: colorBgTitle,
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
      ],
    );
  }
}
