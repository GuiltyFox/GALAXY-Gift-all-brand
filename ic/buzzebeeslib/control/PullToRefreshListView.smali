.class public Lic/buzzebeeslib/control/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;,
        Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;,
        Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;,
        Lic/buzzebeeslib/control/PullToRefreshListView$PTROnItemClickListener;,
        Lic/buzzebeeslib/control/PullToRefreshListView$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ic$buzzebeeslib$control$PullToRefreshListView$State:[I = null

.field private static final BOUNCE_ANIMATION_DELAY:I = 0x64

.field private static final BOUNCE_ANIMATION_DURATION:I = 0x2bc

.field private static final BOUNCE_OVERSHOOT_TENSION:F = 1.4f

.field private static final PULL_RESISTANCE:F = 1.7f

.field private static final ROTATE_ARROW_ANIMATION_DURATION:I = 0xfa

.field public static gLastUpdate:Ljava/lang/String;

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

.field private lockScrollWhileRefreshing:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onRefreshListener:Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;

.field private previousY:F

.field private pullToRefreshText:Ljava/lang/String;

.field private refreshingText:Ljava/lang/String;

.field private releaseToRefreshText:Ljava/lang/String;

.field private reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private scrollbarEnabled:Z

.field private spinner:Landroid/widget/ProgressBar;

.field private state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

.field private text:Landroid/widget/TextView;

.field private update:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$ic$buzzebeeslib$control$PullToRefreshListView$State()[I
    .registers 3

    .prologue
    .line 53
    sget-object v0, Lic/buzzebeeslib/control/PullToRefreshListView;->$SWITCH_TABLE$ic$buzzebeeslib$control$PullToRefreshListView$State:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lic/buzzebeeslib/control/PullToRefreshListView$State;->values()[Lic/buzzebeeslib/control/PullToRefreshListView$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lic/buzzebeeslib/control/PullToRefreshListView;->$SWITCH_TABLE$ic$buzzebeeslib$control$PullToRefreshListView$State:[I

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

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string v0, ""

    sput-object v0, Lic/buzzebeeslib/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v0, "buzzebees.pull"

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    .line 107
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-string v0, "buzzebees.pull"

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    .line 112
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string v0, "buzzebees.pull"

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    .line 117
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->init()V

    .line 118
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/control/PullToRefreshListView;)Lic/buzzebeeslib/control/PullToRefreshListView$State;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/PullToRefreshListView;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$10()I
    .registers 1

    .prologue
    .line 81
    sget v0, Lic/buzzebeeslib/control/PullToRefreshListView;->measuredHeaderHeight:I

    return v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/control/PullToRefreshListView;Z)V
    .registers 2

    .prologue
    .line 88
    iput-boolean p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->hasResetHeader:Z

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/control/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/control/PullToRefreshListView;)Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->scrollbarEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/control/PullToRefreshListView;I)V
    .registers 2

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setHeaderPadding(I)V

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/control/PullToRefreshListView;)Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->bounceBackHeader:Z

    return v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/control/PullToRefreshListView;Z)V
    .registers 2

    .prologue
    .line 86
    iput-boolean p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->bounceBackHeader:Z

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/control/PullToRefreshListView;)V
    .registers 1

    .prologue
    .line 331
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->bounceBackHeader()V

    return-void
.end method

.method static synthetic access$8(Lic/buzzebeeslib/control/PullToRefreshListView;Lic/buzzebeeslib/control/PullToRefreshListView$State;)V
    .registers 2

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V

    return-void
.end method

.method static synthetic access$9(I)V
    .registers 1

    .prologue
    .line 81
    sput p0, Lic/buzzebeeslib/control/PullToRefreshListView;->measuredHeaderHeight:I

    return-void
.end method

.method private bounceBackHeader()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 332
    iget-object v3, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v4, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v3, v4, :cond_48

    iget-object v3, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v9, v3

    .line 334
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

    .line 336
    .local v0, "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 337
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 339
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 340
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fb33333

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 341
    new-instance v1, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;-><init>(Lic/buzzebeeslib/control/PullToRefreshListView;Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 343
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    return-void

    .line 332
    .end local v0    # "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "yTranslate":I
    :cond_48
    iget-object v3, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    neg-int v9, v3

    goto :goto_17
.end method

.method private init()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000

    const/4 v13, 0x0

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 216
    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lic/buzzebeeslib/R$layout;->bz_pull_to_refresh_header:I

    invoke-virtual {v0, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    .line 217
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    sget v5, Lic/buzzebeeslib/R$id;->header:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    sget v5, Lic/buzzebeeslib/R$id;->text:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    sget v5, Lic/buzzebeeslib/R$id;->image:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    sget v5, Lic/buzzebeeslib/R$id;->spinner:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    .line 221
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    sget v5, Lic/buzzebeeslib/R$id;->update:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    .line 223
    const-string v0, "Pull down to refresh..."

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 224
    const-string v0, "Release to refresh..."

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 225
    const-string v0, "Loading..."

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 227
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    .line 228
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 229
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 230
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 232
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 233
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 234
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 235
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 237
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 238
    sget-object v0, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V

    .line 239
    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->scrollbarEnabled:Z

    .line 241
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 242
    .local v12, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;

    invoke-direct {v0, p0, v13}, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lic/buzzebeeslib/control/PullToRefreshListView;Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 244
    new-instance v0, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnItemClickListener;

    invoke-direct {v0, p0, v13}, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnItemClickListener;-><init>(Lic/buzzebeeslib/control/PullToRefreshListView;Lic/buzzebeeslib/control/PullToRefreshListView$PTROnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setUpdateTime()V

    .line 247
    return-void
.end method

.method private resetHeader()V
    .registers 3

    .prologue
    .line 347
    iget v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerPadding:I

    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_17

    .line 348
    :cond_11
    sget-object v0, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V

    .line 357
    :goto_16
    return-void

    .line 352
    :cond_17
    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->bounceBackHeader:Z

    goto :goto_16

    .line 355
    :cond_2b
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_16
.end method

.method private setHeaderPadding(I)V
    .registers 5
    .param p1, "padding"    # I

    .prologue
    const/4 v2, 0x0

    .line 250
    iput p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerPadding:I

    .line 252
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 254
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method

.method private setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V
    .registers 4
    .param p1, "state"    # Lic/buzzebeeslib/control/PullToRefreshListView$State;

    .prologue
    .line 370
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    .line 371
    invoke-static {}, Lic/buzzebeeslib/control/PullToRefreshListView;->$SWITCH_TABLE$ic$buzzebeeslib$control$PullToRefreshListView$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lic/buzzebeeslib/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 397
    :goto_f
    return-void

    .line 375
    :pswitch_10
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 382
    :pswitch_1f
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 387
    :pswitch_2e
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setUiRefreshing()V

    .line 389
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshListener:Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;

    if-nez v0, :cond_3b

    .line 390
    sget-object v0, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V

    goto :goto_f

    .line 392
    :cond_3b
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshListener:Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    goto :goto_f

    .line 371
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
    .line 360
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 364
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setUpdateTime()V

    .line 367
    return-void
.end method


# virtual methods
.method public isRefreshing()Z
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

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
    .line 170
    sget-object v0, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    .line 171
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->resetHeader()V

    .line 172
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 401
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 403
    iget-boolean v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->hasResetHeader:Z

    if-nez v0, :cond_1a

    .line 404
    sget v0, Lic/buzzebeeslib/control/PullToRefreshListView;->measuredHeaderHeight:I

    if-lez v0, :cond_17

    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-eq v0, v1, :cond_17

    .line 405
    sget v0, Lic/buzzebeeslib/control/PullToRefreshListView;->measuredHeaderHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 408
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->hasResetHeader:Z

    .line 410
    :cond_1a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, -0x40800000

    .line 259
    iget-boolean v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v5, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v4, v5, :cond_e

    .line 260
    const/4 v4, 0x1

    .line 328
    :goto_d
    return v4

    .line 263
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 264
    .local v1, "eventAction":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1c

    iget v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1c

    .line 265
    const/4 v1, 0x0

    .line 268
    :cond_1c
    packed-switch v1, :pswitch_data_104

    .line 328
    :cond_1f
    :goto_1f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_d

    .line 270
    :pswitch_24
    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_47

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    .line 272
    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MotionEvent.ACTION_DOWN,1.previousY="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 274
    :cond_47
    iput v6, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    .line 275
    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MotionEvent.ACTION_DOWN,2.previousY="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 280
    :pswitch_60
    iget v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v5, Lic/buzzebeeslib/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-eq v4, v5, :cond_72

    invoke-virtual {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_1f

    .line 282
    :cond_72
    invoke-static {}, Lic/buzzebeeslib/control/PullToRefreshListView;->$SWITCH_TABLE$ic$buzzebeeslib$control$PullToRefreshListView$State()[I

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/PullToRefreshListView$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_10e

    goto :goto_1f

    .line 288
    :pswitch_82
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->resetHeader()V

    goto :goto_1f

    .line 284
    :pswitch_86
    sget-object v4, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-direct {p0, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V

    .line 285
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_1f

    .line 299
    :pswitch_8f
    iget v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1f

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 302
    .local v3, "y":F
    iget v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    sub-float v0, v3, v4

    .line 304
    .local v0, "diff":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_a6

    .line 305
    const v4, 0x3fd9999a

    div-float/2addr v0, v4

    .line 306
    :cond_a6
    iput v3, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->previousY:F

    .line 308
    iget v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerPadding:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 309
    .local v2, "newHeaderPadding":I
    iget-boolean v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    if-nez v4, :cond_c7

    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v5, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v4, v5, :cond_c7

    if-lez v2, :cond_c7

    .line 310
    const/4 v2, 0x0

    .line 313
    :cond_c7
    invoke-direct {p0, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 315
    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v5, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v4, v5, :cond_e7

    iget v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerPadding:I

    if-lez v4, :cond_e7

    .line 316
    sget-object v4, Lic/buzzebeeslib/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-direct {p0, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V

    .line 317
    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 318
    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1f

    .line 319
    :cond_e7
    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v5, Lic/buzzebeeslib/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v4, v5, :cond_1f

    iget v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->headerPadding:I

    if-gez v4, :cond_1f

    .line 320
    sget-object v4, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    invoke-direct {p0, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V

    .line 321
    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 322
    iget-object v4, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1f

    .line 268
    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_24
        :pswitch_60
        :pswitch_8f
    .end packed-switch

    .line 282
    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_82
        :pswitch_86
    .end packed-switch
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 413
    if-eqz p1, :cond_7

    .line 417
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_7
    return-void
.end method

.method public setLockScrollWhileRefreshing(Z)V
    .registers 2
    .param p1, "lockScrollWhileRefreshing"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    .line 151
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .prologue
    .line 122
    .local p1, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 123
    return-void
.end method

.method public setOnRefreshListener(Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;)V
    .registers 2
    .param p1, "onRefreshListener"    # Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 133
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshListener:Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;

    .line 134
    return-void
.end method

.method public setRefreshing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 159
    sget-object v0, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    iput-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    .line 160
    invoke-virtual {p0, v1, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->scrollTo(II)V

    .line 161
    invoke-direct {p0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setUiRefreshing()V

    .line 162
    invoke-direct {p0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 163
    return-void
.end method

.method public setTextPullToRefresh(Ljava/lang/String;)V
    .registers 4
    .param p1, "pullToRefreshText"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_d

    .line 183
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_d
    return-void
.end method

.method public setTextRefreshing(Ljava/lang/String;)V
    .registers 4
    .param p1, "refreshingText"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_d

    .line 209
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_d
    return-void
.end method

.method public setTextReleaseToRefresh(Ljava/lang/String;)V
    .registers 4
    .param p1, "releaseToRefreshText"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v1, Lic/buzzebeeslib/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_d

    .line 196
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_d
    return-void
.end method

.method public setUpdateTime()V
    .registers 6

    .prologue
    .line 424
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 427
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy, HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "formattedDate":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Last Update: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lic/buzzebeeslib/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    .line 432
    return-void
.end method
