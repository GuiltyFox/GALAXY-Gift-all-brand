.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# static fields
.field private static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType:[I


# instance fields
.field private final roundPixels:I


# direct methods
.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
    .registers 3

    .prologue
    .line 40
    sget-object v0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_66

    :goto_15
    :try_start_15
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_64

    :goto_1e
    :try_start_1e
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_62

    :goto_27
    :try_start_27
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_60

    :goto_30
    :try_start_30
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_5e

    :goto_39
    :try_start_39
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_5c

    :goto_42
    :try_start_42
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_5a

    :goto_4b
    :try_start_4b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_58

    :goto_55
    sput-object v0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    goto :goto_4

    :catch_58
    move-exception v1

    goto :goto_55

    :catch_5a
    move-exception v1

    goto :goto_4b

    :catch_5c
    move-exception v1

    goto :goto_42

    :catch_5e
    move-exception v1

    goto :goto_39

    :catch_60
    move-exception v1

    goto :goto_30

    :catch_62
    move-exception v1

    goto :goto_27

    :catch_64
    move-exception v1

    goto :goto_1e

    :catch_66
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "roundPixels"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    .line 46
    return-void
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPixels"    # I
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 162
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 168
    .local v1, "destRectF":Landroid/graphics/RectF;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 170
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    int-to-float v4, p1

    int-to-float v5, p1

    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 173
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 174
    invoke-virtual {v0, p0, p2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 176
    return-object v2
.end method

.method public static roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
    .registers 26
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "roundPixels"    # I

    .prologue
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 68
    .local v10, "bw":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 69
    .local v9, "bh":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    .line 70
    .local v19, "vw":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v18

    .line 71
    .local v18, "vh":I
    if-gtz v19, :cond_14

    move/from16 v19, v10

    .line 72
    :cond_14
    if-gtz v18, :cond_18

    move/from16 v18, v9

    .line 77
    :cond_18
    invoke-static {}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_164

    .line 101
    :pswitch_29
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v17, v2, v3

    .line 102
    .local v17, "vRation":F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 103
    .local v8, "bRation":F
    cmpl-float v2, v17, v8

    if-lez v2, :cond_ad

    .line 104
    int-to-float v2, v10

    int-to-float v3, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v3, v22

    div-float/2addr v2, v3

    float-to-int v6, v2

    .line 105
    .local v6, "width":I
    move/from16 v7, v18

    .line 110
    .local v7, "height":I
    :goto_46
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    .local v4, "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v8    # "bRation":F
    .end local v17    # "vRation":F
    .local v5, "destRect":Landroid/graphics/Rect;
    :goto_54
    move-object/from16 v2, p0

    move/from16 v3, p2

    .line 152
    :try_start_58
    invoke-static/range {v2 .. v7}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_5b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_58 .. :try_end_5b} :catch_157

    move-result-object v14

    .line 158
    .local v14, "roundBitmap":Landroid/graphics/Bitmap;
    :goto_5c
    return-object v14

    .line 79
    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v14    # "roundBitmap":Landroid/graphics/Bitmap;
    :pswitch_5d
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v17, v2, v3

    .line 80
    .restart local v17    # "vRation":F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 83
    .restart local v8    # "bRation":F
    cmpl-float v2, v17, v8

    if-lez v2, :cond_9d

    .line 84
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 85
    .local v11, "destHeight":I
    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v3, v3, v22

    div-float/2addr v2, v3

    float-to-int v12, v2

    .line 90
    .local v12, "destWidth":I
    :goto_7c
    sub-int v2, v19, v12

    div-int/lit8 v20, v2, 0x2

    .line 91
    .local v20, "x":I
    sub-int v2, v18, v11

    div-int/lit8 v21, v2, 0x2

    .line 92
    .local v21, "y":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    .restart local v4    # "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    add-int v2, v20, v12

    add-int v3, v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    .restart local v5    # "destRect":Landroid/graphics/Rect;
    move/from16 v6, v19

    .line 95
    .restart local v6    # "width":I
    move/from16 v7, v18

    .line 96
    .restart local v7    # "height":I
    goto :goto_54

    .line 87
    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v11    # "destHeight":I
    .end local v12    # "destWidth":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_9d
    move/from16 v0, v19

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 88
    .restart local v12    # "destWidth":I
    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v0, v12

    move/from16 v22, v0

    div-float v3, v3, v22

    div-float/2addr v2, v3

    float-to-int v11, v2

    .restart local v11    # "destHeight":I
    goto :goto_7c

    .line 107
    .end local v11    # "destHeight":I
    .end local v12    # "destWidth":I
    :cond_ad
    move/from16 v6, v19

    .line 108
    .restart local v6    # "width":I
    int-to-float v2, v9

    int-to-float v3, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v3, v22

    div-float/2addr v2, v3

    float-to-int v7, v2

    .restart local v7    # "height":I
    goto :goto_46

    .line 114
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "bRation":F
    .end local v17    # "vRation":F
    :pswitch_bb
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    div-float v17, v2, v3

    .line 115
    .restart local v17    # "vRation":F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 118
    .restart local v8    # "bRation":F
    cmpl-float v2, v17, v8

    if-lez v2, :cond_102

    .line 119
    move/from16 v16, v10

    .line 120
    .local v16, "srcWidth":I
    move/from16 v0, v18

    int-to-float v2, v0

    int-to-float v3, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v3, v22

    mul-float/2addr v2, v3

    float-to-int v15, v2

    .line 121
    .local v15, "srcHeight":I
    const/16 v20, 0x0

    .line 122
    .restart local v20    # "x":I
    sub-int v2, v9, v15

    div-int/lit8 v21, v2, 0x2

    .line 129
    .restart local v21    # "y":I
    :goto_e0
    move/from16 v0, v19

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 130
    .restart local v6    # "width":I
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 131
    .restart local v7    # "height":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v2, v20, v16

    add-int v3, v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 132
    .restart local v4    # "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .restart local v5    # "destRect":Landroid/graphics/Rect;
    goto/16 :goto_54

    .line 124
    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v15    # "srcHeight":I
    .end local v16    # "srcWidth":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_102
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v3, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v3, v3, v22

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 125
    .restart local v16    # "srcWidth":I
    move v15, v9

    .line 126
    .restart local v15    # "srcHeight":I
    sub-int v2, v10, v16

    div-int/lit8 v20, v2, 0x2

    .line 127
    .restart local v20    # "x":I
    const/16 v21, 0x0

    .restart local v21    # "y":I
    goto :goto_e0

    .line 135
    .end local v8    # "bRation":F
    .end local v15    # "srcHeight":I
    .end local v16    # "srcWidth":I
    .end local v17    # "vRation":F
    .end local v20    # "x":I
    .end local v21    # "y":I
    :pswitch_119
    move/from16 v6, v19

    .line 136
    .restart local v6    # "width":I
    move/from16 v7, v18

    .line 137
    .restart local v7    # "height":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 138
    .restart local v4    # "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 139
    .restart local v5    # "destRect":Landroid/graphics/Rect;
    goto/16 :goto_54

    .line 142
    .end local v4    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "destRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "height":I
    :pswitch_12d
    move/from16 v0, v19

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 143
    .restart local v6    # "width":I
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 144
    .restart local v7    # "height":I
    sub-int v2, v10, v6

    div-int/lit8 v20, v2, 0x2

    .line 145
    .restart local v20    # "x":I
    sub-int v2, v9, v7

    div-int/lit8 v21, v2, 0x2

    .line 146
    .restart local v21    # "y":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v2, v20, v6

    add-int v3, v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    .restart local v4    # "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5    # "destRect":Landroid/graphics/Rect;
    goto/16 :goto_54

    .line 153
    .end local v20    # "x":I
    .end local v21    # "y":I
    :catch_157
    move-exception v13

    .line 154
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "Can\'t create bitmap with rounded corners. Not enough memory."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    move-object/from16 v14, p0

    .restart local v14    # "roundBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5c

    .line 77
    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_12d
        :pswitch_bb
        :pswitch_5d
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_119
        :pswitch_12d
    .end packed-switch
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 50
    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    invoke-static {p1, p2, v1}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, "roundedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    return-object v0
.end method
