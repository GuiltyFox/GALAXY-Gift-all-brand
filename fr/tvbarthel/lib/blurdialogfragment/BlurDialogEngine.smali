.class Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;
.super Ljava/lang/Object;
.source "BlurDialogEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;
    }
.end annotation


# static fields
.field static final DEFAULT_ACTION_BAR_BLUR:Z = false

.field static final DEFAULT_BLUR_DOWN_SCALE_FACTOR:F = 4.0f

.field static final DEFAULT_BLUR_RADIUS:I = 0x8

.field static final DEFAULT_DEBUG_POLICY:Z

.field static final DEFAULT_DIMMING_POLICY:Z

.field static final DEFAULT_USE_RENDERSCRIPT:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDuration:I

.field private mBlurRadius:I

.field private mBluringTask:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

.field private mBlurredActionBar:Z

.field private mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mBlurredBackgroundView:Landroid/widget/ImageView;

.field private mDebugEnable:Z

.field private mDownScaleFactor:F

.field private mHoldingActivity:Landroid/app/Activity;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mUseRenderScript:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "holdingActivity"    # Landroid/app/Activity;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mDebugEnable:Z

    .line 101
    const/high16 v0, 0x40800000

    iput v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mDownScaleFactor:F

    .line 106
    const/16 v0, 0x8

    iput v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurRadius:I

    .line 142
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/tvbarthel/lib/blurdialogfragment/R$integer;->blur_dialog_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mAnimationDuration:I

    .line 144
    return-void
.end method

.method static synthetic access$100(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V
    .registers 1
    .param p0, "x0"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .prologue
    .line 39
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->removeBlurredView()V

    return-void
.end method

.method static synthetic access$200(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .prologue
    .line 39
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->blur(Landroid/graphics/Bitmap;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .prologue
    .line 39
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .prologue
    .line 39
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$600(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)I
    .registers 2
    .param p0, "x0"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .prologue
    .line 39
    iget v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mAnimationDuration:I

    return v0
.end method

.method private blur(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .registers 35
    .param p1, "bkg"    # Landroid/graphics/Bitmap;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 284
    .local v22, "startMs":J
    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 290
    const/16 v17, 0x0

    .line 294
    .local v17, "overlay":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredActionBar:Z

    move/from16 v25, v0

    if-eqz v25, :cond_334

    .line 295
    const/4 v6, 0x0

    .line 301
    .local v6, "actionBarHeight":I
    :goto_24
    const/16 v21, 0x0

    .line 302
    .local v21, "statusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    if-nez v25, :cond_46

    .line 305
    invoke-direct/range {p0 .. p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->getStatusBarHeight()I

    move-result v21

    .line 308
    :cond_46
    add-int v24, v6, v21

    .line 311
    .local v24, "topOffset":I
    const/4 v8, 0x0

    .line 312
    .local v8, "bottomOffset":I
    const/16 v19, 0x0

    .line 313
    .local v19, "rightOffset":I
    invoke-direct/range {p0 .. p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->getNavigationBarOffset()I

    move-result v16

    .line 314
    .local v16, "navBarSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    sget v28, Lfr/tvbarthel/lib/blurdialogfragment/R$bool;->blur_dialog_has_bottom_navigation_bar:I

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-eqz v25, :cond_33a

    .line 315
    move/from16 v8, v16

    .line 322
    :goto_67
    new-instance v20, Landroid/graphics/Rect;

    const/16 v25, 0x0

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    sub-int v28, v28, v19

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    sub-int v29, v29, v8

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    .local v20, "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v25

    sub-int v25, v25, v24

    sub-int v25, v25, v8

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mDownScaleFactor:F

    move/from16 v28, v0

    div-float v25, v25, v28

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    .line 332
    .local v14, "height":D
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v25

    sub-int v25, v25, v19

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v14

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v25

    sub-int v25, v25, v24

    sub-int v25, v25, v8

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    .line 332
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 334
    .local v26, "width":D
    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    double-to-int v0, v14

    move/from16 v28, v0

    sget-object v29, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 337
    :try_start_d6
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0xb

    move/from16 v0, v25

    move/from16 v1, v28

    if-lt v0, v1, :cond_ee

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/support/v7/app/ActionBarActivity;

    move/from16 v25, v0

    if-eqz v25, :cond_113

    .line 342
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v28, 0x30

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_113
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d6 .. :try_end_113} :catch_33e

    .line 351
    :cond_113
    :goto_113
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x13

    move/from16 v0, v25

    move/from16 v1, v28

    if-lt v0, v1, :cond_14a

    .line 352
    invoke-direct/range {p0 .. p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->isStatusBarTranslucent()Z

    move-result v25

    if-eqz v25, :cond_14a

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v29, v0

    add-int v29, v29, v21

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 359
    :cond_14a
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    .local v10, "canvas":Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 361
    .local v18, "paint":Landroid/graphics/Paint;
    const/16 v25, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 364
    new-instance v12, Landroid/graphics/RectF;

    const/16 v25, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 368
    .local v12, "destRect":Landroid/graphics/RectF;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v10, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurRadius:I

    move/from16 v25, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mUseRenderScript:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lfr/tvbarthel/lib/blurdialogfragment/FastBlurHelper;->doBlur(Landroid/graphics/Bitmap;IZZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mDebugEnable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2ed

    .line 374
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v28, " ms"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "blurTime":Ljava/lang/String;
    sget-object v28, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Blur method : "

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mUseRenderScript:Z

    move/from16 v25, v0

    if-eqz v25, :cond_35c

    const-string/jumbo v25, "RenderScript"

    :goto_1f4
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v25, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Radius : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurRadius:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v25, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Down Scale Factor : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mDownScaleFactor:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v25, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Blurred achieved in : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v25, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Allocation : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "ko (screen capture) + "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 382
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "ko (blurred bitmap)"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 381
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 385
    .local v9, "bounds":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 386
    .local v11, "canvas1":Landroid/graphics/Canvas;
    const/high16 v25, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 388
    const/high16 v25, 0x41a00000

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 389
    const/16 v25, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 390
    const/high16 v25, 0x40000000

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v11, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 394
    .end local v7    # "blurTime":Ljava/lang/String;
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "canvas1":Landroid/graphics/Canvas;
    :cond_2ed
    new-instance v25, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    sget-object v28, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    new-instance v28, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    return-void

    .line 297
    .end local v6    # "actionBarHeight":I
    .end local v8    # "bottomOffset":I
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "destRect":Landroid/graphics/RectF;
    .end local v14    # "height":D
    .end local v16    # "navBarSize":I
    .end local v18    # "paint":Landroid/graphics/Paint;
    .end local v19    # "rightOffset":I
    .end local v20    # "srcRect":Landroid/graphics/Rect;
    .end local v21    # "statusBarHeight":I
    .end local v24    # "topOffset":I
    .end local v26    # "width":D
    :cond_334
    invoke-direct/range {p0 .. p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->getActionBarHeight()I

    move-result v6

    .restart local v6    # "actionBarHeight":I
    goto/16 :goto_24

    .line 317
    .restart local v8    # "bottomOffset":I
    .restart local v16    # "navBarSize":I
    .restart local v19    # "rightOffset":I
    .restart local v21    # "statusBarHeight":I
    .restart local v24    # "topOffset":I
    :cond_33a
    move/from16 v19, v16

    goto/16 :goto_67

    .line 345
    .restart local v14    # "height":D
    .restart local v20    # "srcRect":Landroid/graphics/Rect;
    .restart local v26    # "width":D
    :catch_33e
    move-exception v13

    .line 347
    .local v13, "e":Ljava/lang/NoClassDefFoundError;
    move-object/from16 v0, p0

    iget-object v0, v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_113

    .line 377
    .end local v13    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v7    # "blurTime":Ljava/lang/String;
    .restart local v10    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "destRect":Landroid/graphics/RectF;
    .restart local v18    # "paint":Landroid/graphics/Paint;
    :cond_35c
    const-string/jumbo v25, "FastBlur"

    goto/16 :goto_1f4
.end method

.method private getActionBarHeight()I
    .registers 7

    .prologue
    const/16 v5, 0xb

    .line 405
    const/4 v1, 0x0

    .line 408
    .local v1, "actionBarHeight":I
    :try_start_3
    iget-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_e

    .line 409
    iget-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    .line 430
    :cond_d
    :goto_d
    return v1

    .line 410
    :cond_e
    iget-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    instance-of v4, v4, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v4, :cond_23

    .line 411
    iget-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    check-cast v4, Landroid/support/v7/app/ActionBarActivity;

    .line 412
    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    .line 413
    .local v3, "supportActionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v3, :cond_d

    .line 414
    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v1

    goto :goto_d

    .line 416
    .end local v3    # "supportActionBar":Landroid/support/v7/app/ActionBar;
    :cond_23
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_d

    .line 417
    iget-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 418
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 419
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I
    :try_end_32
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_32} :catch_34

    move-result v1

    goto :goto_d

    .line 422
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :catch_34
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_d

    .line 424
    iget-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 425
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 426
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    goto :goto_d
.end method

.method private getNavigationBarOffset()I
    .registers 7

    .prologue
    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, "result":I
    iget-object v3, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 456
    .local v1, "resources":Landroid/content/res/Resources;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_20

    .line 457
    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 458
    .local v0, "resourceId":I
    if-lez v0, :cond_20

    .line 459
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 462
    .end local v0    # "resourceId":I
    :cond_20
    return v2
.end method

.method private getStatusBarHeight()I
    .registers 7

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, "result":I
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    .line 441
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 442
    .local v0, "resourceId":I
    if-lez v0, :cond_20

    .line 443
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 445
    :cond_20
    return v1
.end method

.method private isStatusBarTranslucent()Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 472
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 473
    .local v3, "typedValue":Landroid/util/TypedValue;
    const/4 v4, 0x1

    new-array v1, v4, [I

    const v4, 0x10103ef

    aput v4, v1, v6

    .line 474
    .local v1, "attribute":[I
    iget-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 475
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 476
    .local v2, "isStatusBarTranslucent":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    return v2
.end method

.method private removeBlurredView()V
    .registers 3

    .prologue
    .line 484
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    if-eqz v1, :cond_16

    .line 485
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_13

    .line 487
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 489
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    .line 491
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_16
    return-void
.end method


# virtual methods
.method public debug(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mDebugEnable:Z

    .line 206
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;

    .line 195
    return-void
.end method

.method public onDismiss()V
    .registers 5

    .prologue
    .line 164
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    .line 165
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mAnimationDuration:I

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
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBluringTask:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->cancel(Z)Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBluringTask:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    .line 188
    return-void
.end method

.method public onResume(Z)V
    .registers 4
    .param p1, "retainedInstance"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_16

    .line 153
    :cond_6
    new-instance v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;-><init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;)V

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBluringTask:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    .line 154
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBluringTask:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    :cond_16
    return-void
.end method

.method public setBlurActionBar(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredActionBar:Z

    .line 264
    return-void
.end method

.method public setBlurRadius(I)V
    .registers 3
    .param p1, "radius"    # I

    .prologue
    .line 235
    if-ltz p1, :cond_5

    .line 236
    iput p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurRadius:I

    .line 240
    :goto_4
    return-void

    .line 238
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurRadius:I

    goto :goto_4
.end method

.method public setDownScaleFactor(F)V
    .registers 4
    .param p1, "factor"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 219
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_9

    .line 220
    iput p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mDownScaleFactor:F

    .line 224
    :goto_8
    return-void

    .line 222
    :cond_9
    iput v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mDownScaleFactor:F

    goto :goto_8
.end method

.method public setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 2
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 272
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 273
    return-void
.end method

.method public setUseRenderScript(Z)V
    .registers 2
    .param p1, "useRenderScript"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mUseRenderScript:Z

    .line 253
    return-void
.end method
