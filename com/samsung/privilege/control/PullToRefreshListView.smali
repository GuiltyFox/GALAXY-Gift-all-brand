.class public Lcom/samsung/privilege/control/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;,
        Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;,
        Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;,
        Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;,
        Lcom/samsung/privilege/control/PullToRefreshListView$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsung$privilege$control$PullToRefreshListView$State:[I = null

.field private static final BOUNCE_ANIMATION_DELAY:I = 0x64

.field private static final BOUNCE_ANIMATION_DURATION:I = 0x2bc

.field private static final BOUNCE_OVERSHOOT_TENSION:F = 1.4f

.field private static final PULL_RESISTANCE:F = 1.7f

.field private static final ROTATE_ARROW_ANIMATION_DURATION:I = 0xfa

.field private static measuredHeaderHeight:I


# instance fields
.field private LOGCAT:Ljava/lang/String;

.field private bounceBackHeader:Z

.field private flipAnimation:Landroid/view/animation/RotateAnimation;

.field private hasResetHeader:Z

.field private header:Landroid/widget/RelativeLayout;

.field private headerContainer:Landroid/widget/LinearLayout;

.field private headerPadding:I

.field private image:Landroid/widget/ImageView;

.field private lastUpdate:Ljava/lang/String;

.field private lockScrollWhileRefreshing:Z

.field public mIsPremium:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onRefreshListener:Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;

.field private previousY:F

.field private pullToRefreshText:Ljava/lang/String;

.field private refreshingText:Ljava/lang/String;

.field private releaseToRefreshText:Ljava/lang/String;

.field private reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private scrollbarEnabled:Z

.field private spinner:Landroid/widget/ProgressBar;

.field private state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

.field private text:Landroid/widget/TextView;

.field private update:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsung$privilege$control$PullToRefreshListView$State()[I
    .registers 3

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/privilege/control/PullToRefreshListView;->$SWITCH_TABLE$com$samsung$privilege$control$PullToRefreshListView$State:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/samsung/privilege/control/PullToRefreshListView$State;->values()[Lcom/samsung/privilege/control/PullToRefreshListView$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/samsung/privilege/control/PullToRefreshListView;->$SWITCH_TABLE$com$samsung$privilege$control$PullToRefreshListView$State:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z

    .line 110
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const-string v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const-string v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/control/PullToRefreshListView;)Lcom/samsung/privilege/control/PullToRefreshListView$State;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/control/PullToRefreshListView;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$10()I
    .registers 1

    .prologue
    .line 81
    sget v0, Lcom/samsung/privilege/control/PullToRefreshListView;->measuredHeaderHeight:I

    return v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/control/PullToRefreshListView;Z)V
    .registers 2

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->hasResetHeader:Z

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/control/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/control/PullToRefreshListView;)Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->scrollbarEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/control/PullToRefreshListView;I)V
    .registers 2

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/PullToRefreshListView;->setHeaderPadding(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/control/PullToRefreshListView;)Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->bounceBackHeader:Z

    return v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/control/PullToRefreshListView;Z)V
    .registers 2

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->bounceBackHeader:Z

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/privilege/control/PullToRefreshListView;)V
    .registers 1

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->bounceBackHeader()V

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/privilege/control/PullToRefreshListView;Lcom/samsung/privilege/control/PullToRefreshListView$State;)V
    .registers 2

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/PullToRefreshListView;->setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V

    return-void
.end method

.method static synthetic access$9(I)V
    .registers 1

    .prologue
    .line 81
    sput p0, Lcom/samsung/privilege/control/PullToRefreshListView;->measuredHeaderHeight:I

    return-void
.end method

.method private bounceBackHeader()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 348
    iget-object v3, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v4, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v3, v4, :cond_48

    iget-object v3, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v9, v3

    .line 350
    .local v9, "yTranslate":I
    :goto_17
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v9

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 352
    .local v0, "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 353
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 355
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 356
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fb33333

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 357
    new-instance v1, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;-><init>(Lcom/samsung/privilege/control/PullToRefreshListView;Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    return-void

    .line 348
    .end local v0    # "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "yTranslate":I
    :cond_48
    iget-object v3, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    neg-int v9, v3

    goto :goto_17
.end method

.method private init(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000

    const/4 v13, 0x0

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f030110

    invoke-virtual {v0, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    .line 236
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0c022f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    .line 237
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const v5, 0x7f0c0233

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const v5, 0x7f0c0073

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    .line 239
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const v5, 0x7f0c0232

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const v5, 0x7f0c0234

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f09034d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 243
    const v0, 0x7f09034e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 244
    const v0, 0x7f09034c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 245
    const v0, 0x7f09034f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->lastUpdate:Ljava/lang/String;

    .line 247
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    .line 248
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 250
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 252
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 253
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 255
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 257
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 258
    sget-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->scrollbarEnabled:Z

    .line 261
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 262
    .local v12, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;

    invoke-direct {v0, p0, v13}, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcom/samsung/privilege/control/PullToRefreshListView;Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 264
    new-instance v0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;

    invoke-direct {v0, p0, v13}, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;-><init>(Lcom/samsung/privilege/control/PullToRefreshListView;Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setUpdateTime()V

    .line 267
    return-void
.end method

.method private resetHeader()V
    .registers 3

    .prologue
    .line 363
    iget v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerPadding:I

    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_17

    .line 364
    :cond_11
    sget-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V

    .line 373
    :goto_16
    return-void

    .line 368
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->bounceBackHeader:Z

    goto :goto_16

    .line 371
    :cond_2b
    invoke-direct {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_16
.end method

.method private setHeaderPadding(I)V
    .registers 6
    .param p1, "padding"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 270
    iput p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerPadding:I

    .line 272
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 273
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 274
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-boolean v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z

    if-eqz v1, :cond_2b

    .line 276
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    :cond_2b
    return-void
.end method

.method private setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/privilege/control/PullToRefreshListView$State;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    .line 387
    invoke-static {}, Lcom/samsung/privilege/control/PullToRefreshListView;->$SWITCH_TABLE$com$samsung$privilege$control$PullToRefreshListView$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/privilege/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 413
    :goto_f
    return-void

    .line 391
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 398
    :pswitch_1f
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 403
    :pswitch_2e
    invoke-direct {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setUiRefreshing()V

    .line 405
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshListener:Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;

    if-nez v0, :cond_3b

    .line 406
    sget-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V

    goto :goto_f

    .line 408
    :cond_3b
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshListener:Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    goto :goto_f

    .line 387
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1f
        :pswitch_2e
    .end packed-switch
.end method

.method private setUiRefreshing()V
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 380
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setUpdateTime()V

    .line 383
    return-void
.end method


# virtual methods
.method public isRefreshing()Z
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onRefreshComplete()V
    .registers 2

    .prologue
    .line 177
    sget-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    .line 178
    invoke-direct {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->resetHeader()V

    .line 179
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 417
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 419
    iget-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->hasResetHeader:Z

    if-nez v0, :cond_1a

    .line 420
    sget v0, Lcom/samsung/privilege/control/PullToRefreshListView;->measuredHeaderHeight:I

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-eq v0, v1, :cond_17

    .line 421
    sget v0, Lcom/samsung/privilege/control/PullToRefreshListView;->measuredHeaderHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 424
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->hasResetHeader:Z

    .line 426
    :cond_1a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, -0x40800000

    .line 283
    iget-boolean v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v5, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v4, v5, :cond_e

    .line 284
    const/4 v4, 0x1

    .line 344
    :goto_d
    return v4

    .line 287
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 288
    .local v1, "eventAction":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1c

    iget v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1c

    .line 289
    const/4 v1, 0x0

    .line 292
    :cond_1c
    packed-switch v1, :pswitch_data_d8

    .line 344
    :cond_1f
    :goto_1f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_d

    .line 294
    :pswitch_24
    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_31

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    goto :goto_1f

    .line 297
    :cond_31
    iput v6, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    goto :goto_1f

    .line 302
    :pswitch_34
    iget v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v5, Lcom/samsung/privilege/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-eq v4, v5, :cond_46

    invoke-virtual {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_1f

    .line 303
    :cond_46
    invoke-static {}, Lcom/samsung/privilege/control/PullToRefreshListView;->$SWITCH_TABLE$com$samsung$privilege$control$PullToRefreshListView$State()[I

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-virtual {v5}, Lcom/samsung/privilege/control/PullToRefreshListView$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_e2

    goto :goto_1f

    .line 309
    :pswitch_56
    invoke-direct {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->resetHeader()V

    goto :goto_1f

    .line 305
    :pswitch_5a
    sget-object v4, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-direct {p0, v4}, Lcom/samsung/privilege/control/PullToRefreshListView;->setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V

    .line 306
    invoke-direct {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_1f

    .line 316
    :pswitch_63
    iget v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1f

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 318
    .local v3, "y":F
    iget v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    sub-float v0, v3, v4

    .line 320
    .local v0, "diff":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_7a

    .line 321
    const v4, 0x3fd9999a

    div-float/2addr v0, v4

    .line 322
    :cond_7a
    iput v3, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->previousY:F

    .line 324
    iget v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerPadding:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 325
    .local v2, "newHeaderPadding":I
    iget-boolean v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    if-nez v4, :cond_9b

    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v5, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v4, v5, :cond_9b

    if-lez v2, :cond_9b

    .line 326
    const/4 v2, 0x0

    .line 329
    :cond_9b
    invoke-direct {p0, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 331
    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v5, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v4, v5, :cond_bb

    iget v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerPadding:I

    if-lez v4, :cond_bb

    .line 332
    sget-object v4, Lcom/samsung/privilege/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-direct {p0, v4}, Lcom/samsung/privilege/control/PullToRefreshListView;->setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V

    .line 333
    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 334
    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1f

    .line 335
    :cond_bb
    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v5, Lcom/samsung/privilege/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v4, v5, :cond_1f

    iget v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->headerPadding:I

    if-gez v4, :cond_1f

    .line 336
    sget-object v4, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    invoke-direct {p0, v4}, Lcom/samsung/privilege/control/PullToRefreshListView;->setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V

    .line 337
    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 338
    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1f

    .line 292
    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_24
        :pswitch_34
        :pswitch_63
    .end packed-switch

    .line 303
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_56
        :pswitch_5a
    .end packed-switch
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 429
    if-eqz p1, :cond_7

    .line 433
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_7
    return-void
.end method

.method public setLockScrollWhileRefreshing(Z)V
    .registers 2
    .param p1, "lockScrollWhileRefreshing"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    .line 154
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .prologue
    .line 125
    .local p1, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 126
    return-void
.end method

.method public setOnRefreshListener(Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;)V
    .registers 2
    .param p1, "onRefreshListener"    # Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshListener:Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;

    .line 137
    return-void
.end method

.method public setRefreshing()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 162
    sget-object v0, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    iput-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    .line 163
    invoke-virtual {p0, v1, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->scrollTo(II)V

    .line 164
    invoke-direct {p0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setUiRefreshing()V

    .line 165
    invoke-direct {p0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 166
    iget-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z

    if-eqz v0, :cond_26

    .line 167
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    :cond_26
    return-void
.end method

.method public setTextPullToRefresh(Ljava/lang/String;)V
    .registers 5
    .param p1, "pullToRefreshText"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    .line 188
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_f

    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z

    if-eqz v0, :cond_25

    .line 193
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    :cond_25
    return-void
.end method

.method public setTextRefreshing(Ljava/lang/String;)V
    .registers 5
    .param p1, "refreshingText"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    .line 222
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_f

    .line 224
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z

    if-eqz v0, :cond_25

    .line 227
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    :cond_25
    return-void
.end method

.method public setTextReleaseToRefresh(Ljava/lang/String;)V
    .registers 5
    .param p1, "releaseToRefreshText"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    .line 205
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v1, Lcom/samsung/privilege/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_f

    .line 207
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->mIsPremium:Z

    if-eqz v0, :cond_25

    .line 210
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    :cond_25
    return-void
.end method

.method public setUpdateTime()V
    .registers 6

    .prologue
    .line 440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 443
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy, HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "formattedDate":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/privilege/control/PullToRefreshListView;->lastUpdate:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/privilege/AppSetting;->gLastUpdate:Ljava/lang/String;

    .line 448
    return-void
.end method
