.class public Lcom/control/imagecropper/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/control/imagecropper/Util$BackgroundJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "db.Util"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 143
    if-nez p0, :cond_3

    .line 149
    :goto_2
    return-void

    .line 145
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 146
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 1

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 222
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    return-object v0
.end method

.method public static getOrientationInDegree(Landroid/app/Activity;)I
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 239
    .local v1, "rotation":I
    const/4 v0, 0x0

    .line 241
    .local v0, "degrees":I
    packed-switch v1, :pswitch_data_1c

    .line 256
    :goto_10
    return v0

    .line 243
    :pswitch_11
    const/4 v0, 0x0

    .line 244
    goto :goto_10

    .line 246
    :pswitch_13
    const/16 v0, 0x5a

    .line 247
    goto :goto_10

    .line 249
    :pswitch_16
    const/16 v0, 0xb4

    .line 250
    goto :goto_10

    .line 252
    :pswitch_19
    const/16 v0, 0x10e

    goto :goto_10

    .line 241
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # F

    .prologue
    const/4 v1, 0x0

    .line 228
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 230
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 231
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 232
    .local v7, "bmp":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static startBackgroundJob(Lcom/control/imagecropper/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 8
    .param p0, "activity"    # Lcom/control/imagecropper/MonitoredActivity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "job"    # Ljava/lang/Runnable;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 212
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-static {p0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 213
    .local v0, "dialog":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/control/imagecropper/Util$BackgroundJob;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/control/imagecropper/Util$BackgroundJob;-><init>(Lcom/control/imagecropper/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 33
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "scaleUp"    # Z

    .prologue
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 64
    .local v16, "deltaX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 65
    .local v18, "deltaY":I
    if-nez p4, :cond_7c

    if-ltz v16, :cond_12

    if-gez v18, :cond_7c

    .line 73
    :cond_12
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 72
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 74
    .local v11, "b2":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    .local v15, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 77
    .local v17, "deltaXHalf":I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 78
    .local v19, "deltaYHalf":I
    new-instance v26, Landroid/graphics/Rect;

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    .line 78
    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    .local v26, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 84
    .local v21, "dstX":I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 85
    .local v22, "dstY":I
    new-instance v20, Landroid/graphics/Rect;

    .line 88
    sub-int v3, p2, v21

    .line 89
    sub-int v4, p3, v22

    .line 85
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    .local v20, "dst":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 138
    .end local v15    # "c":Landroid/graphics/Canvas;
    .end local v17    # "deltaXHalf":I
    .end local v19    # "deltaYHalf":I
    .end local v20    # "dst":Landroid/graphics/Rect;
    .end local v21    # "dstX":I
    .end local v22    # "dstY":I
    .end local v26    # "src":Landroid/graphics/Rect;
    :cond_7b
    :goto_7b
    return-object v11

    .line 93
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    :cond_7c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 94
    .local v14, "bitmapWidthF":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 96
    .local v13, "bitmapHeightF":F
    div-float v12, v14, v13

    .line 97
    .local v12, "bitmapAspect":F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 99
    .local v27, "viewAspect":F
    cmpl-float v3, v12, v27

    if-lez v3, :cond_f1

    .line 100
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v25, v3, v13

    .line 101
    .local v25, "scale":F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_a6

    const/high16 v3, 0x3f800000

    cmpl-float v3, v25, v3

    if-lez v3, :cond_ee

    .line 102
    :cond_a6
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 116
    :goto_af
    if-eqz p0, :cond_110

    .line 118
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    .line 118
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 124
    .local v10, "b1":Landroid/graphics/Bitmap;
    :goto_c4
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 125
    .local v23, "dx1":I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 129
    .local v24, "dy1":I
    div-int/lit8 v3, v23, 0x2

    .line 130
    div-int/lit8 v4, v24, 0x2

    .line 127
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 134
    .restart local v11    # "b2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_7b

    .line 135
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7b

    .line 104
    .end local v10    # "b1":Landroid/graphics/Bitmap;
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v23    # "dx1":I
    .end local v24    # "dy1":I
    :cond_ee
    const/16 p0, 0x0

    .line 106
    goto :goto_af

    .line 107
    .end local v25    # "scale":F
    :cond_f1
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v25, v3, v14

    .line 108
    .restart local v25    # "scale":F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_103

    const/high16 v3, 0x3f800000

    cmpl-float v3, v25, v3

    if-lez v3, :cond_10d

    .line 109
    :cond_103
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_af

    .line 111
    :cond_10d
    const/16 p0, 0x0

    goto :goto_af

    .line 121
    :cond_110
    move-object/from16 v10, p1

    .restart local v10    # "b1":Landroid/graphics/Bitmap;
    goto :goto_c4
.end method
