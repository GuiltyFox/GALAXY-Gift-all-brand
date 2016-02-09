.class public Lic/buzzebeeslib/util/image/ImageUtilities;
.super Ljava/lang/Object;
.source "ImageUtilities.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRoundedCornerBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;FFFFII)Landroid/graphics/Bitmap;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "upperLeft"    # F
    .param p3, "upperRight"    # F
    .param p4, "lowerRight"    # F
    .param p5, "lowerLeft"    # F
    .param p6, "endWidth"    # I
    .param p7, "endHeight"    # I

    .prologue
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v4, v14, Landroid/util/DisplayMetrics;->density:F

    .line 35
    .local v4, "densityMultiplier":F
    move/from16 v0, p6

    int-to-float v14, v0

    mul-float/2addr v14, v4

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 36
    move/from16 v0, p7

    int-to-float v15, v0

    mul-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    const/16 v16, 0x1

    .line 34
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 40
    move/from16 v0, p6

    int-to-float v14, v0

    mul-float/2addr v14, v4

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 41
    move/from16 v0, p7

    int-to-float v15, v0

    mul-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 39
    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 44
    .local v7, "output":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    .line 46
    .local v13, "width":I
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    .line 49
    .local v5, "height":I
    mul-float p2, p2, v4

    .line 50
    mul-float p3, p3, v4

    .line 51
    mul-float p4, p4, v4

    .line 52
    mul-float p5, p5, v4

    .line 54
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    const/4 v14, -0x1

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 62
    move/from16 v0, p2

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-virtual {v3, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 63
    int-to-float v14, v13

    sub-float v14, v14, p3

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-virtual {v3, v14, v0, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    int-to-float v14, v13

    sub-float v14, v14, p4

    int-to-float v15, v5

    sub-float v15, v15, p4

    move/from16 v0, p4

    invoke-virtual {v3, v14, v15, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 65
    int-to-float v14, v5

    sub-float v14, v14, p5

    move/from16 v0, p5

    move/from16 v1, p5

    invoke-virtual {v3, v0, v14, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    new-instance v12, Landroid/graphics/RectF;

    const/4 v14, 0x0

    int-to-float v15, v13

    sub-float v15, v15, p3

    div-int/lit8 v16, v5, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    invoke-direct {v12, v0, v14, v15, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 69
    .local v12, "rectT":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/RectF;

    div-int/lit8 v14, v13, 0x2

    int-to-float v14, v14

    int-to-float v15, v13

    int-to-float v0, v5

    move/from16 v16, v0

    sub-float v16, v16, p4

    move/from16 v0, p3

    move/from16 v1, v16

    invoke-direct {v11, v14, v0, v15, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .local v11, "rectR":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    int-to-float v15, v13

    sub-float v15, v15, p4

    int-to-float v0, v5

    move/from16 v16, v0

    move/from16 v0, p5

    move/from16 v1, v16

    invoke-direct {v9, v0, v14, v15, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    .local v9, "rectB":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    const/4 v14, 0x0

    div-int/lit8 v15, v13, 0x2

    int-to-float v15, v15

    int-to-float v0, v5

    move/from16 v16, v0

    sub-float v16, v16, p5

    move/from16 v0, p2

    move/from16 v1, v16

    invoke-direct {v10, v14, v0, v15, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 73
    .local v10, "rectL":Landroid/graphics/RectF;
    invoke-virtual {v3, v12, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 74
    invoke-virtual {v3, v11, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 75
    invoke-virtual {v3, v9, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 76
    invoke-virtual {v3, v10, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 79
    new-instance v6, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15, v13, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v6, "imageRect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/AvoidXfermode;

    const/4 v15, -0x1

    const/16 v16, 0xff

    sget-object v17, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct/range {v14 .. v17}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 87
    return-object v7
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 93
    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 96
    .local v1, "color":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 97
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v5, "rect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 99
    .local v6, "rectF":Landroid/graphics/RectF;
    int-to-float v7, p1

    .line 101
    .local v7, "roundPx":F
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 103
    const v8, -0xbdbdbe

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {v0, v6, v7, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 106
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    invoke-virtual {v0, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    .line 111
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "color":I
    .end local v3    # "output":Landroid/graphics/Bitmap;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "rectF":Landroid/graphics/RectF;
    .end local v7    # "roundPx":F
    :goto_51
    return-object v3

    .line 110
    :catch_52
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, p0

    .line 111
    goto :goto_51
.end method
