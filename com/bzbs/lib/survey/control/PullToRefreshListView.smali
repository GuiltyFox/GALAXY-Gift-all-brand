.class public Lcom/bzbs/lib/survey/control/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static c:I


# instance fields
.field private b:Ljava/lang/String;

.field private d:F

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/view/animation/RotateAnimation;

.field private q:Landroid/view/animation/RotateAnimation;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/AdapterView$OnItemClickListener;

.field private w:Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 55
    const-string/jumbo v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    .line 107
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-string/jumbo v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    .line 112
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string/jumbo v0, "buzzebees.pull"

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b:Ljava/lang/String;

    .line 83
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    .line 117
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c()V

    .line 118
    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    .prologue
    .line 53
    sput p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c:I

    return p0
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    return-object v0
.end method

.method private a(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V
    .registers 4

    .prologue
    .line 365
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .line 366
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;->a:[I

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 392
    :goto_d
    return-void

    .line 370
    :pswitch_e
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->u:Landroid/widget/TextView;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 377
    :pswitch_1d
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->u:Landroid/widget/TextView;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 382
    :pswitch_2c
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->f()V

    .line 384
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->w:Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;

    if-nez v0, :cond_39

    .line 385
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    goto :goto_d

    .line 387
    :cond_39
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->w:Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$OnRefreshListener;->a()V

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

.method static synthetic a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;I)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Z)Z
    .registers 2

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->g:Z

    return p1
.end method

.method static synthetic b()I
    .registers 1

    .prologue
    .line 53
    sget v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c:I

    return v0
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Z)Z
    .registers 2

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->i:Z

    return p1
.end method

.method private c()V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v12, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

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

    invoke-virtual {v0, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->n:Landroid/widget/LinearLayout;

    .line 217
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->n:Landroid/widget/LinearLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->header:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->text:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->t:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->image:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->r:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->spinner:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->s:Landroid/widget/ProgressBar;

    .line 221
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    sget v5, Lcom/bzbs/lib/survey/R$id;->update:I

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->u:Landroid/widget/TextView;

    .line 223
    const-string/jumbo v0, "Pull down to refresh..."

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->j:Ljava/lang/String;

    .line 224
    const-string/jumbo v0, "Release to refresh..."

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->k:Ljava/lang/String;

    .line 225
    const-string/jumbo v0, "Loading..."

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->l:Ljava/lang/String;

    .line 227
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->p:Landroid/view/animation/RotateAnimation;

    .line 228
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->p:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 229
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->p:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 230
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->p:Landroid/view/animation/RotateAnimation;

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

    iput-object v5, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->q:Landroid/view/animation/RotateAnimation;

    .line 233
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->q:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 234
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->q:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 235
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->q:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 237
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 238
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 239
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->f:Z

    .line 241
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;

    invoke-direct {v1, p0, v12}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 244
    new-instance v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;

    invoke-direct {v0, p0, v12}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a()V

    .line 247
    return-void
.end method

.method static synthetic c(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v3, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v0, v3, :cond_49

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    move v3, v0

    .line 329
    :goto_18
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 331
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 332
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 334
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 335
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fb33333    # 1.4f

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
    :cond_49
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    move v3, v0

    goto :goto_18
.end method

.method private e()V
    .registers 3

    .prologue
    .line 342
    iget v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->e:I

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_17

    .line 343
    :cond_11
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

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

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->g:Z

    goto :goto_16

    .line 350
    :cond_2b
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d()V

    goto :goto_16
.end method

.method static synthetic e(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->g:Z

    return v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->s:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 359
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->u:Landroid/widget/TextView;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a()V

    .line 362
    return-void
.end method

.method static synthetic f(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d()V

    return-void
.end method

.method static synthetic g(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->v:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private setHeaderPadding(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 250
    iput p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->e:I

    .line 252
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 254
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 422
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd/MM/yyyy, HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Last Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a:Ljava/lang/String;

    .line 427
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 7

    .prologue
    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 398
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->i:Z

    if-nez v0, :cond_1a

    .line 399
    sget v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c:I

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-eq v0, v1, :cond_17

    .line 400
    sget v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 403
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->i:Z

    .line 405
    :cond_1a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 259
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->h:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_e

    .line 260
    const/4 v0, 0x1

    .line 323
    :goto_d
    return v0

    .line 263
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_102

    .line 323
    :cond_15
    :goto_15
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d

    .line 265
    :pswitch_1a
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_42

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    .line 267
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MotionEvent.ACTION_DOWN,1.previousY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 269
    :cond_42
    iput v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    .line 270
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MotionEvent.ACTION_DOWN,2.previousY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 275
    :pswitch_60
    iget v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->b:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-eq v0, v1, :cond_72

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_15

    .line 277
    :cond_72
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;->a:[I

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10c

    goto :goto_15

    .line 279
    :pswitch_80
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 280
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d()V

    goto :goto_15

    .line 283
    :pswitch_89
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->e()V

    goto :goto_15

    .line 294
    :pswitch_8d
    iget v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 297
    iget v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    sub-float v0, v1, v0

    .line 299
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_a4

    .line 300
    const v2, 0x3fd9999a    # 1.7f

    div-float/2addr v0, v2

    .line 301
    :cond_a4
    iput v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d:F

    .line 303
    iget v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->e:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 304
    iget-boolean v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->h:Z

    if-nez v1, :cond_c5

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v2, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v1, v2, :cond_c5

    if-lez v0, :cond_c5

    .line 305
    const/4 v0, 0x0

    .line 308
    :cond_c5
    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V

    .line 310
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_e5

    iget v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->e:I

    if-lez v0, :cond_e5

    .line 311
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->b:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 312
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 313
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->p:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_15

    .line 314
    :cond_e5
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->m:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->b:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->e:I

    if-gez v0, :cond_15

    .line 315
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    .line 316
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 317
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->q:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

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

.method public setLockScrollWhileRefreshing(Z)V
    .registers 2

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->h:Z

    .line 151
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->v:Landroid/widget/AdapterView$OnItemClickListener;

    .line 123
    return-void
.end method
