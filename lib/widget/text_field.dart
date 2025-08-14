import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final Function(String) onTextChange;
  const TextFieldWidget({super.key, required this.onTextChange});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            cursorColor: Colors.white,
            controller: _textController,
            maxLines: 10,
            minLines: 8,
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            scrollPhysics: const BouncingScrollPhysics(),
            onChanged: (value) => widget.onTextChange(value),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              filled: true,
              fillColor: Color(0xFF1E1E1E),
              hintText: 'Ketik atau tempel teks disini',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.w400),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: BorderSide(color: Color(0xFF3A3A3A), width: 1.2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
                borderSide: BorderSide(color: Color(0xFFBDBDBD), width: 1.2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
