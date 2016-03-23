.class public Lcom/bzbs/lib/survey/util/AnimationPopup;
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

    sput v0, Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 21
    sget v0, Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 21
    sput p0, Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I

    return p0
.end method

.method static synthetic access$200(IIZ)I
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 21
    invoke-static {p0, p1, p2}, Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->inFromRightAnimation()Landroid/view/animation/Animation;

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
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

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
    if-ne p2, v0, :cond_17

    .line 30
    if-ne p1, v0, :cond_a

    .line 36
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_popup_market_bzbs1_small:I

    .line 87
    :goto_9
    return v0

    .line 37
    :cond_a
    if-ne p1, v1, :cond_f

    .line 43
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_popup_market_bzbs2_small:I

    goto :goto_9

    .line 44
    :cond_f
    if-ne p1, v2, :cond_14

    .line 50
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_popup_market_bzbs3_small:I

    goto :goto_9

    .line 57
    :cond_14
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_popup_market_bzbs4_small:I

    goto :goto_9

    .line 60
    :cond_17
    if-ne p1, v0, :cond_1c

    .line 66
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_popup_market_bzbs1:I

    goto :goto_9

    .line 67
    :cond_1c
    if-ne p1, v1, :cond_21

    .line 73
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_popup_market_bzbs2:I

    goto :goto_9

    .line 74
    :cond_21
    if-ne p1, v2, :cond_26

    .line 80
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_popup_market_bzbs3:I

    goto :goto_9

    .line 87
    :cond_26
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_popup_market_bzbs4:I

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
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

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
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

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
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

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
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 423
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 424
    return-object v0
.end method

.method public static playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 38
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

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/lib/survey/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 108
    sget v4, Lcom/bzbs/lib/survey/R$string;->intro_back:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v4, Lcom/bzbs/lib/survey/R$string;->intro_next:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v4, 0x0

    sput v4, Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I

    .line 113
    new-instance v21, Landroid/util/DisplayMetrics;

    invoke-direct/range {v21 .. v21}, Landroid/util/DisplayMetrics;-><init>()V

    .line 114
    .local v21, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    .line 116
    .local v22, "height":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    .line 117
    .local v25, "width":I
    move/from16 v0, v25

    int-to-float v4, v0

    const/high16 v5, 0x40000000

    div-float v19, v4, v5

    .line 118
    .local v19, "centerX":F
    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x40000000

    div-float v20, v4, v5

    .line 120
    .local v20, "centerY":F
    const/16 v23, 0x0

    .line 121
    .local v23, "isUseSmallImage":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x1

    if-ne v4, v5, :cond_63

    .line 122
    const/16 v23, 0x1

    .line 124
    :cond_63
    move/from16 v8, v23

    .line 126
    .local v8, "isUseSmallImageFinal":Z
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    new-instance v4, Lcom/bzbs/lib/survey/util/AnimationPopup$1;

    invoke-direct {v4}, Lcom/bzbs/lib/survey/util/AnimationPopup$1;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    new-instance v4, Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object/from16 v11, p11

    move-object/from16 v12, p6

    move-object/from16 v13, p5

    invoke-direct/range {v4 .. v13}, Lcom/bzbs/lib/survey/util/AnimationPopup$2;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;IZLandroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v9, Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move v15, v8

    move-object/from16 v16, p11

    move-object/from16 v17, p6

    move-object/from16 v18, p5

    invoke-direct/range {v9 .. v18}, Lcom/bzbs/lib/survey/util/AnimationPopup$3;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;ZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const/4 v4, 0x1

    move/from16 v0, p0

    invoke-static {v0, v4, v8}, Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    const/4 v4, 0x1

    sput v4, Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I

    .line 353
    invoke-static/range {v19 .. v20}, Lcom/bzbs/lib/survey/util/AnimationPopup;->smallToBig1Animation(FF)Landroid/view/animation/Animation;

    move-result-object v24

    .line 354
    .local v24, "smallToBig1":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 355
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 356
    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 357
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 359
    new-instance v4, Lcom/bzbs/lib/survey/util/AnimationPopup$4;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lcom/bzbs/lib/survey/util/AnimationPopup$4;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

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
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 388
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 389
    return-object v0
.end method
