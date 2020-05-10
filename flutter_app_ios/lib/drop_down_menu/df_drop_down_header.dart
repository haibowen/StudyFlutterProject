import 'package:flutter/material.dart';


//头部点击事件的定义
typedef OnHeaderTap<T> =void Function(T value);

// ignore: must_be_immutable
class DFDropDownHeader extends StatefulWidget {


  final Color color;
  final double borderWidth; //边框宽度
  final Color borderColor; //边框颜色
  TextStyle textStyle; //字体设置
  TextStyle dropDownStyle;
  final double iconSize; //图标大小
  final Color iconColor; //图标颜色
  Color iconDropDownColor; //箭头指示的颜色

  //
  final double height; //头部的高度
  final double dividerHeight; //下划线的高度
  final Color dividerColor; //
  final DFDropdownMenuController controller;
  final OnHeaderTap onHeaderTap;
  final List<DFDropDownHeaderItem> items;
  final GlobalKey stackKey;

  DFDropDownHeader({
    Key key,
    @required this.items,
    @required this.controller,
    @required this.stackKey,
    this.textStyle = const TextStyle(
        color: Color(0xFF666666), fontSize: 14
    ),
    this.dropDownStyle,
    this.height = 40,
    this.iconColor = const Color(0xFFafada7),
    this.iconDropDownColor,
    this.iconSize = 20,
    this.borderWidth = 1,
    this.dividerHeight = 20,
    this.borderColor = const Color(0xFFeeede6),
    this.dividerColor = const Color(0xFFeeede6),
    this.onHeaderTap,
    this.color = Colors.white
  }) :super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DFDropDownHeaderState();
  }
}

class _DFDropDownHeaderState extends State<DFDropDownHeader>
    with SingleTickerProviderStateMixin {

  bool _isShowDropDownItemWidget = false;
  double _screenWidth;
  double _screenHeight;
  int _menuCount;
  GlobalKey _globalKeyHeader = new GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListener(_onController);
  }

  //
  _onController() {
    if (mounted) {
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    widget.dropDownStyle ??= TextStyle(color: Theme
        .of(context)
        .primaryColor, fontSize: 14);
    widget.iconDropDownColor ??= Theme
        .of(context)
        .primaryColor;

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    _screenHeight = mediaQueryData.size.height;
    _screenWidth = mediaQueryData.size.width;
    _menuCount = widget.items.length;

    var gridView = GridView.count(crossAxisCount: _menuCount,
      children: widget.items.map<Widget>((item) {
        return _headerMenu(item);
      }).toList(),
      childAspectRatio: (_screenWidth / _screenHeight) / widget.height,);


    return Container(
      key: _globalKeyHeader,
      height: widget.height,
      decoration: BoxDecoration(
          border: Border.all(
              color: widget.borderColor, width: widget.borderWidth)
      ),
      child: gridView,
    );
  }

  dispose() {
    super.dispose();
  }


  _headerMenu(DFDropDownHeaderItem item) {
    int index = widget.items.indexOf(item);
    int menuIndex = widget.controller.menuIndex;
    _isShowDropDownItemWidget = index == menuIndex && widget.controller.isShow;

    return GestureDetector(
      onTap: () {
        final RenderBox overlay = widget.stackKey.currentContext
            .findRenderObject();
        final RenderBox dropDownItemRenderBox = _globalKeyHeader.currentContext
            .findRenderObject();

        var position = dropDownItemRenderBox.localToGlobal(
            Offset.zero, ancestor: overlay);
        var size = dropDownItemRenderBox.size;
        widget.controller.dropDownHeaderHeight = size.height + position.dy;

        if (widget.controller.isShow) {
          widget.controller.hide();
        } else {
          widget.controller.show(index);
        }
        if (widget.onHeaderTap != null) {
          widget.onHeaderTap(index);
        }
        setState(() {

        });
      },
      child: Container(
        color: widget.color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: _isShowDropDownItemWidget
                          ? widget.dropDownStyle
                          : widget.textStyle,
                    ),
                  ),
                  Icon(
                      !_isShowDropDownItemWidget ? item.iconData ??
                          Icons.arrow_drop_down : item.iconData ??
                          Icons.arrow_drop_up,
                      size: item.iconSize ?? widget.iconSize,
                      color: _isShowDropDownItemWidget ? widget
                          .iconDropDownColor : widget.iconColor,
                  )
                ],
              ),
            ),
            index == widget.items.length - 1 ? Container() :
            Container(
              height: widget.dividerHeight,
              decoration: BoxDecoration(
                  border: Border(right: BorderSide(
                      color: widget.dividerColor, width: 1
                  ))
              ),
            )
          ],
        ),
      ),
    );
  }
}

//头部的每个item
class DFDropDownHeaderItem {
  final String title;
  final IconData iconData;
  final double iconSize;

  DFDropDownHeaderItem(this.title, {this.iconData, this.iconSize});
}

//控制器
class DFDropdownMenuController extends ChangeNotifier {
  double dropDownHeaderHeight;

  int menuIndex = 0;
  bool isShow = false;

  void show(int index) {
    isShow = true;
    menuIndex = index;
    notifyListeners();
  }

  void hide() {
    isShow = false;
    notifyListeners();
  }
}
