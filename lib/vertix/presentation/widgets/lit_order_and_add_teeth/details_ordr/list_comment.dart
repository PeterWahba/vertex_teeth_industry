import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/utils/fonts_path_class.dart';
import '../../../../domain/entities/comment_entites.dart';

class ListCommentWidgetCustom extends StatelessWidget {
  const ListCommentWidgetCustom(
      {super.key, required this.emailSessionUsr, required this.listComment});

  //
  final String emailSessionUsr;
  final List<CommentOnOrderEntities> listComment;

  @override
  Widget build(BuildContext context) {
    //
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      slivers: [
        //
        SliverList.builder(
          itemCount: listComment.length,
          itemBuilder: (context, index) {
            //
            final comment = listComment[index];

            //

            bool isMe = comment.emailText == emailSessionUsr;

            //
            return Align(
              alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                // width: 120.w,
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                margin: EdgeInsets.only(
                  top: 23.h,
                  right: isMe ? 26.w : 52.w,
                  left: isMe ? 52.w : 26.w,
                ),
                decoration: BoxDecoration(
                  color:
                      isMe ? AppColors.greyComment : AppColors.purpleMainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    topRight: Radius.circular(24.r),
                    bottomLeft: isMe ? Radius.circular(24.r) : Radius.zero,
                    bottomRight: isMe ? Radius.zero : Radius.circular(24.r),
                  ),
                ),
                child: Text(
                  // 'نأسف لقد تم رفض حالتك يرجى تدقيق الطلب مرة اخرى',
                  comment.textComment,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: isMe
                        ? AppColors.textblackLight
                        : AppColors.backGroundAndTextWhite,
                    fontFamily: AppFonts.almaraiRegular,
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
