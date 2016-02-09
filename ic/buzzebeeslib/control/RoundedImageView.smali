.class public Lic/buzzebeeslib/control/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public static getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    const v12, 0x3f333333

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, p1, :cond_80

    .line 71
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v7, v8

    .line 72
    .local v7, "smallest":F
    int-to-float v8, p1

    div-float v2, v7, v8

    .line 73
    .local v2, "factor":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    float-to-int v8, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v2

    float-to-int v9, v9

    invoke-static {p0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 78
    .end local v2    # "factor":F
    .end local v7    # "smallest":F
    .local v6, "sbmp":Landroid/graphics/Bitmap;
    :goto_33
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 79
    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0x5e688c

    .line 82
    .local v1, "color":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 83
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10, v10, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 85
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 87
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 88
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 89
    const-string v8, "#BAB399"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    div-int/lit8 v8, p1, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v12

    div-int/lit8 v9, p1, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v12

    div-int/lit8 v10, p1, 0x2

    int-to-float v10, v10

    const v11, 0x3dcccccd

    add-float/2addr v10, v11

    invoke-virtual {v0, v8, v9, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 92
    invoke-virtual {v0, v6, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 94
    return-object v3

    .line 75
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "color":I
    .end local v3    # "output":Landroid/graphics/Bitmap;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "sbmp":Landroid/graphics/Bitmap;
    :cond_80
    move-object v6, p0

    .restart local v6    # "sbmp":Landroid/graphics/Bitmap;
    goto :goto_33
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 36
    :try_start_3
    invoke-virtual {p0}, Lic/buzzebeeslib/control/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 38
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_a

    .line 65
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_9
    return-void

    .line 42
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    invoke-virtual {p0}, Lic/buzzebeeslib/control/RoundedImageView;->getWidth()I

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lic/buzzebeeslib/control/RoundedImageView;->getHeight()I

    move-result v7

    if-eqz v7, :cond_9

    .line 45
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 48
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lic/buzzebeeslib/control/RoundedImageView;->getWidth()I

    move-result v6

    .local v6, "w":I
    invoke-virtual {p0}, Lic/buzzebeeslib/control/RoundedImageView;->getHeight()I

    move-result v4

    .line 50
    .local v4, "h":I
    invoke-static {v1, v6}, Lic/buzzebeeslib/control/RoundedImageView;->getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 51
    .local v5, "roundBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_36

    goto :goto_9

    .line 52
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "h":I
    .end local v5    # "roundBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "w":I
    :catch_36
    move-exception v3

    .line 53
    .local v3, "error":Ljava/lang/Exception;
    const-string v7, "View"

    new-instance v8, Ljava/lang/StringBuilder;

    const-class v9, Lic/buzzebeeslib/control/RoundedImageView;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lic/buzzebeeslib/control/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 56
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v7, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lic/buzzebeeslib/control/RoundedImageView;->getWidth()I

    move-result v6

    .restart local v6    # "w":I
    invoke-virtual {p0}, Lic/buzzebeeslib/control/RoundedImageView;->getHeight()I

    move-result v4

    .line 61
    .restart local v4    # "h":I
    invoke-static {v1, v6}, Lic/buzzebeeslib/control/RoundedImageView;->getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 62
    .restart local v5    # "roundBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v5, v10, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_9
.end method
