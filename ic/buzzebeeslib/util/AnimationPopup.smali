.class public Lic/buzzebeeslib/util/AnimationPopup;
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
    .line 26
    const/4 v0, 0x0

    sput v0, Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 420
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()I
    .registers 1

    .prologue
    .line 26
    sget v0, Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I

    return v0
.end method

.method static synthetic access$2(IIZ)I
    .registers 4

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lic/buzzebeeslib/util/AnimationPopup;->getImagePopup(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(I)V
    .registers 1

    .prologue
    .line 26
    sput p0, Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I

    return-void
.end method

.method static synthetic access$4()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 413
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 406
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 399
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->inFromRightAnimation()Landroid/view/animation/Animation;

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

    .line 393
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 394
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 395
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 396
    return-object v0
.end method

.method private static getImagePopup(IIZ)I
    .registers 6
    .param p0, "pAnimationSet"    # I
    .param p1, "pStep"    # I
    .param p2, "pIsUseSmall"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 29
    if-eqz p2, :cond_17

    .line 30
    if-ne p1, v0, :cond_a

    .line 36
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_popup_market_bzbs1_small:I

    .line 87
    :goto_9
    return v0

    .line 37
    :cond_a
    if-ne p1, v1, :cond_f

    .line 43
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_popup_market_bzbs2_small:I

    goto :goto_9

    .line 44
    :cond_f
    if-ne p1, v2, :cond_14

    .line 50
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_popup_market_bzbs3_small:I

    goto :goto_9

    .line 57
    :cond_14
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_popup_market_bzbs4_small:I

    goto :goto_9

    .line 60
    :cond_17
    if-ne p1, v0, :cond_1c

    .line 66
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_popup_market_bzbs1:I

    goto :goto_9

    .line 67
    :cond_1c
    if-ne p1, v1, :cond_21

    .line 73
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_popup_market_bzbs2:I

    goto :goto_9

    .line 74
    :cond_21
    if-ne p1, v2, :cond_26

    .line 80
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_popup_market_bzbs3:I

    goto :goto_9

    .line 87
    :cond_26
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_popup_market_bzbs4:I

    goto :goto_9
.end method

.method private static inFromLeftAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 414
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 415
    .local v0, "inFromLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 416
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 417
    return-object v0
.end method

.method private static inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 400
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 401
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 402
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 403
    return-object v0
.end method

.method private static outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 407
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 408
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 409
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 410
    return-object v0
.end method

.method private static outToRightAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 421
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 422
    .local v0, "outtoRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 423
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 424
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
    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 108
    sget v3, Lic/buzzebeeslib/R$string;->intro_back:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v3, Lic/buzzebeeslib/R$string;->intro_next:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v3, 0x0

    sput v3, Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I

    .line 113
    new-instance v20, Landroid/util/DisplayMetrics;

    invoke-direct/range {v20 .. v20}, Landroid/util/DisplayMetrics;-><init>()V

    .line 114
    .local v20, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    .line 116
    .local v21, "height":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    .line 117
    .local v24, "width":I
    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v4, 0x40000000

    div-float v18, v3, v4

    .line 118
    .local v18, "centerX":F
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v4, 0x40000000

    div-float v19, v3, v4

    .line 120
    .local v19, "centerY":F
    const/16 v22, 0x0

    .line 121
    .local v22, "isUseSmallImage":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    if-ne v3, v4, :cond_63

    .line 122
    const/16 v22, 0x1

    .line 124
    :cond_63
    move/from16 v7, v22

    .line 126
    .local v7, "isUseSmallImageFinal":Z
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    new-instance v3, Lic/buzzebeeslib/util/AnimationPopup$1;

    invoke-direct {v3}, Lic/buzzebeeslib/util/AnimationPopup$1;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    new-instance v3, Lic/buzzebeeslib/util/AnimationPopup$2;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p11

    move-object/from16 v11, p6

    move-object/from16 v12, p5

    invoke-direct/range {v3 .. v12}, Lic/buzzebeeslib/util/AnimationPopup$2;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;IZLandroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v8, Lic/buzzebeeslib/util/AnimationPopup$3;

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p0

    move v13, v7

    move-object/from16 v14, p2

    move-object/from16 v15, p11

    move-object/from16 v16, p6

    move-object/from16 v17, p5

    invoke-direct/range {v8 .. v17}, Lic/buzzebeeslib/util/AnimationPopup$3;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;IZLandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const/4 v3, 0x1

    move/from16 v0, p0

    invoke-static {v0, v3, v7}, Lic/buzzebeeslib/util/AnimationPopup;->getImagePopup(IIZ)I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    const/4 v3, 0x1

    sput v3, Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I

    .line 353
    invoke-static/range {v18 .. v19}, Lic/buzzebeeslib/util/AnimationPopup;->smallToBig1Animation(FF)Landroid/view/animation/Animation;

    move-result-object v23

    .line 354
    .local v23, "smallToBig1":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 355
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 356
    const-wide/16 v3, 0x1f4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 357
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 359
    new-instance v3, Lic/buzzebeeslib/util/AnimationPopup$4;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v1, v2}, Lic/buzzebeeslib/util/AnimationPopup$4;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 383
    return-void
.end method

.method private static smallToBig1Animation(FF)Landroid/view/animation/Animation;
    .registers 9
    .param p0, "pCenterX"    # F
    .param p1, "pCenterY"    # F

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 386
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 387
    .local v0, "smallToBig":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 388
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 389
    return-object v0
.end method
