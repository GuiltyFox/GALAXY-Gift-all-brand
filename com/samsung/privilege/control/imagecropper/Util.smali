.class public Lcom/samsung/privilege/control/imagecropper/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static a(Landroid/app/Activity;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 241
    packed-switch v1, :pswitch_data_1a

    .line 256
    :goto_10
    :pswitch_10
    return v0

    .line 246
    :pswitch_11
    const/16 v0, 0x5a

    .line 247
    goto :goto_10

    .line 249
    :pswitch_14
    const/16 v0, 0xb4

    .line 250
    goto :goto_10

    .line 252
    :pswitch_17
    const/16 v0, 0x10e

    goto :goto_10

    .line 241
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 228
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 230
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

    move-result-object v0

    .line 232
    return-object v0
.end method

.method public static a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v3, v2, p2

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v4, v2, p3

    .line 65
    if-nez p4, :cond_65

    if-ltz v3, :cond_19

    if-gez v4, :cond_65

    .line 72
    :cond_19
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 77
    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 78
    new-instance v4, Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v3

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-direct {v4, v3, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    .line 84
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v3, v3, 0x2

    .line 85
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, p2, v1

    sub-int v8, p3, v3

    invoke-direct {v6, v1, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    invoke-virtual {v5, p1, v4, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v0, v2

    .line 138
    :goto_64
    return-object v0

    .line 93
    :cond_65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 96
    div-float v4, v2, v3

    .line 97
    int-to-float v5, p2

    int-to-float v6, p3

    div-float/2addr v5, v6

    .line 99
    cmpl-float v4, v4, v5

    if-lez v4, :cond_ba

    .line 100
    int-to-float v2, p3

    div-float/2addr v2, v3

    .line 101
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_82

    cmpl-float v3, v2, v8

    if-lez v3, :cond_b8

    .line 102
    :cond_82
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_85
    move-object v5, p0

    .line 116
    :goto_86
    if-eqz v5, :cond_cc

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 118
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    :goto_97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 127
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v2, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    if-eq v0, p1, :cond_b6

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b6
    move-object v0, v1

    .line 138
    goto :goto_64

    :cond_b8
    move-object p0, v0

    .line 104
    goto :goto_85

    .line 107
    :cond_ba
    int-to-float v3, p2

    div-float v2, v3, v2

    .line 108
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_c5

    cmpl-float v3, v2, v8

    if-lez v3, :cond_ca

    .line 109
    :cond_c5
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    goto :goto_86

    :cond_ca
    move-object v5, v0

    .line 111
    goto :goto_86

    :cond_cc
    move-object v0, p1

    .line 121
    goto :goto_97
.end method

.method public static a(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 8

    .prologue
    .line 211
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;-><init>(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

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
