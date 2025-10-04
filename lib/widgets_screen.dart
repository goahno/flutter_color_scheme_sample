import 'package:flutter/material.dart';

const _spacing = 16.0;

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({super.key});

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  bool _switchValue = false;
  bool? _checkboxValue = false;
  int _radioValue = 0;
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(_spacing),
      child: ListView(
        children: [
          _filledButtons(),
          _elevatedButtons(),
          _outlinedButtons(),
          _textButtons(),
          _iconButtons(),
          _floatingActionButtons(),
          _switches(),
          _checkboxes(),
          _radios(),
          _sliders(),
          _textFields(),
          _chips(),
          _progressIndicators(),
          _cards(),
          _dialogs(),
          _snackBars(),
          _bottomSheet(),
          _materialBanners(),
        ],
      ),
    );
  }

  Widget _filledButtons() {
    return _container('Filled Buttons', [
      FilledButton(onPressed: () {}, child: Text('Filled Button')),
      FilledButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add_a_photo),
        label: Text('Filled Button Icon'),
      ),
      FilledButton.tonal(onPressed: () {}, child: Text('Filled Button Tonal')),
      FilledButton.tonalIcon(
        onPressed: () {},
        icon: Icon(Icons.add_a_photo),
        label: Text('Filled Button Tonal Icon'),
      ),
    ]);
  }

  Widget _elevatedButtons() {
    return _container('Elevated Buttons', [
      ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
      ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text('Elevated Button Icon'),
      ),
    ]);
  }

  Widget _outlinedButtons() {
    return _container('Outlined Buttons', [
      OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
      OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add_shopping_cart),
        label: Text('Outlined Button Icon'),
      ),
    ]);
  }

  Widget _textButtons() {
    return _container('Text Buttons', [
      TextButton(onPressed: () {}, child: Text('Text Button')),
      TextButton.icon(
        onPressed: () {},
        icon: Icon(Icons.text_fields),
        label: Text('Text Button Icon'),
      ),
    ]);
  }

  Widget _iconButtons() {
    return _container('Icon Buttons', [
      IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
      IconButton.filled(onPressed: () {}, icon: Icon(Icons.favorite)),
      IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.favorite)),
      IconButton.outlined(onPressed: () {}, icon: Icon(Icons.favorite)),
    ]);
  }

  Widget _floatingActionButtons() {
    return _container('Floating Action Buttons', [
      FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.add)),
      FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      FloatingActionButton.large(onPressed: () {}, child: Icon(Icons.add)),
      FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Extended'),
        icon: Icon(Icons.add),
      ),
    ]);
  }

  Widget _switches() {
    return _container('Switches', [
      Switch(
        value: _switchValue,
        onChanged: (value) => setState(() => _switchValue = value),
      ),
    ]);
  }

  Widget _checkboxes() {
    return _container('Checkboxes', [
      Checkbox(
        value: _checkboxValue,
        tristate: true,
        onChanged: (value) => setState(() => _checkboxValue = value),
      ),
    ]);
  }

  Widget _radios() {
    return _container('Radios', [
      Radio<int>(
        value: 0,
        groupValue: _radioValue,
        onChanged: (value) => setState(() => _radioValue = value!),
      ),
      Radio<int>(
        value: 1,
        groupValue: _radioValue,
        onChanged: (value) => setState(() => _radioValue = value!),
      ),
      Radio<int>(
        value: 2,
        groupValue: _radioValue,
        onChanged: (value) => setState(() => _radioValue = value!),
      ),
    ]);
  }

  Widget _sliders() {
    return _container('Sliders', [
      Slider(
        value: _sliderValue,
        onChanged: (value) => setState(() => _sliderValue = value),
      ),
    ]);
  }

  Widget _textFields() {
    return _container('Text Fields', [
      TextField(decoration: InputDecoration(labelText: 'Standard')),
      TextField(
        decoration: InputDecoration(
          labelText: 'Filled',
          filled: true,
          fillColor: Colors.grey.shade200,
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: 'Outlined',
          border: OutlineInputBorder(),
        ),
      ),
    ]);
  }

  bool _isFilterChipSelected = false;
  bool _isChoiceChipSelected = false;

  Widget _chips() {
    return _container('Chips', [
      Chip(label: Text('Chip')),
      Chip(
        avatar: Icon(Icons.person),
        label: Text('Chip with avatar, onDeleted'),
        onDeleted: () {},
      ),
      InputChip(label: Text('Input Chip'), onPressed: () {}),
      InputChip(
        label: Text('Input Chip with onDeleted'),
        onPressed: () {},
        onDeleted: () {},
      ),
      FilterChip(
        label: Text('Filter Chip'),
        selected: _isFilterChipSelected,
        onSelected: (value) => setState(() => _isFilterChipSelected = value),
      ),
      FilterChip(
        label: Text('Filter Chip with onDeleted'),
        selected: _isFilterChipSelected,
        onSelected: (value) => setState(() => _isFilterChipSelected = value),
        onDeleted: () {},
      ),
      ChoiceChip(
        label: Text('Choice Chip'),
        selected: _isChoiceChipSelected,
        onSelected: (value) => setState(() => _isChoiceChipSelected = value),
      ),
      ActionChip(label: Text('Action Chip'), onPressed: () {}),
    ]);
  }

  Widget _progressIndicators() {
    return _container('Progress Indicators', [
      CircularProgressIndicator(),
      SizedBox(width: 200, child: LinearProgressIndicator()),
    ]);
  }

  Widget _cards() {
    return _container('Cards', [
      Card(
        child: SizedBox(
          width: 150,
          height: 100,
          child: Center(child: Text('Elevated')),
        ),
      ),
      Card.filled(
        child: SizedBox(
          width: 150,
          height: 100,
          child: Center(child: Text('Filled')),
        ),
      ),
      Card.outlined(
        child: SizedBox(
          width: 150,
          height: 100,
          child: Center(child: Text('Outlined')),
        ),
      ),
    ]);
  }

  Widget _dialogs() {
    return _container('Dialogs', [
      ElevatedButton(
        child: Text('Show Dialog'),
        onPressed: () {
          showDialog(
            context: context,
            builder:
                (context) => AlertDialog(
                  title: Text('Alert Dialog'),
                  content: Text('This is a simple alert dialog.'),
                  actions: [
                    TextButton(
                      child: Text('OK'),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
          );
        },
      ),
    ]);
  }

  Widget _snackBars() {
    return _container('SnackBars', [
      ElevatedButton(
        child: Text('Show SnackBar'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('This is a SnackBar.'),
              action: SnackBarAction(label: 'Undo', onPressed: () {}),
            ),
          );
        },
      ),
    ]);
  }

  Widget _bottomSheet() {
    return _container('Bottom Sheet', [
      ElevatedButton(
        child: Text('Show Bottom Sheet'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder:
                (context) => SizedBox(
                  height: 200,
                  child: Center(child: Text('This is a Bottom Sheet')),
                ),
          );
        },
      ),
    ]);
  }

  Widget _materialBanners() {
    return _container('Material Banners', [
      ElevatedButton(
        child: Text('Show Material Banner'),
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              content: Text('This is a Material Banner.'),
              actions: [
                TextButton(
                  child: Text('DISMISS'),
                  onPressed:
                      () =>
                          ScaffoldMessenger.of(
                            context,
                          ).hideCurrentMaterialBanner(),
                ),
              ],
            ),
          );
        },
      ),
    ]);
  }

  Widget _container(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: _spacing,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        Wrap(spacing: _spacing, runSpacing: _spacing, children: children),
        Divider(),
      ],
    );
  }
}
