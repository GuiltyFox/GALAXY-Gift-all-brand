.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final x:[I


# instance fields
.field private A:F

.field private B:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field private G:Landroid/view/animation/Animation;

.field private H:F

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private M:Landroid/view/animation/Animation$AnimationListener;

.field private final N:Landroid/view/animation/Animation;

.field private final O:Landroid/view/animation/Animation;

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

.field private q:F

.field private r:F

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private final w:Landroid/view/animation/DecelerateInterpolator;

.field private y:Landroid/support/v4/widget/CircleImageView;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 78
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 108
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 116
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:[I

    .line 117
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    .line 126
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    .line 139
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    .line 170
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation$AnimationListener;

    .line 1110
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    .line 1134
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    .line 317
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    .line 319
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    .line 322
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 323
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/DecelerateInterpolator;

    .line 325
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 327
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 330
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    .line 332
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()V

    .line 333
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/ViewGroup;Z)V

    .line 335
    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    .line 336
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 337
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 339
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 340
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 342
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    .line 343
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(F)V

    .line 344
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    return p1
.end method

.method private a(II)Landroid/view/animation/Animation;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 498
    :goto_b
    return-object v0

    .line 486
    :cond_c
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 493
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 495
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 496
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 497
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    .line 498
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

    .line 912
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Z)V

    .line 913
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v0, p1, v0

    .line 915
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 916
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

    .line 917
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    sub-float v3, v0, v3

    .line 918
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    if-eqz v0, :cond_d9

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 920
    :goto_43
    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 922
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

    .line 924
    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    .line 926
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    .line 928
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_73

    .line 929
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 931
    :cond_73
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-nez v1, :cond_81

    .line 932
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 933
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 936
    :cond_81
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-eqz v1, :cond_90

    .line 937
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v1, p1, v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 939
    :cond_90
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_dd

    .line 940
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    if-le v1, v4, :cond_ab

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    .line 941
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 943
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->e()V

    .line 951
    :cond_ab
    :goto_ab
    mul-float v1, v2, v13

    .line 952
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v12, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FF)V

    .line 953
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(F)V

    .line 955
    const/high16 v1, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 956
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->b(F)V

    .line 957
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 958
    return-void

    .line 918
    :cond_d9
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    goto/16 :goto_43

    .line 946
    :cond_dd
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_ab

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 948
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f()V

    goto :goto_ab
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1082
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1083
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1084
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1085
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1086
    if-eqz p2, :cond_1c

    .line 1087
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1089
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1090
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1091
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 1175
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1176
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1177
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    if-ne v1, v2, :cond_15

    .line 1180
    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 1181
    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    .line 1183
    :cond_15
    return-void

    .line 1180
    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 417
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 419
    :cond_13
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    .line 425
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 426
    if-eqz p1, :cond_29

    .line 427
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 429
    :cond_29
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 430
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    return v0
.end method

.method private a(Landroid/view/animation/Animation;)Z
    .registers 3

    .prologue
    .line 908
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
    .line 66
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->stop()V

    .line 200
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 201
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 203
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-eqz v0, :cond_27

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 209
    :goto_1e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    .line 210
    return-void

    .line 206
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

    .line 961
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 962
    invoke-direct {p0, v3, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 991
    :goto_c
    return-void

    .line 965
    :cond_d
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 966
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FF)V

    .line 967
    const/4 v0, 0x0

    .line 968
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-nez v1, :cond_1e

    .line 969
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 988
    :cond_1e
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 989
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Z)V

    goto :goto_c
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1094
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-eqz v0, :cond_8

    .line 1096
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1108
    :goto_7
    return-void

    .line 1098
    :cond_8
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1099
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1100
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1101
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1102
    if-eqz p2, :cond_24

    .line 1103
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1105
    :cond_24
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1106
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->d(F)V

    return-void
.end method

.method private b(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    .prologue
    .line 460
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    .line 466
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 467
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 468
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 469
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    const v2, -0x50506

    .line 363
    new-instance v0, Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    .line 364
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 365
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->b(I)V

    .line 366
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method private c(F)V
    .registers 4

    .prologue
    .line 1073
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    sub-float v0, p1, v0

    .line 1074
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-nez v0, :cond_21

    .line 1075
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:F

    .line 1076
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    .line 1077
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 1079
    :cond_21
    return-void
.end method

.method private c(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1143
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1144
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1145
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:F

    .line 1149
    :goto_11
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    .line 1157
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1158
    if-eqz p2, :cond_26

    .line 1159
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1161
    :cond_26
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1162
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1163
    return-void

    .line 1147
    :cond_33
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:F

    goto :goto_11
.end method

.method static synthetic c(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-object v0
.end method

.method private d(F)V
    .registers 5

    .prologue
    .line 1128
    .line 1129
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1130
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1131
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 1132
    return-void
.end method

.method private d()Z
    .registers 3

    .prologue
    .line 383
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
    .line 66
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    .line 474
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 477
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    .line 478
    return-void
.end method

.method static synthetic f(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_19

    .line 576
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 577
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 578
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 579
    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 584
    :cond_19
    return-void

    .line 576
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method static synthetic g(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    return v0
.end method

.method static synthetic h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    return v0
.end method

.method static synthetic j(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:F

    return v0
.end method

.method private setAnimationProgress(F)V
    .registers 3

    .prologue
    .line 438
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 439
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 444
    :goto_d
    return-void

    .line 441
    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 442
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    goto :goto_d
.end method

.method private setColorViewAlpha(I)V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 229
    return-void
.end method

.method private setRefreshing(ZZ)V
    .registers 5

    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_16

    .line 448
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    .line 449
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 450
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 451
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eqz v0, :cond_17

    .line 452
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 457
    :cond_16
    :goto_16
    return-void

    .line 454
    :cond_17
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_16
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .registers 5

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    .line 1167
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 1168
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    .line 1169
    if-eqz p2, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1d

    .line 1170
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 1172
    :cond_1d
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .registers 2

    .prologue
    .line 376
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 377
    return-void
.end method

.method public a()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 660
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v0, :cond_10

    .line 661
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v0

    .line 673
    :goto_f
    return v0

    .line 663
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_51

    .line 664
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_3e

    .line 665
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 666
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3c

    .line 667
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_3a

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 668
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_3c

    :cond_3a
    move v0, v1

    goto :goto_f

    :cond_3c
    move v0, v2

    goto :goto_f

    .line 670
    :cond_3e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4f

    :cond_4e
    move v2, v1

    :cond_4f
    move v0, v2

    goto :goto_f

    .line 673
    :cond_51
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_f
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .prologue
    .line 899
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .prologue
    .line 904
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .prologue
    .line 881
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .prologue
    .line 875
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
    .line 348
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    if-gez v0, :cond_5

    .line 358
    :cond_4
    :goto_4
    return p2

    .line 350
    :cond_5
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_c

    .line 352
    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    goto :goto_4

    .line 353
    :cond_c
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    if-lt p2, v0, :cond_4

    .line 355
    add-int/lit8 p2, p2, 0x1

    goto :goto_4
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .prologue
    .line 809
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->a()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .registers 2

    .prologue
    .line 652
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->b()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->a()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 223
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 224
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 688
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 690
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 693
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v2, :cond_11

    if-nez v1, :cond_11

    .line 694
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    .line 697
    :cond_11
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-nez v2, :cond_29

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v2

    if-nez v2, :cond_29

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-nez v2, :cond_29

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    if-eqz v2, :cond_2a

    .line 741
    :cond_29
    :goto_29
    return v0

    .line 703
    :cond_2a
    packed-switch v1, :pswitch_data_7a

    .line 741
    :goto_2d
    :pswitch_2d
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    goto :goto_29

    .line 705
    :pswitch_30
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 706
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    .line 707
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    .line 709
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 710
    if-ltz v1, :cond_29

    .line 713
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    goto :goto_2d

    .line 717
    :pswitch_54
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    if-ne v1, v3, :cond_61

    .line 718
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 722
    :cond_61
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 723
    if-ltz v1, :cond_29

    .line 726
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 727
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    goto :goto_2d

    .line 731
    :pswitch_71
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_2d

    .line 736
    :pswitch_75
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    .line 737
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    goto :goto_2d

    .line 703
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_30
        :pswitch_75
        :pswitch_54
        :pswitch_75
        :pswitch_2d
        :pswitch_2d
        :pswitch_71
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    .line 598
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    .line 599
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 618
    :cond_e
    :goto_e
    return-void

    .line 602
    :cond_f
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v2, :cond_16

    .line 603
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 605
    :cond_16
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 608
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 609
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    .line 610
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    .line 611
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 612
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 613
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 614
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v1

    .line 615
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v2

    .line 616
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

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

    .line 622
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 623
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_c

    .line 624
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 626
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_11

    .line 643
    :cond_10
    :goto_10
    return-void

    .line 629
    :cond_11
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 630
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 629
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 632
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 631
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 629
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 633
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    .line 634
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 633
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    .line 635
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    .line 637
    const/4 v0, 0x0

    :goto_4f
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 638
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    if-ne v1, v2, :cond_60

    .line 639
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    goto :goto_10

    .line 637
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    .prologue
    .line 894
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    .prologue
    .line 888
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

    .line 779
    if-lez p3, :cond_20

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_20

    .line 780
    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5d

    .line 781
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    .line 782
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 787
    :goto_1b
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 794
    :cond_20
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    if-eqz v0, :cond_3d

    if-lez p3, :cond_3d

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3d

    aget v0, p4, v4

    sub-int v0, p3, v0

    .line 795
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_3d

    .line 796
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 800
    :cond_3d
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:[I

    .line 801
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 802
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 803
    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    .line 805
    :cond_5c
    return-void

    .line 784
    :cond_5d
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 785
    aput p3, p4, v4

    goto :goto_1b
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .prologue
    .line 830
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 838
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p5

    .line 839
    if-gez v0, :cond_27

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-nez v1, :cond_27

    .line 840
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 841
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 843
    :cond_27
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 770
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 771
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    .line 773
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

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

    .line 814
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->a(Landroid/view/View;)V

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    .line 818
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    .line 819
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    .line 820
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 823
    :cond_16
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 824
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 995
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 998
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v2, :cond_f

    if-nez v1, :cond_f

    .line 999
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    .line 1002
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-nez v2, :cond_27

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v2

    if-nez v2, :cond_27

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-nez v2, :cond_27

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    if-eqz v2, :cond_28

    .line 1069
    :cond_27
    :goto_27
    :pswitch_27
    return v0

    .line 1008
    :cond_28
    packed-switch v1, :pswitch_data_a0

    .line 1069
    :cond_2b
    :goto_2b
    :pswitch_2b
    const/4 v0, 0x1

    goto :goto_27

    .line 1010
    :pswitch_2d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    .line 1011
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    goto :goto_2b

    .line 1015
    :pswitch_36
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1016
    if-gez v1, :cond_47

    .line 1017
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1021
    :cond_47
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1022
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    .line 1024
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-eqz v2, :cond_2b

    .line 1025
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 1026
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_27

    .line 1027
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    goto :goto_2b

    .line 1035
    :pswitch_5f
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1036
    if-gez v1, :cond_6e

    .line 1037
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1041
    :cond_6e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    goto :goto_2b

    .line 1046
    :pswitch_75
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_2b

    .line 1050
    :pswitch_79
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1051
    if-gez v1, :cond_8a

    .line 1052
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1056
    :cond_8a
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-eqz v2, :cond_9b

    .line 1057
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1058
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 1059
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    .line 1060
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    .line 1062
    :cond_9b
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:I

    goto :goto_27

    .line 1008
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_79
        :pswitch_36
        :pswitch_27
        :pswitch_2b
        :pswitch_5f
        :pswitch_75
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .prologue
    .line 749
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

    .line 750
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->C(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 755
    :cond_18
    :goto_18
    return-void

    .line 753
    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_18
.end method

.method public varargs setColorScheme([I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 534
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3

    .prologue
    .line 560
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->g()V

    .line 561
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a([I)V

    .line 562
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .registers 6

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 545
    array-length v0, p1

    new-array v2, v0, [I

    .line 546
    const/4 v0, 0x0

    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_16

    .line 547
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 549
    :cond_16
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 550
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .registers 3

    .prologue
    .line 592
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 593
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 215
    if-nez p1, :cond_8

    .line 216
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 218
    :cond_8
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .prologue
    .line 849
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(Z)V

    .line 850
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 507
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .registers 3

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 525
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->b(I)V

    .line 526
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .registers 3

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 516
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .registers 4

    .prologue
    .line 273
    int-to-float v0, p2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    .line 274
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    .line 275
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 276
    return-void
.end method

.method public setRefreshing(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 393
    if-eqz p1, :cond_27

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_27

    .line 395
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 397
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    if-nez v0, :cond_23

    .line 398
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 402
    :goto_14
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 404
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    .line 405
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 409
    :goto_22
    return-void

    .line 400
    :cond_23
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    float-to-int v0, v0

    goto :goto_14

    .line 407
    :cond_27
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_22
.end method

.method public setSize(I)V
    .registers 4

    .prologue
    .line 282
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 297
    :goto_5
    return-void

    .line 285
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 286
    if-nez p1, :cond_2b

    .line 287
    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    .line 294
    :goto_18
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(I)V

    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 289
    :cond_2b
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    goto :goto_18
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .prologue
    .line 859
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->c()V

    .line 865
    return-void
.end method
