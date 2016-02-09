.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ic$buzzebeeslib$control$devsmart$horlistview$devsmart$horlistview$devsmart$android$GraphicsUtils$ScaleType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$ic$buzzebeeslib$control$devsmart$horlistview$devsmart$horlistview$devsmart$android$GraphicsUtils$ScaleType()[I
    .registers 3

    .prologue
    .line 14
    sget-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils;->$SWITCH_TABLE$ic$buzzebeeslib$control$devsmart$horlistview$devsmart$horlistview$devsmart$android$GraphicsUtils$ScaleType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;->values()[Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;->CENTER_CROP:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;->CENTER_FIT:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils;->$SWITCH_TABLE$ic$buzzebeeslib$control$devsmart$horlistview$devsmart$horlistview$devsmart$android$GraphicsUtils$ScaleType:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;)Landroid/graphics/Matrix;
    .registers 16
    .param p0, "src"    # Landroid/graphics/RectF;
    .param p1, "dest"    # Landroid/graphics/RectF;
    .param p2, "type"    # Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;

    .prologue
    const/4 v11, 0x5

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/high16 v12, 0x40000000

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    .local v0, "retval":Landroid/graphics/Matrix;
    invoke-static {}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils;->$SWITCH_TABLE$ic$buzzebeeslib$control$devsmart$horlistview$devsmart$horlistview$devsmart$android$GraphicsUtils$ScaleType()[I

    move-result-object v3

    invoke-virtual {p2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/GraphicsUtils$ScaleType;->ordinal()I

    move-result v10

    aget v3, v3, v10

    packed-switch v3, :pswitch_data_a4

    .line 58
    :goto_18
    return-object v0

    .line 26
    :pswitch_19
    const/16 v3, 0x8

    new-array v1, v3, [F

    .line 28
    .local v1, "points":[F
    iget v3, p0, Landroid/graphics/RectF;->left:F

    aput v3, v1, v2

    .line 29
    const/4 v3, 0x1

    iget v10, p0, Landroid/graphics/RectF;->top:F

    aput v10, v1, v3

    .line 30
    iget v3, p0, Landroid/graphics/RectF;->right:F

    aput v3, v1, v5

    .line 31
    const/4 v3, 0x3

    iget v10, p0, Landroid/graphics/RectF;->bottom:F

    aput v10, v1, v3

    .line 33
    iget v3, p1, Landroid/graphics/RectF;->left:F

    aput v3, v1, v4

    .line 34
    iget v3, p1, Landroid/graphics/RectF;->top:F

    aput v3, v1, v11

    .line 35
    const/4 v3, 0x6

    iget v10, p1, Landroid/graphics/RectF;->right:F

    aput v10, v1, v3

    .line 36
    const/4 v3, 0x7

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    aput v10, v1, v3

    .line 38
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v9, v3, v10

    .line 39
    .local v9, "ratioSrc":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v8, v3, v10

    .line 41
    .local v8, "ratioDest":F
    cmpl-float v3, v9, v8

    if-lez v3, :cond_7d

    .line 42
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v7, v9, v3

    .line 43
    .local v7, "fwidth":F
    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float v10, v7, v10

    div-float/2addr v10, v12

    sub-float/2addr v3, v10

    aput v3, v1, v4

    .line 44
    const/4 v3, 0x6

    iget v10, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float v11, v7, v11

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v1, v3

    .end local v7    # "fwidth":F
    :goto_78
    move-object v3, v1

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    goto :goto_18

    .line 46
    :cond_7d
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v6, v3, v9

    .line 47
    .local v6, "fheight":F
    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v10

    sub-float v10, v6, v10

    div-float/2addr v10, v12

    sub-float/2addr v3, v10

    aput v3, v1, v11

    .line 48
    const/4 v3, 0x7

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float v11, v6, v11

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v1, v3

    goto :goto_78

    .line 55
    .end local v1    # "points":[F
    .end local v6    # "fheight":F
    .end local v8    # "ratioDest":F
    .end local v9    # "ratioSrc":F
    :pswitch_9d
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p0, p1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_18

    .line 24
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_19
        :pswitch_9d
    .end packed-switch
.end method

.method public static downsampleBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "maxArea"    # I

    .prologue
    .line 75
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 76
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 79
    .local v2, "outRect":Landroid/graphics/Rect;
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 81
    const/4 v4, 0x1

    .line 82
    .local v4, "subsample":I
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 83
    .local v5, "width":I
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 84
    .local v0, "height":I
    :goto_15
    mul-int v6, v5, v0

    if-gt v6, p1, :cond_24

    .line 90
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 92
    const/4 v6, 0x0

    invoke-static {p0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 93
    .local v3, "retval":Landroid/graphics/Bitmap;
    return-object v3

    .line 85
    .end local v3    # "retval":Landroid/graphics/Bitmap;
    :cond_24
    div-int/lit8 v5, v5, 0x2

    .line 86
    div-int/lit8 v0, v0, 0x2

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_15
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/4 v6, 0x0

    .line 62
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 63
    .local v2, "srcRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    .local v1, "matrix":Landroid/graphics/Matrix;
    int-to-float v4, p1

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 66
    iget v4, v2, Landroid/graphics/RectF;->left:F

    sub-float v4, v6, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float v5, v6, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 69
    .local v3, "targetBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    return-object v3
.end method
