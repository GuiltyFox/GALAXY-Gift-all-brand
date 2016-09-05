.class Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;
.super Ljava/lang/Object;
.source "BlurDialogEngine.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/FrameLayout$LayoutParams;

.field private d:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

.field private e:Z

.field private f:F

.field private g:I

.field private h:Landroid/app/Activity;

.field private i:Landroid/support/v7/widget/Toolbar;

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->e:Z

    .line 101
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->f:F

    .line 106
    const/16 v0, 0x8

    iput v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->g:I

    .line 142
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/tvbarthel/lib/blurdialogfragment/R$integer;->blur_dialog_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->j:I

    .line 144
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .registers 15

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 284
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 294
    iget-boolean v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->k:Z

    if-eqz v0, :cond_1e3

    .line 295
    const/4 v0, 0x0

    .line 301
    :goto_12
    const/4 v1, 0x0

    .line 302
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_27

    .line 305
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->d()I

    move-result v1

    .line 308
    :cond_27
    add-int v5, v0, v1

    .line 311
    const/4 v4, 0x0

    .line 312
    const/4 v2, 0x0

    .line 313
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->e()I

    move-result v3

    .line 314
    iget-object v8, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lfr/tvbarthel/lib/blurdialogfragment/R$bool;->blur_dialog_has_bottom_navigation_bar:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1e9

    .line 322
    :goto_3d
    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v2

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-direct {v4, v8, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget v9, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->f:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 332
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int v2, v10, v2

    int-to-double v10, v2

    mul-double/2addr v10, v8

    .line 333
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v5

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double v2, v10, v2

    .line 332
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 334
    double-to-int v2, v2

    double-to-int v3, v8

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 337
    :try_start_79
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_85

    iget-object v3, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    instance-of v3, v3, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v3, :cond_93

    .line 342
    :cond_85
    iget-object v3, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v0, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 343
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x30

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_93
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_79 .. :try_end_93} :catch_1ed

    .line 351
    :cond_93
    :goto_93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_ac

    .line 352
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->f()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 354
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    iget-object v5, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v1, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 359
    :cond_ac
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 361
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 364
    new-instance v3, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v3, v5, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 368
    invoke-virtual {v0, p1, v4, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 371
    iget v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->g:I

    const/4 v3, 0x1

    iget-boolean v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->l:Z

    iget-object v5, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-static {v2, v0, v3, v4, v5}, Lfr/tvbarthel/lib/blurdialogfragment/FastBlurHelper;->a(Landroid/graphics/Bitmap;IZZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 373
    iget-boolean v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->e:Z

    if-eqz v0, :cond_1c2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    sget-object v4, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Blur method : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->l:Z

    if-eqz v0, :cond_1f9

    const-string/jumbo v0, "RenderScript"

    :goto_10b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Radius : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Down Scale Factor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->f:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Blurred achieved in : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Allocation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ko (screen capture) + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 382
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ko (blurred bitmap)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 385
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 386
    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 388
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 389
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v3, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 390
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v3, v5, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 394
    :cond_1c2
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    .line 395
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 396
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    return-void

    .line 297
    :cond_1e3
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c()I

    move-result v0

    goto/16 :goto_12

    :cond_1e9
    move v2, v3

    move v3, v4

    .line 317
    goto/16 :goto_3d

    .line 345
    :catch_1ed
    move-exception v0

    .line 347
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_93

    .line 377
    :cond_1f9
    const-string/jumbo v0, "FastBlur"

    goto/16 :goto_10b
.end method

.method static synthetic a(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->g()V

    return-void
.end method

.method static synthetic a(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a(Landroid/graphics/Bitmap;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    return-object v0
.end method

.method private c()I
    .registers 4

    .prologue
    const/16 v2, 0xb

    .line 405
    const/4 v1, 0x0

    .line 408
    :try_start_3
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->i:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_e

    .line 409
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->i:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    .line 430
    :cond_d
    :goto_d
    return v1

    .line 410
    :cond_e
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v0, :cond_24

    .line 411
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    .line 412
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_47

    .line 414
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->b()I

    move-result v0

    :goto_22
    move v1, v0

    .line 416
    goto :goto_d

    :cond_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_d

    .line 417
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_d

    .line 419
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I
    :try_end_33
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_33} :catch_35

    move-result v1

    goto :goto_d

    .line 422
    :catch_35
    move-exception v0

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_d

    .line 424
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_d

    .line 426
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    goto :goto_d

    :cond_47
    move v0, v1

    goto :goto_22
.end method

.method static synthetic c(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()I
    .registers 6

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    .line 441
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 442
    if-lez v1, :cond_20

    .line 443
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 445
    :cond_20
    return v0
.end method

.method static synthetic d(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method private e()I
    .registers 6

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 456
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_20

    .line 457
    const-string/jumbo v2, "navigation_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 458
    if-lez v2, :cond_20

    .line 459
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 462
    :cond_20
    return v0
.end method

.method static synthetic e(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->j:I

    return v0
.end method

.method private f()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 472
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 473
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10103ef

    aput v2, v1, v3

    .line 474
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 475
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 476
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    return v1
.end method

.method private g()V
    .registers 3

    .prologue
    .line 484
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 485
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    if-eqz v0, :cond_13

    .line 487
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 489
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    .line 491
    :cond_16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 164
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    .line 165
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->j:I

    int-to-long v2, v1

    .line 168
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;

    invoke-direct {v1, p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;-><init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 186
    :cond_2b
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->d:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->cancel(Z)Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->d:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    .line 188
    return-void
.end method

.method public a(F)V
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 219
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_9

    .line 220
    iput p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->f:F

    .line 224
    :goto_8
    return-void

    .line 222
    :cond_9
    iput v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->f:F

    goto :goto_8
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 235
    if-ltz p1, :cond_5

    .line 236
    iput p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->g:I

    .line 240
    :goto_4
    return-void

    .line 238
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->g:I

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/Toolbar;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->i:Landroid/support/v7/widget/Toolbar;

    .line 273
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_16

    .line 153
    :cond_6
    new-instance v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;-><init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;)V

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->d:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    .line 154
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->d:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    :cond_16
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->h:Landroid/app/Activity;

    .line 195
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 205
    iput-boolean p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->e:Z

    .line 206
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 252
    iput-boolean p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->l:Z

    .line 253
    return-void
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 263
    iput-boolean p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->k:Z

    .line 264
    return-void
.end method
