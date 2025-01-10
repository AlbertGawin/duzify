import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:duzify/data/search/models/search_req.dart';
import 'package:duzify/presentation/search/bloc/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _SearchAppBarState extends State<SearchAppBar>
    with WidgetsBindingObserver {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _wasKeyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.darkGray,
      title: TextField(
        controller: _controller,
        focusNode: _focusNode,
        decoration: InputDecoration(
          hintText: 'Czego chcesz posłuchać?',
          hintStyle: TextStyle(color: AppColors.lightGray),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear, color: AppColors.lightGray),
                  onPressed: () {
                    _controller.clear();
                    context
                        .read<SearchCubit>()
                        .search(SearchReq(q: '', type: ['track']));
                    _focusNode.requestFocus();
                    setState(() {});
                  },
                )
              : null,
        ),
        style: TextStyle(color: AppColors.white),
        onChanged: (text) {
          context
              .read<SearchCubit>()
              .search(SearchReq(q: text, type: ['track'], limit: 16));
          setState(() {});
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _wasKeyboardVisible) {
      _focusNode.requestFocus();
      SystemChannels.textInput.invokeMethod('TextInput.show');
    } else if (state == AppLifecycleState.paused) {
      _wasKeyboardVisible = View.of(context).viewInsets.bottom > 0;
    }
  }
}
