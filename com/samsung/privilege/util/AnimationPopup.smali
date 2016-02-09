.class public Lcom/samsung/privilege/util/AnimationPopup;
.super Ljava/lang/Object;
.source "AnimationPopup.java"


# static fields
.field public static final Enum_Animation_MarketBzBs:I = 0x2

.field public static final Enum_Animation_Welcome:I = 0x1

.field private static gCurrentPopupWelcome:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 416
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()I
    .registers 1

    .prologue
    .line 30
    sget v0, Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I

    return v0
.end method

.method static synthetic access$2(IIZ)I
    .registers 4

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(I)V
    .registers 1

    .prologue
    .line 30
    sput p0, Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I

    return-void
.end method

.method static synthetic access$4()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 409
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 402
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 395
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static bigToSmallAnimation(FF)Landroid/view/animation/Animation;
    .registers 9
    .param p0, "pCenterX"    # F
    .param p1, "pCenterY"    # F

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 389
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 390
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 391
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 392
    return-object v0
.end method

.method private static getImagePopup(IIZ)I
    .registers 8
    .param p0, "pAnimationSet"    # I
    .param p1, "pStep"    # I
    .param p2, "pIsUseSmall"    # Z

    .prologue
    const v0, 0x7f020357

    const v1, 0x7f020356

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 33
    if-eqz p2, :cond_32

    .line 34
    if-ne p1, v2, :cond_10

    .line 35
    if-ne p0, v2, :cond_f

    .line 82
    :cond_f
    :goto_f
    return v0

    .line 40
    :cond_10
    if-ne p1, v3, :cond_1c

    .line 41
    if-ne p0, v2, :cond_18

    .line 42
    const v0, 0x7f020359

    goto :goto_f

    .line 44
    :cond_18
    const v0, 0x7f020359

    goto :goto_f

    .line 46
    :cond_1c
    if-ne p1, v4, :cond_28

    .line 47
    if-ne p0, v2, :cond_24

    .line 48
    const v0, 0x7f02035b

    goto :goto_f

    .line 50
    :cond_24
    const v0, 0x7f02035b

    goto :goto_f

    .line 53
    :cond_28
    if-ne p0, v2, :cond_2e

    .line 54
    const v0, 0x7f02035d

    goto :goto_f

    .line 56
    :cond_2e
    const v0, 0x7f02035d

    goto :goto_f

    .line 60
    :cond_32
    if-ne p1, v2, :cond_3a

    .line 61
    if-ne p0, v2, :cond_38

    move v0, v1

    .line 62
    goto :goto_f

    :cond_38
    move v0, v1

    .line 64
    goto :goto_f

    .line 66
    :cond_3a
    if-ne p1, v3, :cond_46

    .line 67
    if-ne p0, v2, :cond_42

    .line 68
    const v0, 0x7f020358

    goto :goto_f

    .line 70
    :cond_42
    const v0, 0x7f020358

    goto :goto_f

    .line 72
    :cond_46
    if-ne p1, v4, :cond_52

    .line 73
    if-ne p0, v2, :cond_4e

    .line 74
    const v0, 0x7f02035a

    goto :goto_f

    .line 76
    :cond_4e
    const v0, 0x7f02035a

    goto :goto_f

    .line 79
    :cond_52
    if-ne p0, v2, :cond_58

    .line 80
    const v0, 0x7f02035c

    goto :goto_f

    .line 82
    :cond_58
    const v0, 0x7f02035c

    goto :goto_f
.end method

.method private static inFromLeftAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 410
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 411
    .local v0, "inFromLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 412
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 413
    return-object v0
.end method

.method private static inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 396
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 397
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 398
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 399
    return-object v0
.end method

.method private static outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 403
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 404
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 405
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 406
    return-object v0
.end method

.method private static outToRightAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 417
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 418
    .local v0, "outtoRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 419
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 420
    return-object v0
.end method

.method public static playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 37
    .param p0, "pAnimationSet"    # I
    .param p1, "pActivity"    # Landroid/app/Activity;
    .param p2, "pLayoutPopup"    # Landroid/widget/RelativeLayout;
    .param p3, "pImagePopup1"    # Landroid/widget/ImageView;
    .param p4, "pImagePopup2"    # Landroid/widget/ImageView;
    .param p5, "pLayoutButton"    # Landroid/widget/LinearLayout;
    .param p6, "pLayoutBack"    # Landroid/widget/RelativeLayout;
    .param p7, "pLayoutNext"    # Landroid/widget/RelativeLayout;
    .param p8, "pImageBack"    # Landroid/widget/ImageView;
    .param p9, "pImageNext"    # Landroid/widget/ImageView;
    .param p10, "pTvBack"    # Landroid/widget/TextView;
    .param p11, "pTvNext"    # Landroid/widget/TextView;

    .prologue
    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 104
    const v3, 0x7f0a033b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v3, 0x7f0a033c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v3, 0x0

    sput v3, Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I

    .line 109
    new-instance v20, Landroid/util/DisplayMetrics;

    invoke-direct/range {v20 .. v20}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v20, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    .line 112
    .local v21, "height":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    .line 113
    .local v24, "width":I
    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v4, 0x40000000

    div-float v18, v3, v4

    .line 114
    .local v18, "centerX":F
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v4, 0x40000000

    div-float v19, v3, v4

    .line 116
    .local v19, "centerY":F
    const/16 v22, 0x0

    .line 117
    .local v22, "isUseSmallImage":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    if-ne v3, v4, :cond_65

    .line 118
    const/16 v22, 0x1

    .line 120
    :cond_65
    move/from16 v7, v22

    .line 122
    .local v7, "isUseSmallImageFinal":Z
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 124
    new-instance v3, Lcom/samsung/privilege/util/AnimationPopup$1;

    invoke-direct {v3}, Lcom/samsung/privilege/util/AnimationPopup$1;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    new-instance v3, Lcom/samsung/privilege/util/AnimationPopup$2;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p11

    move-object/from16 v11, p6

    move-object/from16 v12, p5

    invoke-direct/range {v3 .. v12}, Lcom/samsung/privilege/util/AnimationPopup$2;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;IZLandroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v8, Lcom/samsung/privilege/util/AnimationPopup$3;

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p0

    move v13, v7

    move-object/from16 v14, p2

    move-object/from16 v15, p11

    move-object/from16 v16, p6

    move-object/from16 v17, p5

    invoke-direct/range {v8 .. v17}, Lcom/samsung/privilege/util/AnimationPopup$3;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;IZLandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const/4 v3, 0x1

    move/from16 v0, p0

    invoke-static {v0, v3, v7}, Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    const/4 v3, 0x1

    sput v3, Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I

    .line 349
    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/AnimationPopup;->smallToBig1Animation(FF)Landroid/view/animation/Animation;

    move-result-object v23

    .line 350
    .local v23, "smallToBig1":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 351
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 352
    const-wide/16 v3, 0x1f4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 353
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    new-instance v3, Lcom/samsung/privilege/util/AnimationPopup$4;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/privilege/util/AnimationPopup$4;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 379
    return-void
.end method

.method private static smallToBig1Animation(FF)Landroid/view/animation/Animation;
    .registers 9
    .param p0, "pCenterX"    # F
    .param p1, "pCenterY"    # F

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 382
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 383
    .local v0, "smallToBig":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 384
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    return-object v0
.end method
