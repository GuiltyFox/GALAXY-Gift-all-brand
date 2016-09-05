.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final y:[I


# instance fields
.field private A:I

.field private B:F

.field private C:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field private G:Landroid/view/animation/Animation;

.field private H:Landroid/view/animation/Animation;

.field private I:F

.field private J:Z

.field private K:I

.field private L:I

.field private M:Z

.field private N:Landroid/view/animation/Animation$AnimationListener;

.field private final O:Landroid/view/animation/Animation;

.field private final P:Landroid/view/animation/Animation;

.field protected a:I

.field protected b:I

.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private f:Z

.field private g:I

.field private h:F

.field private i:F

.field private final j:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final k:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final l:[I

.field private final m:[I

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:F

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private final x:Landroid/view/animation/DecelerateInterpolator;

.field private z:Landroid/support/v4/widget/CircleImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v1, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 104
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 112
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:[I

    .line 113
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    .line 119
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    .line 124
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    .line 137
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    .line 168
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation$AnimationListener;

    .line 1080
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    .line 1104
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->P:Landroid/view/animation/Animation;

    .line 301
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    .line 303
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    .line 306
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 307
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/view/animation/DecelerateInterpolator;

    .line 309
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 310
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 311
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 313
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 314
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:I

    .line 315
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:I

    .line 317
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()V

    .line 318
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/ViewGroup;Z)V

    .line 320
    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:F

    .line 321
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:F

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 322
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 324
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 325
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 326
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)F
    .registers 4

    .prologue
    .line 723
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 724
    if-gez v0, :cond_9

    .line 725
    const/high16 v0, -0x40800000    # -1.0f

    .line 727
    :goto_8
    return v0

    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_8
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .registers 2

    .prologue
    .line 64
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    return p1
.end method

.method private a(II)Landroid/view/animation/Animation;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 464
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 480
    :goto_b
    return-object v0

    .line 467
    :cond_c
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 475
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 477
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 478
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 479
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    .line 480
    goto :goto_b
.end method

.method private a(F)V
    .registers 16

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 897
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Z)V

    .line 898
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v0, p1, v0

    .line 900
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 901
    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    .line 902
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    sub-float v3, v0, v3

    .line 903
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Z

    if-eqz v0, :cond_d9

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:F

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 905
    :goto_43
    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 907
    div-float v4, v3, v6

    float-to-double v4, v4

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v3, v11

    .line 909
    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    .line 911
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    .line 913
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_73

    .line 914
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 916
    :cond_73
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-nez v1, :cond_81

    .line 917
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 918
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 921
    :cond_81
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v1, :cond_90

    .line 922
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v1, p1, v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 924
    :cond_90
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_dd

    .line 925
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    if-le v1, v4, :cond_ab

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 928
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->e()V

    .line 936
    :cond_ab
    :goto_ab
    mul-float v1, v2, v13

    .line 937
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v12, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FF)V

    .line 938
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(F)V

    .line 940
    const/high16 v1, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 941
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->b(F)V

    .line 942
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 943
    return-void

    .line 903
    :cond_d9
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:F

    goto/16 :goto_43

    .line 931
    :cond_dd
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_ab

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 933
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f()V

    goto :goto_ab
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1052
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1053
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1054
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1055
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1056
    if-eqz p2, :cond_1c

    .line 1057
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1059
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1060
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1061
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 1145
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1146
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1147
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    if-ne v1, v2, :cond_15

    .line 1150
    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 1151
    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    .line 1153
    :cond_15
    return-void

    .line 1150
    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 398
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 400
    :cond_13
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    .line 406
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 407
    if-eqz p1, :cond_29

    .line 408
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 410
    :cond_29
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 411
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    return v0
.end method

.method private a(Landroid/view/animation/Animation;)Z
    .registers 3

    .prologue
    .line 893
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 197
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->stop()V

    .line 198
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 199
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 201
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v0, :cond_27

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 207
    :goto_1e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    .line 208
    return-void

    .line 204
    :cond_27
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto :goto_1e
.end method

.method private b(F)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 946
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 947
    invoke-direct {p0, v3, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 976
    :goto_c
    return-void

    .line 950
    :cond_d
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 951
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FF)V

    .line 952
    const/4 v0, 0x0

    .line 953
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-nez v1, :cond_1e

    .line 954
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 973
    :cond_1e
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 974
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Z)V

    goto :goto_c
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1064
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v0, :cond_8

    .line 1066
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1078
    :goto_7
    return-void

    .line 1068
    :cond_8
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1069
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->P:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1070
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->P:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1071
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->P:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1072
    if-eqz p2, :cond_24

    .line 1073
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1075
    :cond_24
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1076
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->P:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    return-void
.end method

.method private b(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    .prologue
    .line 441
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    .line 447
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 448
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 449
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 450
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 451
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    const v3, -0x50506

    .line 344
    new-instance v0, Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    .line 345
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 346
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->b(I)V

    .line 347
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 350
    return-void
.end method

.method private c(F)V
    .registers 5

    .prologue
    .line 1098
    .line 1099
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1100
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1101
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 1102
    return-void
.end method

.method private c(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1113
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1114
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1115
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:F

    .line 1119
    :goto_11
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Landroid/view/animation/Animation;

    .line 1127
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1128
    if-eqz p2, :cond_26

    .line 1129
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1131
    :cond_26
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1132
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1133
    return-void

    .line 1117
    :cond_33
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:F

    goto :goto_11
.end method

.method static synthetic c(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-object v0
.end method

.method private d()Z
    .registers 3

    .prologue
    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    .line 455
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    .line 459
    return-void
.end method

.method static synthetic f(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 558
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_19

    .line 559
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 560
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 561
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 562
    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 567
    :cond_19
    return-void

    .line 559
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method static synthetic g(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    return v0
.end method

.method static synthetic h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:F

    return v0
.end method

.method static synthetic j(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:F

    return v0
.end method

.method private setAnimationProgress(F)V
    .registers 3

    .prologue
    .line 419
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 420
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 425
    :goto_d
    return-void

    .line 422
    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 423
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    goto :goto_d
.end method

.method private setColorViewAlpha(I)V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 219
    return-void
.end method

.method private setRefreshing(ZZ)V
    .registers 5

    .prologue
    .line 428
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_16

    .line 429
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Z

    .line 430
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 431
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 432
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eqz v0, :cond_17

    .line 433
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 438
    :cond_16
    :goto_16
    return-void

    .line 435
    :cond_17
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_16
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .registers 5

    .prologue
    .line 1136
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    .line 1137
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->offsetTopAndBottom(I)V

    .line 1138
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    .line 1139
    if-eqz p2, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1d

    .line 1140
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 1142
    :cond_1d
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 358
    return-void
.end method

.method public a()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 648
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_44

    .line 649
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_31

    .line 650
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 651
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2f

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_2d

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_2f

    :cond_2d
    move v0, v1

    .line 658
    :goto_2e
    return v0

    :cond_2f
    move v0, v2

    .line 651
    goto :goto_2e

    .line 655
    :cond_31
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_42

    :cond_41
    move v2, v1

    :cond_42
    move v0, v2

    goto :goto_2e

    .line 658
    :cond_44
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_2e
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .prologue
    .line 884
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .prologue
    .line 889
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .prologue
    .line 867
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .prologue
    .line 861
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    .prologue
    .line 329
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    if-gez v0, :cond_5

    .line 339
    :cond_4
    :goto_4
    return p2

    .line 331
    :cond_5
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_c

    .line 333
    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    goto :goto_4

    .line 334
    :cond_c
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    if-lt p2, v0, :cond_4

    .line 336
    add-int/lit8 p2, p2, 0x1

    goto :goto_4
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .prologue
    .line 795
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->a()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->b()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->a()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 213
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 214
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 664
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 666
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 668
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Z

    if-eqz v2, :cond_14

    if-nez v1, :cond_14

    .line 669
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Z

    .line 672
    :cond_14
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Z

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    if-eqz v2, :cond_2d

    .line 719
    :cond_2c
    :goto_2c
    return v0

    .line 678
    :cond_2d
    packed-switch v1, :pswitch_data_96

    .line 719
    :cond_30
    :goto_30
    :pswitch_30
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    goto :goto_2c

    .line 680
    :pswitch_33
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 681
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    .line 682
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    .line 683
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 684
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_2c

    .line 687
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:F

    goto :goto_30

    .line 691
    :pswitch_54
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    if-ne v1, v4, :cond_61

    .line 692
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 696
    :cond_61
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 697
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_2c

    .line 700
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:F

    sub-float v0, v1, v0

    .line 701
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-nez v0, :cond_30

    .line 702
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    .line 703
    iput-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    .line 704
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_30

    .line 709
    :pswitch_8c
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_30

    .line 714
    :pswitch_90
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    .line 715
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    goto :goto_30

    .line 678
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_33
        :pswitch_90
        :pswitch_54
        :pswitch_90
        :pswitch_30
        :pswitch_30
        :pswitch_8c
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    .line 581
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    .line 582
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 601
    :cond_e
    :goto_e
    return-void

    .line 585
    :cond_f
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v2, :cond_16

    .line 586
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 588
    :cond_16
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 591
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 592
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    .line 593
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    .line 594
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 595
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 596
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 597
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v1

    .line 598
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v2

    .line 599
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    goto :goto_e
.end method

.method public onMeasure(II)V
    .registers 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 605
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 606
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_c

    .line 607
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 609
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_11

    .line 630
    :cond_10
    :goto_10
    return-void

    .line 612
    :cond_11
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 616
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    .line 618
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Z

    if-nez v0, :cond_61

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    if-nez v0, :cond_61

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    .line 620
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    .line 622
    :cond_61
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    .line 624
    const/4 v0, 0x0

    :goto_65
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 625
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    if-ne v1, v2, :cond_76

    .line 626
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:I

    goto :goto_10

    .line 624
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_65
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    .prologue
    .line 879
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    .prologue
    .line 873
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 765
    if-lez p3, :cond_20

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_20

    .line 766
    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5d

    .line 767
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    .line 768
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 773
    :goto_1b
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 780
    :cond_20
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Z

    if-eqz v0, :cond_3d

    if-lez p3, :cond_3d

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3d

    aget v0, p4, v4

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_3d

    .line 782
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 786
    :cond_3d
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:[I

    .line 787
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 788
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 789
    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    .line 791
    :cond_5c
    return-void

    .line 770
    :cond_5d
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 771
    aput p3, p4, v4

    goto :goto_1b
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .prologue
    .line 816
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 824
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p5

    .line 825
    if-gez v0, :cond_27

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-nez v1, :cond_27

    .line 826
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 827
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 829
    :cond_27
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 754
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 756
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    .line 759
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-nez v0, :cond_14

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 800
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->a(Landroid/view/View;)V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    .line 804
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    .line 805
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    .line 806
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 809
    :cond_16
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 810
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 980
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 983
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Z

    if-eqz v2, :cond_f

    if-nez v1, :cond_f

    .line 984
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Z

    .line 987
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Z

    if-nez v2, :cond_23

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v2

    if-nez v2, :cond_23

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    if-eqz v2, :cond_24

    .line 1048
    :cond_23
    :goto_23
    :pswitch_23
    return v0

    .line 992
    :cond_24
    packed-switch v1, :pswitch_data_94

    .line 1048
    :cond_27
    :goto_27
    :pswitch_27
    const/4 v0, 0x1

    goto :goto_23

    .line 994
    :pswitch_29
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    .line 995
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    goto :goto_27

    .line 999
    :pswitch_32
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1000
    if-gez v1, :cond_43

    .line 1001
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1005
    :cond_43
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1006
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 1007
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-eqz v2, :cond_27

    .line 1008
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_23

    .line 1009
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    goto :goto_27

    .line 1017
    :pswitch_58
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1018
    if-gez v1, :cond_67

    .line 1019
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1022
    :cond_67
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    goto :goto_27

    .line 1027
    :pswitch_6e
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_27

    .line 1031
    :pswitch_72
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1032
    if-gez v1, :cond_83

    .line 1033
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1037
    :cond_83
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1038
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 1039
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    .line 1040
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    .line 1041
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    goto :goto_23

    .line 992
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_29
        :pswitch_72
        :pswitch_32
        :pswitch_23
        :pswitch_27
        :pswitch_58
        :pswitch_6e
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .prologue
    .line 735
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->C(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 741
    :cond_18
    :goto_18
    return-void

    .line 739
    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_18
.end method

.method public varargs setColorScheme([I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 516
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3

    .prologue
    .line 543
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 544
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a([I)V

    .line 545
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .registers 6

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 527
    array-length v0, p1

    new-array v2, v0, [I

    .line 528
    const/4 v0, 0x0

    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_16

    .line 529
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 531
    :cond_16
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 532
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .registers 3

    .prologue
    .line 575
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 576
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .prologue
    .line 835
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(Z)V

    .line 836
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 489
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .registers 3

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 507
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->b(I)V

    .line 508
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .registers 3

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 498
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .registers 4

    .prologue
    .line 257
    int-to-float v0, p2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:F

    .line 258
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    .line 259
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 260
    return-void
.end method

.method public setRefreshing(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 374
    if-eqz p1, :cond_27

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_27

    .line 376
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 378
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Z

    if-nez v0, :cond_23

    .line 379
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 383
    :goto_14
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 385
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Z

    .line 386
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 390
    :goto_22
    return-void

    .line 381
    :cond_23
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:F

    float-to-int v0, v0

    goto :goto_14

    .line 388
    :cond_27
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_22
.end method

.method public setSize(I)V
    .registers 4

    .prologue
    .line 266
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 281
    :goto_5
    return-void

    .line 269
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 270
    if-nez p1, :cond_2d

    .line 271
    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:I

    .line 278
    :goto_1a
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(I)V

    .line 280
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 273
    :cond_2d
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:I

    goto :goto_1a
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 850
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->c()V

    .line 851
    return-void
.end method
