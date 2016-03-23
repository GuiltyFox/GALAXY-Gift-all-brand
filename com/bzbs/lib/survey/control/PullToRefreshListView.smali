.class public Lcom/bzbs/lib/survey/control/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;,
        Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;,
        Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;,
        Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;,
        Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;
    }
.end annotation


# static fields
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

.field private onRefreshListener:Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;

.field private previousY:F

.field private pullToRefreshText:Ljava/lang/String;

.field private refreshingText:Ljava/lang/String;

.field private releaseToRefreshText:Ljava/lang/String;

.field private reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private scrollbarEnabled:Z

.field private spinner:Landroid/widget/ProgressBar;

.field private state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

.field private text:Landroid/widget/TextView;

.field private update:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 55
    const-string/jumbo v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    .line 107
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->init()V

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
    const-string/jumbo v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    .line 112
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->init()V

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
    const-string/jumbo v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    .line 117
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->init()V

    .line 118
    return-void
.end method

.method static synthetic access$1000(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;
    .param p1, "x1"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    return-void
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 53
    sget v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->measuredHeaderHeight:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 53
    sput p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->measuredHeaderHeight:I

    return p0
.end method

.method static synthetic access$1202(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->hasResetHeader:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->scrollbarEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bzbs/lib/survey/control/PullToRefreshListView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader:Z

    return v0
.end method

.method static synthetic access$802(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader:Z

    return p1
.end method

.method static synthetic access$900(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader()V

    return-void
.end method

.method private bounceBackHeader()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 327
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v4, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v3, v4, :cond_48

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v9, v3

    .line 329
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

    .line 331
    .local v0, "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 332
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 334
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 335
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fb33333

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 336
    new-instance v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 338
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 339
    return-void

    .line 327
    .end local v0    # "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "yTranslate":I
    :cond_48
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

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

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/bzbs/lib/survey/R$layout;->bz_pull_to_refresh_header:I

    invoke-virtual {v0, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    .line 217
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->header:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->text:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->image:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->spinner:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    .line 221
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->update:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    .line 223
    const-string/jumbo v0, "Pull down to refresh..."

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 224
    const-string/jumbo v0, "Release to refresh..."

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 225
    const-string/jumbo v0, "Loading..."

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 227
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    .line 228
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 229
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 230
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

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

    iput-object v5, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 233
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 234
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 235
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 237
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 238
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 239
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->scrollbarEnabled:Z

    .line 241
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 242
    .local v12, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;

    invoke-direct {v0, p0, v13}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 244
    new-instance v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;

    invoke-direct {v0, p0, v13}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setUpdateTime()V

    .line 247
    return-void
.end method

.method private resetHeader()V
    .registers 3

    .prologue
    .line 342
    iget v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerPadding:I

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_17

    .line 343
    :cond_11
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 352
    :goto_16
    return-void

    .line 347
    :cond_17
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader:Z

    goto :goto_16

    .line 350
    :cond_2b
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_16
.end method

.method private setHeaderPadding(I)V
    .registers 5
    .param p1, "padding"    # I

    .prologue
    const/4 v2, 0x0

    .line 250
    iput p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerPadding:I

    .line 252
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 254
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method

.method private setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V
    .registers 4
    .param p1, "state"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .line 366
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;->$SwitchMap$com$bzbs$lib$survey$control$PullToRefreshListView$State:[I

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 392
    :goto_d
    return-void

    .line 370
    :pswitch_e
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 377
    :pswitch_1d
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 382
    :pswitch_2c
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setUiRefreshing()V

    .line 384
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->onRefreshListener:Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;

    if-nez v0, :cond_39

    .line 385
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    goto :goto_d

    .line 387
    :cond_39
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->onRefreshListener:Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    goto :goto_d

    .line 366
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_e
        :pswitch_2c
    .end packed-switch
.end method

.method private setUiRefreshing()V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 359
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setUpdateTime()V

    .line 362
    return-void
.end method


# virtual methods
.method public isRefreshing()Z
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

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
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .line 171
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->resetHeader()V

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
    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 398
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->hasResetHeader:Z

    if-nez v0, :cond_1a

    .line 399
    sget v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->measuredHeaderHeight:I

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-eq v0, v1, :cond_17

    .line 400
    sget v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->measuredHeaderHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 403
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->hasResetHeader:Z

    .line 405
    :cond_1a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, -0x40800000

    .line 259
    iget-boolean v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v4, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v3, v4, :cond_e

    .line 260
    const/4 v3, 0x1

    .line 323
    :goto_d
    return v3

    .line 263
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_102

    .line 323
    :cond_15
    :goto_15
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_d

    .line 265
    :pswitch_1a
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_42

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    .line 267
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MotionEvent.ACTION_DOWN,1.previousY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 269
    :cond_42
    iput v5, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    .line 270
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MotionEvent.ACTION_DOWN,2.previousY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 275
    :pswitch_60
    iget v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v4, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-eq v3, v4, :cond_72

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_15

    .line 277
    :cond_72
    sget-object v3, Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;->$SwitchMap$com$bzbs$lib$survey$control$PullToRefreshListView$State:[I

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_10c

    goto :goto_15

    .line 279
    :pswitch_80
    sget-object v3, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v3}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 280
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_15

    .line 283
    :pswitch_89
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->resetHeader()V

    goto :goto_15

    .line 294
    :pswitch_8d
    iget v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_15

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 297
    .local v2, "y":F
    iget v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    sub-float v0, v2, v3

    .line 299
    .local v0, "diff":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_a4

    .line 300
    const v3, 0x3fd9999a

    div-float/2addr v0, v3

    .line 301
    :cond_a4
    iput v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->previousY:F

    .line 303
    iget v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerPadding:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 304
    .local v1, "newHeaderPadding":I
    iget-boolean v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    if-nez v3, :cond_c5

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v4, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v3, v4, :cond_c5

    if-lez v1, :cond_c5

    .line 305
    const/4 v1, 0x0

    .line 308
    :cond_c5
    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 310
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v4, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v3, v4, :cond_e5

    iget v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerPadding:I

    if-lez v3, :cond_e5

    .line 311
    sget-object v3, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v3}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 312
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 313
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_15

    .line 314
    :cond_e5
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v4, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v3, v4, :cond_15

    iget v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerPadding:I

    if-gez v3, :cond_15

    .line 315
    sget-object v3, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v3}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 316
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 317
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_15

    .line 263
    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_60
        :pswitch_8d
    .end packed-switch

    .line 277
    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_80
        :pswitch_89
    .end packed-switch
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 408
    if-eqz p1, :cond_7

    .line 412
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->update:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :cond_7
    return-void
.end method

.method public setLockScrollWhileRefreshing(Z)V
    .registers 2
    .param p1, "lockScrollWhileRefreshing"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    .line 151
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 123
    return-void
.end method

.method public setOnRefreshListener(Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;)V
    .registers 2
    .param p1, "onRefreshListener"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->onRefreshListener:Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;

    .line 134
    return-void
.end method

.method public setRefreshing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 159
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .line 160
    invoke-virtual {p0, v1, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->scrollTo(II)V

    .line 161
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setUiRefreshing()V

    .line 162
    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 163
    return-void
.end method

.method public setTextPullToRefresh(Ljava/lang/String;)V
    .registers 4
    .param p1, "pullToRefreshText"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_d

    .line 183
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->text:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_d

    .line 209
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->text:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_d

    .line 196
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_d
    return-void
.end method

.method public setUpdateTime()V
    .registers 6

    .prologue
    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 422
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd/MM/yyyy, HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "formattedDate":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Last Update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->gLastUpdate:Ljava/lang/String;

    .line 427
    return-void
.end method
