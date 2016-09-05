.class public abstract Lit/sephiroth/android/library/widget/AbsHListView;
.super Lit/sephiroth/android/library/widget/AdapterView;
.source "AbsHListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final T:Landroid/view/animation/Interpolator;

.field public static final U:[I


# instance fields
.field protected A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field protected F:I

.field G:I

.field H:I

.field protected I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

.field protected J:I

.field protected K:Z

.field L:Z

.field protected M:I

.field protected N:I

.field protected O:Ljava/lang/Runnable;

.field protected final P:[Z

.field Q:I

.field R:I

.field protected S:Z

.field a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

.field private aA:I

.field private aB:Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;

.field private aC:Ljava/lang/Runnable;

.field private aD:Lit/sephiroth/android/library/widget/AbsHListView$CheckForKeyLongPress;

.field private aE:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

.field private aF:Ljava/lang/Runnable;

.field private aG:I

.field private aH:I

.field private aI:Z

.field private aJ:I

.field private aK:I

.field private aL:Ljava/lang/Runnable;

.field private aM:I

.field private aN:I

.field private aO:F

.field private aP:I

.field private aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

.field private aR:Lit/sephiroth/android/library/widget/EdgeEffect;

.field private aS:I

.field private aT:I

.field private aU:I

.field private aV:Z

.field private aW:I

.field private aX:I

.field private aY:Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;

.field private aZ:I

.field private au:Landroid/view/VelocityTracker;

.field private av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

.field private aw:Lit/sephiroth/android/library/widget/AbsHListView$OnScrollListener;

.field private ax:Z

.field private ay:Landroid/graphics/Rect;

.field private az:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected b:I

.field private ba:I

.field private bb:I

.field private bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

.field private bd:F

.field public c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:I

.field protected f:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected h:I

.field protected i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

.field protected j:Landroid/widget/ListAdapter;

.field k:Z

.field l:Z

.field m:Landroid/graphics/drawable/Drawable;

.field n:I

.field protected o:Landroid/graphics/Rect;

.field protected final p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

.field q:I

.field r:I

.field s:I

.field t:I

.field protected u:Landroid/graphics/Rect;

.field protected v:I

.field w:Landroid/view/View;

.field x:Landroid/view/View;

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 544
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Landroid/view/animation/Interpolator;

    .line 2286
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 620
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 165
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    .line 199
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 219
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 229
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    .line 239
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    .line 244
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    .line 249
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 254
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 259
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 264
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    .line 269
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:I

    .line 315
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 346
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    .line 371
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    .line 381
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 408
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    .line 453
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    .line 461
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:F

    .line 463
    new-array v0, v3, [Z

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:[Z

    .line 468
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 513
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    .line 621
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->z()V

    .line 622
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 625
    sget v0, Lit/sephiroth/android/library/R$attr;->hlv_absHListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 626
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 629
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    .line 199
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 219
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 229
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 234
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    .line 239
    new-instance v3, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-direct {v3, p0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    .line 244
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    .line 249
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 254
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 259
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 264
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    .line 269
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:I

    .line 315
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 346
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    .line 371
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    .line 381
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 383
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 408
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    .line 453
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    .line 461
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:F

    .line 463
    new-array v3, v1, [Z

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:[Z

    .line 468
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 513
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    .line 635
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->z()V

    .line 637
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 639
    sget-object v4, Lit/sephiroth/android/library/R$styleable;->AbsHListView:[I

    invoke-virtual {v3, p2, v4, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 650
    if-eqz v8, :cond_9a

    .line 651
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 652
    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 653
    const/4 v2, 0x6

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 654
    const/4 v2, 0x2

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 655
    const/4 v2, 0x7

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 656
    const/4 v2, 0x3

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 657
    const/4 v9, 0x5

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 658
    const/4 v9, 0x4

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 659
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 673
    :goto_80
    if-eqz v7, :cond_85

    .line 674
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 677
    :cond_85
    iput-boolean v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 678
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setStackFromRight(Z)V

    .line 679
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 680
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setTranscriptMode(I)V

    .line 681
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 682
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setSmoothScrollbarEnabled(Z)V

    .line 683
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setChoiceMode(I)V

    .line 684
    return-void

    :cond_9a
    move v3, v0

    move v4, v1

    move v5, v0

    move v6, v0

    move-object v7, v2

    move v2, v0

    goto :goto_80
.end method

.method private A()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 983
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 984
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v6

    .line 985
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_35

    const/4 v0, 0x1

    move v2, v0

    :goto_f
    move v4, v3

    .line 986
    :goto_10
    if-ge v4, v6, :cond_4d

    .line 987
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 988
    add-int v1, v5, v4

    .line 990
    instance-of v7, v0, Landroid/widget/Checkable;

    if-eqz v7, :cond_37

    .line 991
    check-cast v0, Landroid/widget/Checkable;

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/support/v4/util/SparseArrayCompat;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 986
    :cond_31
    :goto_31
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_10

    :cond_35
    move v2, v3

    .line 985
    goto :goto_f

    .line 992
    :cond_37
    if-eqz v2, :cond_31

    .line 993
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/support/v4/util/SparseArrayCompat;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_31

    .line 996
    :cond_4d
    return-void
.end method

.method private B()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1071
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 1072
    if-nez v2, :cond_9

    .line 1075
    :cond_8
    :goto_8
    return v0

    .line 1073
    :cond_9
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-eq v2, v3, :cond_f

    move v0, v1

    goto :goto_8

    .line 1075
    :cond_f
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_32

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_8

    :cond_32
    move v0, v1

    goto :goto_8
.end method

.method private C()V
    .registers 3

    .prologue
    .line 1256
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    return-void
.end method

.method private D()V
    .registers 2

    .prologue
    .line 3499
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 3500
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3504
    :goto_a
    return-void

    .line 3502
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private E()V
    .registers 2

    .prologue
    .line 3507
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 3508
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3510
    :cond_a
    return-void
.end method

.method private F()V
    .registers 2

    .prologue
    .line 3513
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 3514
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3515
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3517
    :cond_c
    return-void
.end method

.method private G()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 4515
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4516
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 4517
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4518
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    .line 4520
    :cond_1b
    return-void
.end method

.method private H()V
    .registers 2

    .prologue
    .line 4523
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4524
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    if-nez v0, :cond_13

    .line 4525
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$2;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$2;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    .line 4542
    :cond_13
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->post(Ljava/lang/Runnable;)Z

    .line 4544
    :cond_18
    return-void
.end method

.method private I()V
    .registers 2

    .prologue
    .line 5334
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    if-eqz v0, :cond_e

    .line 5335
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->b()V

    .line 5336
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->b()V

    .line 5338
    :cond_e
    return-void
.end method

.method public static a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 8

    .prologue
    .line 5160
    sparse-switch p2, :sswitch_data_98

    .line 5193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5162
    :sswitch_c
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 5163
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5164
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 5165
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5197
    :goto_23
    sub-int/2addr v1, v3

    .line 5198
    sub-int/2addr v0, v2

    .line 5199
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0

    .line 5168
    :sswitch_29
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5169
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 5170
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5171
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_23

    .line 5174
    :sswitch_41
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 5175
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5176
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 5177
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5178
    goto :goto_23

    .line 5180
    :sswitch_59
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5181
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 5182
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5183
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_23

    .line 5187
    :sswitch_71
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5188
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5189
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5190
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5191
    goto :goto_23

    .line 5160
    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_71
        0x2 -> :sswitch_71
        0x11 -> :sswitch_41
        0x21 -> :sswitch_59
        0x42 -> :sswitch_c
        0x82 -> :sswitch_29
    .end sparse-switch
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static a(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 5844
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5845
    if-lez v3, :cond_2b

    .line 5847
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v3, :cond_22

    .line 5848
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5849
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    iget v1, v1, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    if-ne v1, p1, :cond_1e

    .line 5850
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5856
    :goto_1d
    return-object v0

    .line 5847
    :cond_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 5854
    :cond_22
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1d

    .line 5856
    :cond_2b
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;)Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;

    return-object p1
.end method

.method private a(IIII)V
    .registers 10

    .prologue
    .line 2105
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    sub-int v1, p1, v1

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    sub-int v2, p2, v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    add-int/2addr v3, p3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2107
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 2184
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2185
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    .line 2186
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2187
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2189
    :cond_12
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .registers 11

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    .line 3617
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 3618
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    if-ne v2, v3, :cond_2c

    .line 3622
    if-nez v0, :cond_2d

    const/4 v0, 0x1

    .line 3623
    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3624
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3625
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3626
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3628
    :cond_2c
    return-void

    :cond_2d
    move v0, v1

    .line 3622
    goto :goto_16
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .registers 11

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .registers 11

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    return v0
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic e(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/view/VelocityTracker;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic e(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic f(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:I

    return v0
.end method

.method static synthetic g(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    return v0
.end method

.method private h(I)Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2772
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    sub-int v3, p1, v0

    .line 2773
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2774
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v2

    .line 2775
    :goto_11
    if-nez v0, :cond_17

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    if-le v4, v5, :cond_5e

    .line 2776
    :cond_17
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 2777
    if-eqz v0, :cond_50

    .line 2778
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2779
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 2784
    :goto_21
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2788
    if-eqz v0, :cond_2c

    .line 2789
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2791
    :cond_2c
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2792
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2793
    if-eqz v0, :cond_3d

    .line 2794
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2796
    :cond_3d
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 2799
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2800
    if-eqz v0, :cond_49

    .line 2801
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2803
    :cond_49
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->i(I)V

    move v0, v2

    .line 2807
    :goto_4d
    return v0

    :cond_4e
    move v0, v1

    .line 2774
    goto :goto_11

    .line 2781
    :cond_50
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2782
    if-lez v3, :cond_5a

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    :goto_57
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    goto :goto_21

    :cond_5a
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    neg-int v0, v0

    goto :goto_57

    :cond_5e
    move v0, v1

    .line 2807
    goto :goto_4d
.end method

.method static synthetic h(Lit/sephiroth/android/library/widget/AbsHListView;)Z
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/EdgeEffect;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    return-object v0
.end method

.method private i(I)V
    .registers 16

    .prologue
    const/4 v10, 0x5

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 2811
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    sub-int v12, p1, v0

    .line 2812
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    sub-int v1, v12, v0

    .line 2813
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_bb

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    sub-int v0, p1, v0

    .line 2815
    :goto_16
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v3, v13, :cond_eb

    .line 2817
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eq p1, v3, :cond_ba

    .line 2821
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    if-le v3, v4, :cond_2f

    .line 2822
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2823
    if-eqz v3, :cond_2f

    .line 2824
    invoke-interface {v3, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2829
    :cond_2f
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    if-ltz v3, :cond_be

    .line 2830
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v3, v4

    .line 2838
    :goto_38
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2839
    if-eqz v4, :cond_1b5

    .line 2840
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2845
    :goto_42
    if-eqz v0, :cond_1b2

    .line 2846
    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)Z

    move-result v1

    .line 2850
    :goto_48
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2851
    if-eqz v3, :cond_b8

    .line 2854
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2855
    if-eqz v1, :cond_b6

    .line 2858
    neg-int v0, v0

    sub-int v1, v3, v4

    sub-int v1, v0, v1

    .line 2859
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2860
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v0, v3, :cond_80

    .line 2862
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_80

    .line 2863
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2867
    :cond_80
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    .line 2869
    if-eqz v0, :cond_8e

    if-ne v0, v9, :cond_b6

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 2871
    :cond_8e
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    .line 2872
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2873
    if-lez v12, :cond_c6

    .line 2874
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(F)V

    .line 2875
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->a()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 2876
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->c()V

    .line 2878
    :cond_ad
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    .line 2888
    :cond_b6
    :goto_b6
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 2890
    :cond_b8
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2955
    :cond_ba
    :goto_ba
    return-void

    :cond_bb
    move v0, v1

    .line 2813
    goto/16 :goto_16

    .line 2834
    :cond_be
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_38

    .line 2879
    :cond_c6
    if-gez v12, :cond_b6

    .line 2880
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(F)V

    .line 2881
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->a()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 2882
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->c()V

    .line 2884
    :cond_e1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0, v9}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_b6

    .line 2892
    :cond_eb
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v1, v10, :cond_ba

    .line 2893
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eq p1, v1, :cond_ba

    .line 2894
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    .line 2895
    sub-int v4, v3, v0

    .line 2896
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-le p1, v1, :cond_187

    move v10, v9

    .line 2898
    :goto_fe
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    if-nez v1, :cond_104

    .line 2899
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    .line 2902
    :cond_104
    neg-int v1, v0

    .line 2903
    if-gez v4, :cond_109

    if-gez v3, :cond_10d

    :cond_109
    if-lez v4, :cond_18b

    if-gtz v3, :cond_18b

    .line 2904
    :cond_10d
    neg-int v1, v3

    .line 2905
    add-int/2addr v0, v1

    move v11, v0

    .line 2910
    :goto_110
    if-eqz v1, :cond_152

    .line 2911
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2912
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    .line 2913
    if-eqz v0, :cond_12e

    if-ne v0, v9, :cond_152

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B()Z

    move-result v0

    if-nez v0, :cond_152

    .line 2914
    :cond_12e
    if-lez v12, :cond_18d

    .line 2915
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(F)V

    .line 2916
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->a()Z

    move-result v0

    if-nez v0, :cond_149

    .line 2917
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->c()V

    .line 2919
    :cond_149
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    .line 2930
    :cond_152
    :goto_152
    if-eqz v11, :cond_181

    .line 2932
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_162

    .line 2933
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(I)V

    .line 2934
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->l()V

    .line 2937
    :cond_162
    invoke-virtual {p0, v11, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)Z

    .line 2939
    iput v13, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2943
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->f(I)I

    move-result v0

    .line 2945
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 2946
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2947
    if-eqz v1, :cond_17b

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    :cond_17b
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 2948
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 2949
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 2951
    :cond_181
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2952
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    goto/16 :goto_ba

    .line 2896
    :cond_187
    const/4 v1, -0x1

    move v10, v1

    goto/16 :goto_fe

    :cond_18b
    move v11, v2

    .line 2907
    goto :goto_110

    .line 2920
    :cond_18d
    if-gez v12, :cond_152

    .line 2921
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(F)V

    .line 2922
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->a()Z

    move-result v0

    if-nez v0, :cond_1a8

    .line 2923
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->c()V

    .line 2925
    :cond_1a8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0, v9}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_152

    :cond_1b2
    move v1, v2

    goto/16 :goto_48

    :cond_1b5
    move v4, v2

    goto/16 :goto_42
.end method

.method static synthetic j(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/EdgeEffect;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic k(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    return-void
.end method

.method private z()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 687
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setClickable(Z)V

    .line 688
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setFocusableInTouchMode(Z)V

    .line 689
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setWillNotDraw(Z)V

    .line 690
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 691
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 693
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    .line 695
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    .line 696
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:I

    .line 697
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    .line 698
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    .line 699
    invoke-static {p0}, Lit/sephiroth/android/library/util/ViewHelperFactory;->a(Landroid/view/View;)Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    .line 700
    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 7

    .prologue
    .line 2684
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/graphics/Rect;

    .line 2685
    if-nez v0, :cond_d

    .line 2686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/graphics/Rect;

    .line 2687
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/graphics/Rect;

    .line 2690
    :cond_d
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 2691
    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2f

    .line 2692
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2693
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2c

    .line 2694
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2695
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2696
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v1

    .line 2700
    :goto_2b
    return v0

    .line 2691
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 2700
    :cond_2f
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method protected a(I[Z)Landroid/view/View;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1920
    aput-boolean v3, p2, v3

    .line 1923
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d(I)Landroid/view/View;

    move-result-object v1

    .line 1924
    if-eqz v1, :cond_f

    .line 1988
    :cond_e
    :goto_e
    return-object v1

    .line 1928
    :cond_f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->e(I)Landroid/view/View;

    move-result-object v1

    .line 1931
    if-eqz v1, :cond_71

    .line 1932
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1934
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_2a

    .line 1935
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2a

    .line 1936
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1940
    :cond_2a
    if-eq v0, v1, :cond_6a

    .line 1941
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    .line 1942
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    if-eqz v1, :cond_8e

    .line 1943
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    move-object v1, v0

    .line 1963
    :goto_3b
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    if-eqz v0, :cond_56

    .line 1964
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1966
    if-nez v0, :cond_90

    .line 1967
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 1973
    :goto_4b
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->e:J

    .line 1974
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1977
    :cond_56
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aq:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1978
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aY:Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;

    if-nez v0, :cond_e

    .line 1979
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aY:Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;

    goto :goto_e

    .line 1946
    :cond_6a
    aput-boolean v4, p2, v3

    .line 1947
    invoke-virtual {v0}, Landroid/view/View;->onFinishTemporaryDetach()V

    move-object v1, v0

    goto :goto_3b

    .line 1950
    :cond_71
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1952
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_85

    .line 1953
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_85

    .line 1954
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1958
    :cond_85
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    if-eqz v1, :cond_8e

    .line 1959
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_8e
    move-object v1, v0

    goto :goto_3b

    .line 1968
    :cond_90
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 1969
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    goto :goto_4b

    .line 1971
    :cond_9d
    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    goto :goto_4b
.end method

.method public a(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
    .registers 4

    .prologue
    .line 5231
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_9

    .line 830
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    .line 832
    :cond_9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 833
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->c()V

    .line 835
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 836
    return-void
.end method

.method public a(IIZ)V
    .registers 10

    .prologue
    .line 4453
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 4454
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    .line 4458
    :cond_b
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 4459
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 4460
    add-int v2, v0, v1

    .line 4461
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    .line 4462
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 4464
    if-eqz p1, :cond_49

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-eqz v5, :cond_49

    if-eqz v1, :cond_49

    if-nez v0, :cond_37

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ne v0, v3, :cond_37

    if-ltz p1, :cond_49

    :cond_37
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v2, v0, :cond_58

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ne v0, v4, :cond_58

    if-lez p1, :cond_58

    .line 4468
    :cond_49
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    .line 4469
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v0, :cond_57

    .line 4470
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 4476
    :cond_57
    :goto_57
    return-void

    .line 4473
    :cond_58
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 4474
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a(IIZ)V

    goto :goto_57
.end method

.method protected a(ILandroid/view/View;)V
    .registers 9

    .prologue
    const/4 v5, -0x1

    .line 2083
    if-eq p1, v5, :cond_5

    .line 2084
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 2087
    :cond_5
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    .line 2088
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2089
    instance-of v0, p2, Lit/sephiroth/android/library/widget/AbsHListView$SelectionBoundsAdjuster;

    if-eqz v0, :cond_24

    move-object v0, p2

    .line 2090
    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$SelectionBoundsAdjuster;

    invoke-interface {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$SelectionBoundsAdjuster;->a(Landroid/graphics/Rect;)V

    .line 2092
    :cond_24
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v2, v3, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIII)V

    .line 2095
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:Z

    .line 2096
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_45

    .line 2097
    if-nez v0, :cond_46

    const/4 v0, 0x1

    :goto_3a
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:Z

    .line 2098
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v5, :cond_45

    .line 2099
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->refreshDrawableState()V

    .line 2102
    :cond_45
    return-void

    .line 2097
    :cond_46
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 2216
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 2217
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2218
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2220
    :cond_f
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    .line 2221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2222
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2223
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    .line 2224
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 2225
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 2226
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 2227
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2228
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 2229
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 3

    .prologue
    .line 722
    if-eqz p1, :cond_1d

    .line 723
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    .line 724
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_1d

    .line 726
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    .line 730
    :cond_1d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_26

    .line 731
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    .line 734
    :cond_26
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2f

    .line 735
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->c()V

    .line 737
    :cond_2f
    return-void
.end method

.method protected abstract a(Z)V
.end method

.method public a(FFI)Z
    .registers 8

    .prologue
    .line 2602
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v0

    .line 2603
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 2604
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2605
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2606
    if-eqz v1, :cond_24

    .line 2607
    invoke-virtual {p0, v1, v0, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2608
    invoke-super {p0, p0}, Lit/sephiroth/android/library/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2611
    :goto_23
    return v0

    :cond_24
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->a(FFI)Z

    move-result v0

    goto :goto_23
.end method

.method public a(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 767
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v1, :cond_19

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v1, :cond_19

    .line 768
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 771
    :cond_19
    return v0
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_22

    .line 3008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_22

    .line 3009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(FFI)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3010
    const/4 v0, 0x1

    .line 3014
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public a(Landroid/view/View;IJ)Z
    .registers 16

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 920
    .line 923
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_100

    .line 927
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_93

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_93

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_93

    .line 929
    :cond_1a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7e

    move v6, v7

    .line 930
    :goto_2d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 931
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 932
    if-eqz v6, :cond_80

    .line 933
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 938
    :cond_53
    :goto_53
    if-eqz v6, :cond_8c

    .line 939
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 944
    :goto_5b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_fd

    .line 945
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a(Landroid/view/ActionMode;IJZ)V

    :goto_6c
    move v0, v8

    move v8, v7

    .line 966
    :goto_6e
    if-eqz v8, :cond_73

    .line 967
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A()V

    :cond_73
    move v9, v0

    move v0, v7

    move v7, v9

    .line 971
    :goto_76
    if-eqz v7, :cond_7d

    .line 972
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView;->a(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 975
    :cond_7d
    return v0

    :cond_7e
    move v6, v8

    .line 929
    goto :goto_2d

    .line 935
    :cond_80
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->b(J)V

    goto :goto_53

    .line 941
    :cond_8c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_5b

    .line 950
    :cond_93
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v7, :cond_fa

    .line 951
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_df

    move v0, v7

    .line 952
    :goto_aa
    if-eqz v0, :cond_e1

    .line 953
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    .line 954
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 955
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 956
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->c()V

    .line 957
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 959
    :cond_da
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    :cond_dc
    :goto_dc
    move v8, v7

    move v0, v7

    .line 963
    goto :goto_6e

    :cond_df
    move v0, v8

    .line 951
    goto :goto_aa

    .line 960
    :cond_e1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v8}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 961
    :cond_f7
    iput v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_dc

    :cond_fa
    move v0, v7

    goto/16 :goto_6e

    :cond_fd
    move v8, v7

    goto/16 :goto_6c

    :cond_100
    move v0, v8

    goto/16 :goto_76
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3635
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 3636
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 3637
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    .line 3639
    if-nez v3, :cond_b

    .line 3650
    :cond_a
    return-void

    .line 3643
    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_a

    .line 3644
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3645
    add-int v5, v2, v0

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3646
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3648
    :cond_1d
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3643
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6

    .prologue
    .line 2471
    new-instance v0, Lit/sephiroth/android/library/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected b()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1131
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$OnScrollListener;

    if-eqz v0, :cond_12

    .line 1132
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$OnScrollListener;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-interface {v0, p0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$OnScrollListener;->a(Lit/sephiroth/android/library/widget/AbsHListView;III)V

    .line 1134
    :cond_12
    invoke-virtual {p0, v4, v4, v4, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->onScrollChanged(IIII)V

    .line 1135
    return-void
.end method

.method b(I)V
    .registers 3

    .prologue
    .line 3660
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    if-eq p1, v0, :cond_f

    .line 3661
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 3662
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    .line 3663
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$OnScrollListener;->a(Lit/sephiroth/android/library/widget/AbsHListView;I)V

    .line 3666
    :cond_f
    return-void
.end method

.method public b(II)V
    .registers 4

    .prologue
    .line 4449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4450
    return-void
.end method

.method c()V
    .registers 2

    .prologue
    .line 1282
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 1283
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    .line 1284
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 1285
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 1287
    :cond_f
    return-void
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 4381
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-nez v0, :cond_b

    .line 4382
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    .line 4384
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a(I)V

    .line 4385
    return-void
.end method

.method c(II)Z
    .registers 23

    .prologue
    .line 4557
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v9

    .line 4558
    if-nez v9, :cond_8

    .line 4559
    const/4 v2, 0x1

    .line 4714
    :goto_7
    return v2

    .line 4562
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 4563
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 4565
    move-object/from16 v0, p0

    iget-object v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    .line 4570
    const/4 v2, 0x0

    .line 4571
    const/4 v6, 0x0

    .line 4579
    sub-int v10, v2, v3

    .line 4580
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    .line 4581
    sub-int v11, v4, v2

    .line 4583
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v6

    sub-int v6, v2, v6

    .line 4584
    if-gez p1, :cond_98

    .line 4585
    add-int/lit8 v2, v6, -0x1

    neg-int v2, v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    .line 4590
    :goto_49
    if-gez p2, :cond_a2

    .line 4591
    add-int/lit8 v2, v6, -0x1

    neg-int v2, v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4596
    :goto_54
    move-object/from16 v0, p0

    iget v12, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 4599
    if-nez v12, :cond_ab

    .line 4600
    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    .line 4604
    :goto_62
    add-int v6, v12, v9

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v6, v7, :cond_b5

    .line 4605
    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    .line 4610
    :goto_71
    if-nez v12, :cond_bf

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-lt v3, v6, :cond_bf

    if-ltz v2, :cond_bf

    const/4 v3, 0x1

    .line 4611
    :goto_7a
    add-int v6, v12, v9

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v6, v7, :cond_c1

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v5

    if-gt v4, v5, :cond_c1

    if-gtz v2, :cond_c1

    const/4 v4, 0x1

    .line 4613
    :goto_8f
    if-nez v3, :cond_93

    if-eqz v4, :cond_c6

    .line 4614
    :cond_93
    if-eqz v2, :cond_c3

    const/4 v2, 0x1

    goto/16 :goto_7

    .line 4587
    :cond_98
    add-int/lit8 v2, v6, -0x1

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v2

    goto :goto_49

    .line 4593
    :cond_a2
    add-int/lit8 v2, v6, -0x1

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_54

    .line 4602
    :cond_ab
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    goto :goto_62

    .line 4607
    :cond_b5
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    goto :goto_71

    .line 4610
    :cond_bf
    const/4 v3, 0x0

    goto :goto_7a

    .line 4611
    :cond_c1
    const/4 v4, 0x0

    goto :goto_8f

    .line 4614
    :cond_c3
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 4617
    :cond_c6
    if-gez v2, :cond_173

    const/4 v3, 0x1

    .line 4619
    :goto_c9
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v13

    .line 4620
    if-eqz v13, :cond_d2

    .line 4621
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->m()V

    .line 4624
    :cond_d2
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeaderViewsCount()I

    move-result v14

    .line 4625
    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFooterViewsCount()I

    move-result v5

    sub-int v15, v4, v5

    .line 4627
    const/4 v5, 0x0

    .line 4628
    const/4 v6, 0x0

    .line 4630
    if-eqz v3, :cond_191

    .line 4631
    neg-int v0, v2

    move/from16 v16, v0

    .line 4637
    const/4 v4, 0x0

    move/from16 v19, v4

    move v4, v6

    move/from16 v6, v19

    :goto_ed
    if-ge v6, v9, :cond_fd

    .line 4638
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4639
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v7

    move/from16 v0, v16

    if-lt v7, v0, :cond_176

    .line 4670
    :cond_fd
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 4672
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    .line 4674
    if-lez v4, :cond_119

    .line 4675
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->detachViewsFromParent(II)V

    .line 4676
    move-object/from16 v0, p0

    iget-object v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->d()V

    .line 4681
    :cond_119
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    move-result v5

    if-nez v5, :cond_122

    .line 4682
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 4685
    :cond_122
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->d(I)V

    .line 4687
    if-eqz v3, :cond_132

    .line 4688
    move-object/from16 v0, p0

    iget v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 4691
    :cond_132
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4692
    if-lt v10, v2, :cond_13a

    if-ge v11, v2, :cond_13f

    .line 4693
    :cond_13a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Z)V

    .line 4696
    :cond_13f
    if-nez v13, :cond_1ca

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1ca

    .line 4697
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v2, v3

    .line 4698
    if-ltz v2, :cond_168

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_168

    .line 4699
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    .line 4710
    :cond_168
    :goto_168
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    .line 4712
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    .line 4714
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 4617
    :cond_173
    const/4 v3, 0x0

    goto/16 :goto_c9

    .line 4642
    :cond_176
    add-int/lit8 v7, v4, 0x1

    .line 4643
    add-int v4, v12, v6

    .line 4644
    if-lt v4, v14, :cond_18b

    if-ge v4, v15, :cond_18b

    .line 4645
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    .line 4637
    :cond_18b
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v7

    goto/16 :goto_ed

    .line 4650
    :cond_191
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    sub-int v7, v4, v2

    .line 4655
    add-int/lit8 v4, v9, -0x1

    move/from16 v19, v4

    move v4, v6

    move/from16 v6, v19

    :goto_19e
    if-ltz v6, :cond_fd

    .line 4656
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4657
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v7, :cond_fd

    .line 4661
    add-int/lit8 v5, v4, 0x1

    .line 4662
    add-int v4, v12, v6

    .line 4663
    if-lt v4, v14, :cond_1c1

    if-ge v4, v15, :cond_1c1

    .line 4664
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v4}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a(Landroid/view/View;I)V

    .line 4655
    :cond_1c1
    add-int/lit8 v4, v6, -0x1

    move/from16 v19, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v19

    goto :goto_19e

    .line 4701
    :cond_1ca
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f0

    .line 4702
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v2, v3

    .line 4703
    if-ltz v2, :cond_168

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_168

    .line 4704
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    goto/16 :goto_168

    .line 4707
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_168
.end method

.method c(Landroid/view/View;IJ)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2570
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_25

    .line 2571
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_25

    .line 2572
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-nez v0, :cond_23

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_23

    .line 2574
    invoke-virtual {p0, p2, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setItemChecked(IZ)V

    .line 2575
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->performHapticFeedback(I)Z

    :cond_23
    move v0, v1

    .line 2593
    :cond_24
    :goto_24
    return v0

    .line 2582
    :cond_25
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_45

    .line 2583
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView$OnItemLongClickListener;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 2586
    :goto_33
    if-nez v0, :cond_3f

    .line 2587
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2588
    invoke-super {p0, p0}, Lit/sephiroth/android/library/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2590
    :cond_3f
    if-eqz v0, :cond_24

    .line 2591
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->performHapticFeedback(I)Z

    goto :goto_24

    :cond_45
    move v0, v6

    goto :goto_33
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 5215
    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 5236
    instance-of v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1648
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 1649
    if-lez v2, :cond_3d

    .line 1650
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    if-eqz v0, :cond_3b

    .line 1651
    mul-int/lit8 v0, v2, 0x64

    .line 1653
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1654
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1655
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1656
    if-lez v1, :cond_20

    .line 1657
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1660
    :cond_20
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1661
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1662
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1663
    if-lez v1, :cond_3a

    .line 1664
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 1672
    :cond_3a
    :goto_3a
    return v0

    .line 1669
    :cond_3b
    const/4 v0, 0x1

    goto :goto_3a

    :cond_3d
    move v0, v1

    .line 1672
    goto :goto_3a
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1677
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 1678
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    .line 1679
    if-ltz v2, :cond_3d

    if-lez v3, :cond_3d

    .line 1680
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    if-eqz v1, :cond_3e

    .line 1681
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1682
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1683
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1684
    if-lez v1, :cond_3d

    .line 1685
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1701
    :cond_3d
    :goto_3d
    return v0

    .line 1690
    :cond_3e
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 1691
    if-nez v2, :cond_4b

    .line 1698
    :goto_42
    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3d

    .line 1693
    :cond_4b
    add-int v0, v2, v3

    if-ne v0, v1, :cond_51

    move v0, v1

    .line 1694
    goto :goto_42

    .line 1696
    :cond_51
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    goto :goto_42
.end method

.method protected computeHorizontalScrollRange()I
    .registers 4

    .prologue
    .line 1707
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    if-eqz v0, :cond_2c

    .line 1708
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1709
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 1711
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1716
    :cond_2b
    :goto_2b
    return v0

    .line 1714
    :cond_2c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    goto :goto_2b
.end method

.method protected d()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1630
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeAllViewsInLayout()V

    .line 1631
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 1632
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1633
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Runnable;

    .line 1634
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1635
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1636
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ar:I

    .line 1637
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->as:J

    .line 1638
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 1639
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 1640
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    .line 1641
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 1642
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1643
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 1644
    return-void
.end method

.method public d(I)V
    .registers 5

    .prologue
    .line 4721
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 4723
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    .line 4724
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4725
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4723
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4727
    :cond_11
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 2118
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 2119
    if-nez v0, :cond_7

    .line 2120
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/Canvas;)V

    .line 2123
    :cond_7
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2125
    if-eqz v0, :cond_f

    .line 2126
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/Canvas;)V

    .line 2132
    :cond_f
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2

    .prologue
    .line 2671
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    .line 3444
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3445
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    if-eqz v0, :cond_a7

    .line 3446
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    .line 3447
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/EdgeEffect;->a()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 3448
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3449
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    add-int/2addr v2, v3

    .line 3450
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:I

    add-int/2addr v3, v4

    .line 3451
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    .line 3454
    const/4 v4, 0x0

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3458
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3459
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3460
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v5, v3, v3}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(II)V

    .line 3462
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 3463
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v3, v4, v2}, Lit/sephiroth/android/library/widget/EdgeEffect;->b(II)V

    .line 3465
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3467
    :cond_59
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3469
    :cond_5c
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/EdgeEffect;->a()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 3470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3471
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    add-int/2addr v2, v3

    .line 3472
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:I

    add-int/2addr v3, v4

    .line 3473
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    .line 3474
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    .line 3476
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3477
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3478
    neg-int v2, v2

    int-to-float v2, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3480
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0, v3, v3}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(II)V

    .line 3482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 3486
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3488
    :cond_a4
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3491
    :cond_a7
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 2300
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->drawableStateChanged()V

    .line 2301
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 2302
    return-void
.end method

.method protected abstract e(I)I
.end method

.method protected e()V
    .registers 1

    .prologue
    .line 1811
    return-void
.end method

.method protected f(I)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 4803
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 4804
    if-nez v2, :cond_9

    move v0, v1

    .line 4809
    :cond_8
    :goto_8
    return v0

    .line 4808
    :cond_9
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)I

    move-result v0

    .line 4809
    if-ne v0, v1, :cond_8

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method protected f()V
    .registers 7

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1814
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 1817
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v0, :cond_5c

    move v0, v1

    .line 1820
    :goto_c
    if-nez v0, :cond_23

    .line 1821
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_23

    .line 1822
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1823
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_5e

    move v0, v1

    .line 1827
    :cond_23
    :goto_23
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:Landroid/view/View;

    if-eqz v0, :cond_60

    move v0, v2

    :goto_28
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1830
    :cond_2b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    if-eqz v0, :cond_5b

    .line 1832
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v4

    .line 1835
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v4

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ge v0, v5, :cond_62

    move v0, v1

    .line 1838
    :goto_3b
    if-nez v0, :cond_68

    if-lez v4, :cond_68

    .line 1839
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1840
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getRight()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_64

    .line 1843
    :goto_54
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    if-eqz v1, :cond_66

    :goto_58
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1845
    :cond_5b
    return-void

    :cond_5c
    move v0, v2

    .line 1817
    goto :goto_c

    :cond_5e
    move v0, v2

    .line 1823
    goto :goto_23

    :cond_60
    move v0, v3

    .line 1827
    goto :goto_28

    :cond_62
    move v0, v2

    .line 1835
    goto :goto_3b

    :cond_64
    move v1, v2

    .line 1840
    goto :goto_54

    :cond_66
    move v2, v3

    .line 1843
    goto :goto_58

    :cond_68
    move v1, v0

    goto :goto_54
.end method

.method public g()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1850
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lez v0, :cond_12

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-ltz v0, :cond_12

    .line 1851
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1853
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .prologue
    .line 5220
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 5226
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCacheColorHint()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5296
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    return v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .prologue
    .line 753
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 810
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-nez v0, :cond_10

    .line 811
    :cond_d
    new-array v0, v1, [J

    .line 822
    :cond_f
    return-object v0

    .line 814
    :cond_10
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    .line 815
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v3

    .line 816
    new-array v0, v3, [J

    .line 818
    :goto_18
    if-ge v1, v3, :cond_f

    .line 819
    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->b(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public getCheckedItemPosition()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 782
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 783
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->e(I)I

    move-result v0

    .line 786
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public getChoiceMode()I
    .registers 2

    .prologue
    .line 1004
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 2598
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 1243
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g()Landroid/view/View;

    move-result-object v0

    .line 1244
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 1247
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1248
    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1253
    :goto_12
    return-void

    .line 1251
    :cond_13
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method protected getFooterViewsCount()I
    .registers 2

    .prologue
    .line 4746
    const/4 v0, 0x0

    return v0
.end method

.method protected getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 4736
    const/4 v0, 0x0

    return v0
.end method

.method protected getHorizontalScrollFactor()F
    .registers 5

    .prologue
    .line 3424
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    .line 3426
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3427
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lit/sephiroth/android/library/R$attr;->hlv_listPreferredItemWidth:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 3429
    if-eqz v1, :cond_32

    .line 3430
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    .line 3436
    :cond_2f
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    return v0

    .line 3433
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Expected theme to define hlv_listPreferredItemWidth."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .registers 2

    .prologue
    .line 1081
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 5

    .prologue
    .line 1721
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 1722
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v0

    .line 1723
    if-nez v1, :cond_b

    .line 1732
    :cond_a
    :goto_a
    return v0

    .line 1726
    :cond_b
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v1, :cond_12

    .line 1727
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    .line 1730
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1731
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 1732
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    if-ge v1, v3, :cond_a

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_a
.end method

.method public getListPaddingBottom()I
    .registers 2

    .prologue
    .line 1878
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .prologue
    .line 1890
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .prologue
    .line 1902
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .prologue
    .line 1866
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 1738
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 1739
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v0

    .line 1740
    if-nez v1, :cond_b

    .line 1750
    :cond_a
    :goto_a
    return v0

    .line 1743
    :cond_b
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_19

    .line 1744
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    .line 1747
    :cond_19
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1748
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    .line 1749
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1750
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    if-le v1, v4, :cond_a

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_a
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 5264
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    return v0
.end method

.method public getTranscriptMode()I
    .registers 2

    .prologue
    .line 5259
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    return v0
.end method

.method h()Z
    .registers 2

    .prologue
    .line 2164
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_a

    .line 2169
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 2167
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 2164
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method protected i()Z
    .registers 2

    .prologue
    .line 2180
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected j()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2244
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2279
    :cond_d
    :goto_d
    return-void

    .line 2248
    :cond_e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    .line 2249
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    .line 2250
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_20
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2253
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2255
    if-eqz v1, :cond_3a

    .line 2256
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2257
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2259
    :cond_3a
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2261
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v1

    .line 2262
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2263
    if-eqz v0, :cond_56

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_56

    .line 2264
    if-eqz v1, :cond_78

    .line 2265
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2271
    :cond_56
    :goto_56
    if-eqz v1, :cond_d

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_d

    .line 2272
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/AbsHListView$CheckForKeyLongPress;

    if-nez v0, :cond_68

    .line 2273
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$CheckForKeyLongPress;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$1;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/AbsHListView$CheckForKeyLongPress;

    .line 2275
    :cond_68
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/AbsHListView$CheckForKeyLongPress;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$CheckForKeyLongPress;->a()V

    .line 2276
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/AbsHListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 2268
    :cond_78
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_56
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2347
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 2348
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2349
    :cond_c
    return-void
.end method

.method k()V
    .registers 3

    .prologue
    .line 2289
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 2290
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2291
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2296
    :cond_13
    :goto_13
    return-void

    .line 2293
    :cond_14
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lit/sephiroth/android/library/widget/AbsHListView;->U:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_13
.end method

.method protected l()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2959
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_19

    .line 2960
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2962
    :cond_19
    return-void
.end method

.method protected m()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 4759
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-eq v0, v2, :cond_25

    .line 4760
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 4761
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4763
    :cond_e
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    if-ltz v0, :cond_1c

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-eq v0, v1, :cond_1c

    .line 4764
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4766
    :cond_1c
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 4767
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 4768
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    .line 4770
    :cond_25
    return-void
.end method

.method protected n()I
    .registers 3

    .prologue
    .line 4777
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    .line 4778
    if-gez v0, :cond_6

    .line 4779
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4781
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4782
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4783
    return v0
.end method

.method protected o()Z
    .registers 2

    .prologue
    .line 4826
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4827
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 4828
    const/4 v0, 0x1

    .line 4830
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2353
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onAttachedToWindow()V

    .line 2355
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2356
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2358
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    if-nez v0, :cond_2f

    .line 2359
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    .line 2360
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2363
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 2364
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ap:I

    .line 2365
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 2367
    :cond_2f
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    .line 2368
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 2308
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:Z

    if-eqz v0, :cond_9

    .line 2310
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2336
    :cond_8
    :goto_8
    return-object v0

    .line 2316
    :cond_9
    sget-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 2321
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2322
    const/4 v2, -0x1

    .line 2323
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_18
    if-ltz v1, :cond_2d

    .line 2324
    aget v4, v0, v1

    if-ne v4, v3, :cond_2a

    .line 2331
    :goto_1e
    if-ltz v1, :cond_8

    .line 2332
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    .line 2323
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_2d
    move v1, v2

    goto :goto_1e
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    .prologue
    .line 5207
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2372
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onDetachedFromWindow()V

    .line 2377
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->b()V

    .line 2379
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2380
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2382
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    if-eqz v0, :cond_21

    .line 2383
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2384
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$AdapterDataSetObserver;

    .line 2387
    :cond_21
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-eqz v0, :cond_2a

    .line 2388
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2391
    :cond_2a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v0, :cond_33

    .line 2392
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 2395
    :cond_33
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    .line 2396
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2399
    :cond_3c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

    if-eqz v0, :cond_45

    .line 2400
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2403
    :cond_45
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    if-eqz v0, :cond_50

    .line 2404
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2405
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    .line 2407
    :cond_50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    .line 2408
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    .prologue
    .line 1606
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1607
    if-eqz p1, :cond_29

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-gez v0, :cond_29

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1608
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_26

    .line 1611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1612
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ap:I

    .line 1613
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 1615
    :cond_26
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()Z

    .line 1617
    :cond_29
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 3397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    .line 3398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 3412
    :cond_f
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_13
    return v0

    .line 3400
    :pswitch_14
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 3401
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3402
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    .line 3403
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalScrollFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3404
    invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3405
    const/4 v0, 0x1

    goto :goto_13

    .line 3398
    :pswitch_data_32
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1159
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1160
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1161
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1167
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1169
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1170
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1171
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1172
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1174
    :cond_1d
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2e

    .line 1175
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1178
    :cond_2e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 3529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3532
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v3, :cond_11

    .line 3533
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 3536
    :cond_11
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-nez v3, :cond_16

    .line 3611
    :cond_15
    :goto_15
    return v1

    .line 3544
    :cond_16
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_a4

    :pswitch_1b
    goto :goto_15

    .line 3546
    :pswitch_1c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3547
    const/4 v3, 0x6

    if-eq v0, v3, :cond_24

    const/4 v3, 0x5

    if-ne v0, v3, :cond_28

    .line 3548
    :cond_24
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    move v1, v2

    .line 3549
    goto :goto_15

    .line 3552
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 3553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 3554
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3556
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)I

    move-result v5

    .line 3557
    if-eq v0, v7, :cond_59

    if-ltz v5, :cond_59

    .line 3560
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3561
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3562
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3563
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3564
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3565
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3566
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    .line 3568
    :cond_59
    const/high16 v3, -0x80000000

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3569
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->D()V

    .line 3570
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3571
    if-ne v0, v7, :cond_15

    move v1, v2

    .line 3572
    goto :goto_15

    .line 3578
    :pswitch_69
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_b6

    goto :goto_15

    .line 3580
    :pswitch_6f
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3581
    if-ne v0, v4, :cond_7e

    .line 3583
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    move v0, v1

    .line 3585
    :cond_7e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 3586
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3587
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3588
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move v1, v2

    .line 3589
    goto :goto_15

    .line 3598
    :pswitch_93
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3599
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3600
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F()V

    .line 3601
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_15

    .line 3606
    :pswitch_9f
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_15

    .line 3544
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_93
        :pswitch_69
        :pswitch_93
        :pswitch_1b
        :pswitch_1b
        :pswitch_9f
    .end packed-switch

    .line 3578
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_6f
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 2639
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 2644
    sparse-switch p1, :sswitch_data_48

    .line 2664
    :cond_5
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    .line 2647
    :sswitch_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2650
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2654
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2655
    if-eqz v1, :cond_43

    .line 2656
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget-wide v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:J

    invoke-virtual {p0, v1, v2, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;IJ)Z

    .line 2657
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2659
    :cond_43
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    goto :goto_9

    .line 2644
    nop

    :sswitch_data_48
    .sparse-switch
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 1781
    invoke-super/range {p0 .. p5}, Lit/sephiroth/android/library/widget/AdapterView;->onLayout(ZIIII)V

    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    .line 1783
    if-eqz p1, :cond_1f

    .line 1784
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 1785
    :goto_e
    if-ge v0, v2, :cond_1a

    .line 1786
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 1785
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1788
    :cond_1a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->a()V

    .line 1791
    :cond_1f
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 1792
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    .line 1794
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 1795
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 1757
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 1758
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->C()V

    .line 1760
    :cond_8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    .line 1761
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1762
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1763
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1764
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1767
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-ne v0, v2, :cond_58

    .line 1768
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    .line 1769
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 1770
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1771
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1772
    :goto_4c
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v3, v4

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:I

    if-lt v3, v4, :cond_5b

    if-gt v0, v1, :cond_5b

    move v0, v2

    :goto_56
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:Z

    .line 1774
    :cond_58
    return-void

    :cond_59
    move v0, v1

    .line 1771
    goto :goto_4c

    .line 1772
    :cond_5b
    const/4 v0, 0x0

    goto :goto_56
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 8

    .prologue
    .line 3385
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_20

    .line 3386
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->onScrollChanged(IIII)V

    .line 3387
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(I)V

    .line 3388
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->l()V

    .line 3390
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    .line 3392
    :cond_20
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1553
    check-cast p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1555
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1556
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1558
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    int-to-long v0, v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:J

    .line 1560
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_62

    .line 1561
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1562
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1563
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ab:J

    .line 1564
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 1565
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 1566
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    .line 1585
    :cond_2d
    :goto_2d
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_35

    .line 1586
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    .line 1589
    :cond_35
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_3d

    .line 1590
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    .line 1593
    :cond_3d
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 1595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5e

    .line 1596
    iget-boolean v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    if-eqz v0, :cond_5e

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_5e

    .line 1597
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    .line 1601
    :cond_5e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 1602
    return-void

    .line 1567
    :cond_62
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2d

    .line 1568
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 1570
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 1571
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 1572
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1573
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1574
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ab:J

    .line 1575
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 1576
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 1577
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    goto :goto_2d
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1467
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1469
    new-instance v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    invoke-direct {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1472
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    if-eqz v0, :cond_4f

    .line 1474
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 1475
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1476
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1477
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1478
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 1479
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 1480
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    iput-boolean v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 1481
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    .line 1482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 1483
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    move-object v0, v3

    .line 1545
    :goto_4e
    return-object v0

    .line 1487
    :cond_4f
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_bb

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lez v0, :cond_bb

    move v0, v1

    .line 1488
    :goto_5a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemId()J

    move-result-wide v4

    .line 1489
    iput-wide v4, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 1490
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iput v6, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 1492
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_bd

    .line 1494
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1495
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1496
    iput-wide v8, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1523
    :goto_78
    const/4 v0, 0x0

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 1524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_e9

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_e9

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_e9

    :goto_8a
    iput-boolean v1, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 1527
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_98

    .line 1529
    :try_start_90
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->a()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;
    :try_end_98
    .catch Ljava/lang/NoSuchMethodError; {:try_start_90 .. :try_end_98} :catch_eb

    .line 1535
    :cond_98
    :goto_98
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_f9

    .line 1536
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 1537
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v1

    .line 1538
    :goto_a7
    if-ge v2, v1, :cond_f7

    .line 1539
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/LongSparseArray;->b(I)J

    move-result-wide v4

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v6, v2}, Landroid/support/v4/util/LongSparseArray;->c(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 1538
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_bb
    move v0, v2

    .line 1487
    goto :goto_5a

    .line 1498
    :cond_bd
    if-eqz v0, :cond_e2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v0, :cond_e2

    .line 1508
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1509
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1510
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 1511
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lt v0, v4, :cond_d7

    .line 1512
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    .line 1514
    :cond_d7
    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1515
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    goto :goto_78

    .line 1517
    :cond_e2
    iput v2, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1518
    iput-wide v8, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1519
    iput v2, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    goto :goto_78

    :cond_e9
    move v1, v2

    .line 1524
    goto :goto_8a

    .line 1530
    :catch_eb
    move-exception v0

    .line 1531
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 1532
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    goto :goto_98

    .line 1541
    :cond_f7
    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    .line 1543
    :cond_f9
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    move-object v0, v3

    .line 1545
    goto/16 :goto_4e
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 2153
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 2154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 2155
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()V

    .line 2157
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 3020
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3023
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_17
    move v0, v2

    :goto_18
    move v2, v0

    .line 3380
    :cond_19
    :goto_19
    return v2

    :cond_1a
    move v0, v1

    .line 3023
    goto :goto_18

    .line 3026
    :cond_1c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v0, :cond_25

    .line 3027
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 3030
    :cond_25
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-nez v0, :cond_2b

    move v2, v1

    .line 3035
    goto :goto_19

    .line 3038
    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3042
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3043
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3045
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_3a6

    :pswitch_3c
    goto :goto_19

    .line 3047
    :pswitch_3d
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_3b8

    .line 3063
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3064
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 3065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    .line 3066
    invoke-virtual {p0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v3

    .line 3067
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_3a2

    .line 3068
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eq v0, v6, :cond_db

    if-ltz v3, :cond_db

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 3073
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3075
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    if-nez v0, :cond_79

    .line 3076
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$CheckForTap;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$CheckForTap;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    .line 3078
    :cond_79
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0, v0, v6, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    .line 3091
    :goto_84
    if-ltz v0, :cond_94

    .line 3093
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3094
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3096
    :cond_94
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3097
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3098
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3099
    const/high16 v0, -0x80000000

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3104
    :goto_9e
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3105
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-nez v0, :cond_19

    .line 3106
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_19

    .line 3049
    :pswitch_af
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    .line 3050
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v0, :cond_bd

    .line 3051
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 3053
    :cond_bd
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3055
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3056
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3057
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3058
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    goto :goto_9e

    .line 3080
    :cond_db
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v0, v6, :cond_3a2

    .line 3082
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 3083
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3084
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3085
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)I

    move-result v0

    .line 3086
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->c()V

    goto :goto_84

    .line 3113
    :pswitch_f1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3114
    if-ne v0, v10, :cond_39f

    .line 3116
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3118
    :goto_ff
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 3120
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-eqz v1, :cond_10b

    .line 3123
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 3126
    :cond_10b
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v1, :pswitch_data_3be

    :pswitch_110
    goto/16 :goto_19

    .line 3132
    :pswitch_112
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->h(I)Z

    goto/16 :goto_19

    .line 3136
    :pswitch_117
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->i(I)V

    goto/16 :goto_19

    .line 3143
    :pswitch_11c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_3ce

    .line 3284
    :cond_121
    :goto_121
    :pswitch_121
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3286
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    if-eqz v0, :cond_132

    .line 3287
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->c()V

    .line 3288
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->c()V

    .line 3292
    :cond_132
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3294
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3295
    if-eqz v0, :cond_140

    .line 3296
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3299
    :cond_140
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F()V

    .line 3301
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    goto/16 :goto_19

    .line 3147
    :pswitch_147
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3148
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3151
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1fe

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1fe

    move v0, v2

    .line 3153
    :goto_16d
    if-eqz v4, :cond_21a

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_21a

    if-eqz v0, :cond_21a

    .line 3154
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eqz v0, :cond_17e

    .line 3155
    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3158
    :cond_17e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

    if-nez v0, :cond_18a

    .line 3159
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$1;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

    .line 3162
    :cond_18a
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;

    .line 3163
    iput v3, v5, Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;->a:I

    .line 3164
    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;->a()V

    .line 3166
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 3168
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eqz v0, :cond_19b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v0, v2, :cond_20b

    .line 3169
    :cond_19b
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 3170
    if-eqz v6, :cond_1aa

    .line 3171
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-nez v0, :cond_201

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    :goto_1a7
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3174
    :cond_1aa
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 3176
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_204

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 3177
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3178
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 3179
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 3180
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3181
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    .line 3182
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3183
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e2

    .line 3184
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3185
    if-eqz v0, :cond_1e2

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_1e2

    .line 3186
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3189
    :cond_1e2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    if-eqz v0, :cond_1eb

    .line 3190
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3192
    :cond_1eb
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$1;

    invoke-direct {v0, p0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView$1;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    .line 3204
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p0, v0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_19

    :cond_1fe
    move v0, v1

    .line 3151
    goto/16 :goto_16d

    .line 3171
    :cond_201
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;

    goto :goto_1a7

    .line 3207
    :cond_204
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3208
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    goto/16 :goto_19

    .line 3211
    :cond_20b
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_21a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 3212
    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/AbsHListView$PerformClick;->run()V

    .line 3215
    :cond_21a
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3216
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    goto/16 :goto_121

    .line 3219
    :pswitch_221
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    .line 3220
    if-lez v0, :cond_2c1

    .line 3221
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 3222
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 3223
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 3224
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 3225
    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-nez v7, :cond_261

    if-lt v3, v5, :cond_261

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v7, v0

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ge v7, v8, :cond_261

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    if-gt v4, v7, :cond_261

    .line 3227
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3228
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_121

    .line 3230
    :cond_261
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3231
    const/16 v8, 0x3e8

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3233
    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 3238
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    if-le v8, v9, :cond_2a8

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-nez v8, :cond_286

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    sub-int/2addr v5, v8

    if-eq v3, v5, :cond_2a8

    :cond_286
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v0, v3, :cond_292

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    add-int/2addr v0, v6

    if-eq v4, v0, :cond_2a8

    .line 3243
    :cond_292
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-nez v0, :cond_29d

    .line 3244
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    .line 3246
    :cond_29d
    invoke-virtual {p0, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3248
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    neg-int v3, v7

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a(I)V

    goto/16 :goto_121

    .line 3250
    :cond_2a8
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3251
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3252
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-eqz v0, :cond_2b6

    .line 3253
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    .line 3255
    :cond_2b6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v0, :cond_121

    .line 3256
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    goto/16 :goto_121

    .line 3261
    :cond_2c1
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3262
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_121

    .line 3267
    :pswitch_2c8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-nez v0, :cond_2d3

    .line 3268
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    .line 3270
    :cond_2d3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3271
    const/16 v3, 0x3e8

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3272
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 3274
    invoke-virtual {p0, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3275
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    if-le v3, v4, :cond_2f7

    .line 3276
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    neg-int v0, v0

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b(I)V

    goto/16 :goto_121

    .line 3278
    :cond_2f7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a()V

    goto/16 :goto_121

    .line 3306
    :pswitch_2fe
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_3de

    .line 3319
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3320
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3321
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3322
    if-eqz v0, :cond_316

    .line 3323
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3325
    :cond_316
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    .line 3327
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3328
    if-eqz v0, :cond_324

    .line 3329
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3332
    :cond_324
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F()V

    .line 3335
    :goto_327
    :pswitch_327
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    if-eqz v0, :cond_335

    .line 3336
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->c()V

    .line 3337
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->c()V

    .line 3339
    :cond_335
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    goto/16 :goto_19

    .line 3308
    :pswitch_339
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-nez v0, :cond_344

    .line 3309
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    .line 3311
    :cond_344
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a()V

    goto :goto_327

    .line 3344
    :pswitch_34a
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/MotionEvent;)V

    .line 3345
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3346
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3347
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v1

    .line 3348
    if-ltz v1, :cond_367

    .line 3350
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3351
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3352
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3354
    :cond_367
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto/16 :goto_19

    .line 3360
    :pswitch_36b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3361
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 3362
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 3363
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 3364
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3365
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3366
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3367
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3368
    invoke-virtual {p0, v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v0

    .line 3369
    if-ltz v0, :cond_39b

    .line 3371
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3372
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3373
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3375
    :cond_39b
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto/16 :goto_19

    :cond_39f
    move v1, v0

    goto/16 :goto_ff

    :cond_3a2
    move v0, v3

    goto/16 :goto_84

    .line 3045
    nop

    :pswitch_data_3a6
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_11c
        :pswitch_f1
        :pswitch_2fe
        :pswitch_3c
        :pswitch_36b
        :pswitch_34a
    .end packed-switch

    .line 3047
    :pswitch_data_3b8
    .packed-switch 0x6
        :pswitch_af
    .end packed-switch

    .line 3126
    :pswitch_data_3be
    .packed-switch 0x0
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_117
        :pswitch_110
        :pswitch_117
    .end packed-switch

    .line 3143
    :pswitch_data_3ce
    .packed-switch 0x0
        :pswitch_147
        :pswitch_147
        :pswitch_147
        :pswitch_221
        :pswitch_121
        :pswitch_2c8
    .end packed-switch

    .line 3306
    :pswitch_data_3de
    .packed-switch 0x5
        :pswitch_339
        :pswitch_327
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4

    .prologue
    .line 2966
    if-eqz p1, :cond_18

    .line 2968
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->m()V

    .line 2972
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    .line 2975
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 2977
    :cond_14
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 2995
    :cond_17
    :goto_17
    return-void

    .line 2979
    :cond_18
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2980
    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 2981
    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-eqz v0, :cond_29

    .line 2982
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    .line 2984
    :cond_29
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v0, :cond_32

    .line 2985
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 2988
    :cond_32
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_17

    .line 2989
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(I)V

    .line 2990
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->I()V

    .line 2991
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    goto :goto_17
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2412
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 2414
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v1

    .line 2416
    :goto_c
    if-nez p1, :cond_44

    .line 2417
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2418
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-eqz v3, :cond_39

    .line 2419
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2422
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    .line 2423
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v3, :cond_28

    .line 2424
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 2426
    :cond_28
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_39

    .line 2427
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v3, v1}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(I)V

    .line 2428
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->I()V

    .line 2429
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 2434
    :cond_39
    if-ne v0, v2, :cond_3f

    .line 2436
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2455
    :cond_3f
    :goto_3f
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    .line 2456
    return-void

    :cond_42
    move v0, v2

    .line 2414
    goto :goto_c

    .line 2440
    :cond_44
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    if-eq v0, v3, :cond_3f

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3f

    .line 2442
    if-ne v0, v2, :cond_53

    .line 2444
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()Z

    goto :goto_3f

    .line 2448
    :cond_53
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->m()V

    .line 2449
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 2450
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    goto :goto_3f
.end method

.method p()Z
    .registers 15

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 4847
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v9

    .line 4849
    if-gtz v9, :cond_a

    .line 4944
    :goto_9
    return v4

    .line 4855
    :cond_a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 4856
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v1

    .line 4857
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 4858
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4861
    if-lt v2, v1, :cond_84

    add-int v0, v1, v9

    if-ge v2, v0, :cond_84

    .line 4864
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4865
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4866
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    .line 4869
    if-ge v0, v5, :cond_76

    .line 4870
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    :cond_3e
    :goto_3e
    move v5, v0

    move v0, v3

    .line 4925
    :goto_40
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4926
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4927
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v7, :cond_50

    .line 4928
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v7}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    .line 4930
    :cond_50
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 4931
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    .line 4932
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4933
    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)I

    move-result v0

    .line 4934
    if-lt v0, v1, :cond_e6

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_e6

    .line 4935
    const/4 v1, 0x4

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 4936
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 4937
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectionInt(I)V

    .line 4938
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    .line 4942
    :goto_6f
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 4944
    if-ltz v0, :cond_e8

    :goto_74
    move v4, v3

    goto :goto_9

    .line 4871
    :cond_76
    if-le v9, v7, :cond_3e

    .line 4872
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_3e

    .line 4875
    :cond_84
    if-ge v2, v1, :cond_ad

    move v7, v4

    move v0, v4

    .line 4878
    :goto_88
    if-ge v7, v9, :cond_fc

    .line 4879
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4880
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4882
    if-nez v7, :cond_f8

    .line 4886
    if-gtz v1, :cond_98

    if-ge v2, v5, :cond_f5

    .line 4889
    :cond_98
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    move v5, v2

    .line 4892
    :goto_9e
    if-lt v2, v0, :cond_a6

    .line 4894
    add-int v0, v1, v7

    :goto_a2
    move v5, v2

    move v2, v0

    move v0, v3

    .line 4878
    goto :goto_40

    :cond_a6
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v13, v0

    move v0, v5

    move v5, v13

    goto :goto_88

    .line 4900
    :cond_ad
    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 4902
    add-int v0, v1, v9

    add-int/lit8 v0, v0, -0x1

    .line 4904
    add-int/lit8 v2, v9, -0x1

    move v8, v2

    move v5, v4

    :goto_b7
    if-ltz v8, :cond_f1

    .line 4905
    invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4906
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4907
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    .line 4909
    add-int/lit8 v12, v9, -0x1

    if-ne v8, v12, :cond_ed

    .line 4911
    add-int v5, v1, v9

    if-lt v5, v10, :cond_cf

    if-le v11, v7, :cond_ea

    .line 4912
    :cond_cf
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    sub-int v5, v7, v5

    move v7, v2

    .line 4916
    :goto_d6
    if-gt v11, v5, :cond_df

    .line 4917
    add-int v0, v1, v8

    move v5, v2

    move v2, v0

    move v0, v4

    .line 4919
    goto/16 :goto_40

    .line 4904
    :cond_df
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    move v13, v5

    move v5, v7

    move v7, v13

    goto :goto_b7

    :cond_e6
    move v0, v6

    .line 4940
    goto :goto_6f

    :cond_e8
    move v3, v4

    .line 4944
    goto :goto_74

    :cond_ea
    move v5, v7

    move v7, v2

    goto :goto_d6

    :cond_ed
    move v13, v7

    move v7, v5

    move v5, v13

    goto :goto_d6

    :cond_f1
    move v2, v0

    move v0, v4

    goto/16 :goto_40

    :cond_f5
    move v0, v5

    move v5, v2

    goto :goto_9e

    :cond_f8
    move v13, v5

    move v5, v0

    move v0, v13

    goto :goto_9e

    :cond_fc
    move v2, v0

    move v0, v1

    goto :goto_a2
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v4, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1183
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1204
    :goto_a
    return v0

    .line 1186
    :cond_b
    sparse-switch p1, :sswitch_data_56

    move v0, v1

    .line 1204
    goto :goto_a

    .line 1188
    :sswitch_10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_34

    .line 1189
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1190
    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(II)V

    goto :goto_a

    :cond_34
    move v0, v1

    .line 1194
    goto :goto_a

    .line 1196
    :sswitch_36
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_53

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v2, :cond_53

    .line 1197
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1198
    neg-int v1, v1

    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(II)V

    goto :goto_a

    :cond_53
    move v0, v1

    .line 1202
    goto :goto_a

    .line 1186
    nop

    :sswitch_data_56
    .sparse-switch
        0x1000 -> :sswitch_10
        0x2000 -> :sswitch_36
    .end sparse-switch
.end method

.method q()V
    .registers 14

    .prologue
    const/16 v12, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4952
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    move v1, v6

    move v2, v6

    .line 4955
    :goto_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v0

    if-ge v1, v0, :cond_9a

    .line 4956
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->b(I)J

    move-result-wide v4

    .line 4957
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4959
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 4960
    cmp-long v0, v4, v8

    if-eqz v0, :cond_8e

    .line 4962
    add-int/lit8 v0, v3, -0x14

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4963
    add-int/lit8 v8, v3, 0x14

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 4965
    :goto_3d
    if-ge v0, v8, :cond_ac

    .line 4966
    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v9, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 4967
    cmp-long v9, v4, v10

    if-nez v9, :cond_8b

    .line 4969
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 4970
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/support/v4/util/LongSparseArray;->a(ILjava/lang/Object;)V

    move v0, v7

    .line 4975
    :goto_5c
    if-nez v0, :cond_84

    .line 4976
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/util/LongSparseArray;->b(J)V

    .line 4977
    add-int/lit8 v0, v1, -0x1

    .line 4978
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 4981
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v12, :cond_82

    .line 4982
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v1, :cond_82

    .line 4983
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/ActionMode;

    invoke-virtual/range {v1 .. v6}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a(Landroid/view/ActionMode;IJZ)V

    :cond_82
    move v1, v0

    move v2, v7

    :cond_84
    move v0, v1

    move v1, v2

    .line 4955
    :goto_86
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_b

    .line 4965
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 4988
    :cond_8e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    move v0, v1

    move v1, v2

    goto :goto_86

    .line 4992
    :cond_9a
    if-eqz v2, :cond_ab

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_ab

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v12, :cond_ab

    .line 4993
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4995
    :cond_ab
    return-void

    :cond_ac
    move v0, v6

    goto :goto_5c
.end method

.method protected r()V
    .registers 12

    .prologue
    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 5002
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 5003
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:I

    .line 5004
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:I

    .line 5006
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_20

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5007
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->q()V

    .line 5011
    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->c()V

    .line 5013
    if-lez v5, :cond_ea

    .line 5018
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    if-eqz v0, :cond_73

    .line 5020
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 5021
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 5023
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 5024
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5140
    :cond_37
    :goto_37
    return-void

    .line 5026
    :cond_38
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-ne v0, v4, :cond_6e

    .line 5027
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:Z

    if-eqz v0, :cond_45

    .line 5028
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:Z

    .line 5029
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_37

    .line 5032
    :cond_45
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v7

    .line 5033
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 5034
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5035
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 5036
    :goto_5f
    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v7, v8

    if-lt v7, v6, :cond_6b

    if-gt v0, v1, :cond_6b

    .line 5038
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_37

    :cond_69
    move v0, v1

    .line 5035
    goto :goto_5f

    .line 5043
    :cond_6b
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    .line 5046
    :cond_6e
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    packed-switch v0, :pswitch_data_10c

    .line 5094
    :cond_73
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 5096
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    .line 5099
    if-lt v0, v5, :cond_81

    .line 5100
    add-int/lit8 v0, v5, -0x1

    .line 5102
    :cond_81
    if-gez v0, :cond_84

    move v0, v2

    .line 5107
    :cond_84
    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)I

    move-result v1

    .line 5109
    if-ltz v1, :cond_db

    .line 5110
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto :goto_37

    .line 5048
    :pswitch_8e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 5053
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5054
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v5, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    goto :goto_37

    .line 5060
    :cond_a5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()I

    move-result v0

    .line 5061
    if-ltz v0, :cond_73

    .line 5063
    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)I

    move-result v1

    .line 5064
    if-ne v1, v0, :cond_73

    .line 5066
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 5068
    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:J

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_c5

    .line 5071
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5079
    :goto_c0
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_37

    .line 5075
    :cond_c5
    const/4 v1, 0x2

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_c0

    .line 5087
    :pswitch_c9
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5088
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v5, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    goto/16 :goto_37

    .line 5114
    :cond_db
    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)I

    move-result v0

    .line 5115
    if-ltz v0, :cond_ea

    .line 5116
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_37

    .line 5123
    :cond_e6
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    if-gez v0, :cond_37

    .line 5131
    :cond_ea
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    if-eqz v0, :cond_109

    move v0, v3

    :goto_ef
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5132
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    .line 5133
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:J

    .line 5134
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    .line 5135
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:J

    .line 5136
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 5137
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 5138
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 5139
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->w()V

    goto/16 :goto_37

    :cond_109
    move v0, v4

    .line 5131
    goto :goto_ef

    .line 5046
    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_c9
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .prologue
    .line 3521
    if-eqz p1, :cond_5

    .line 3522
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F()V

    .line 3524
    :cond_5
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3525
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1621
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    if-nez v0, :cond_b

    .line 1622
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->requestLayout()V

    .line 1624
    :cond_b
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 5

    .prologue
    .line 1142
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_19

    .line 1143
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1144
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v1

    .line 1145
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aZ:I

    if-ne v2, v0, :cond_15

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    if-ne v2, v1, :cond_15

    .line 1154
    :goto_14
    return-void

    .line 1149
    :cond_15
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aZ:I

    .line 1150
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    .line 1153
    :cond_19
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_14
.end method

.method public setCacheColorHint(I)V
    .registers 5

    .prologue
    .line 5278
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    if-eq p1, v0, :cond_1c

    .line 5279
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    .line 5280
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 5281
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_17

    .line 5282
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5281
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5284
    :cond_17
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$RecycleBin;->f(I)V

    .line 5286
    :cond_1c
    return-void
.end method

.method public setChoiceMode(I)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 1017
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    .line 1019
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1a

    .line 1020
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 1022
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_17

    .line 1023
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1025
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    .line 1029
    :cond_1a
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_50

    .line 1030
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_29

    .line 1031
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    .line 1033
    :cond_29
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_40

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1034
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    .line 1037
    :cond_40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_50

    .line 1038
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_50

    .line 1039
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->a()V

    .line 1040
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V

    .line 1044
    :cond_50
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2

    .prologue
    .line 2200
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 2201
    return-void
.end method

.method public setFriction(F)V
    .registers 3

    .prologue
    .line 4358
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 4359
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    .line 4361
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a(Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;)Lit/sephiroth/android/library/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/OverScroller;->b(F)V

    .line 4362
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 11

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 848
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-nez v0, :cond_a

    .line 916
    :cond_9
    :goto_9
    return-void

    .line 853
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_39

    .line 854
    if-eqz p2, :cond_39

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v3, :cond_39

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-nez v0, :cond_39

    .line 855
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;

    invoke-virtual {v0}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 857
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_2f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    .line 865
    :cond_39
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_46

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_c2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v3, :cond_c2

    .line 867
    :cond_46
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 868
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 869
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 870
    if-eqz p2, :cond_af

    .line 871
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 876
    :cond_7c
    :goto_7c
    if-eq v0, p2, :cond_86

    .line 877
    if-eqz p2, :cond_bb

    .line 878
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 883
    :cond_86
    :goto_86
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_9d

    .line 884
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 885
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lit/sephiroth/android/library/util/v11/MultiChoiceModeWrapper;->a(Landroid/view/ActionMode;IJZ)V

    .line 911
    :cond_9d
    :goto_9d
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    if-nez v0, :cond_9

    .line 912
    iput-boolean v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 913
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()V

    .line 914
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    goto/16 :goto_9

    .line 873
    :cond_af
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->b(J)V

    goto :goto_7c

    .line 880
    :cond_bb
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_86

    .line 888
    :cond_c2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_102

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_102

    move v0, v7

    .line 891
    :goto_cf
    if-nez p2, :cond_d7

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 892
    :cond_d7
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->c()V

    .line 893
    if-eqz v0, :cond_e3

    .line 894
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->c()V

    .line 899
    :cond_e3
    if-eqz p2, :cond_104

    .line 900
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 901
    if-eqz v0, :cond_ff

    .line 902
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 904
    :cond_ff
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_9d

    :cond_102
    move v0, v1

    .line 888
    goto :goto_cf

    .line 905
    :cond_104
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->b()I

    move-result v0

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 906
    :cond_11a
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_9d
.end method

.method public setOverScrollEffectPadding(II)V
    .registers 3

    .prologue
    .line 3494
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    .line 3495
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:I

    .line 3496
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 704
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    .line 705
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    if-nez v0, :cond_1b

    .line 706
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 707
    new-instance v1, Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-direct {v1, v0, v2}, Lit/sephiroth/android/library/widget/EdgeEffect;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    .line 708
    new-instance v1, Lit/sephiroth/android/library/widget/EdgeEffect;

    invoke-direct {v1, v0, v2}, Lit/sephiroth/android/library/widget/EdgeEffect;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    .line 714
    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->setOverScrollMode(I)V

    .line 715
    return-void

    .line 711
    :cond_1f
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/EdgeEffect;

    .line 712
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Lit/sephiroth/android/library/widget/EdgeEffect;

    goto :goto_1b
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3

    .prologue
    .line 1235
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 1236
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    .line 1238
    :cond_9
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    .line 1239
    return-void
.end method

.method public abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3

    .prologue
    .line 2212
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2213
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2

    .prologue
    .line 1101
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    .line 1102
    return-void
.end method

.method public setStackFromRight(Z)V
    .registers 3

    .prologue
    .line 1275
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    if-eq v0, p1, :cond_9

    .line 1276
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    .line 1277
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->c()V

    .line 1279
    :cond_9
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2

    .prologue
    .line 5250
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    .line 5251
    return-void
.end method

.method public setVelocityScale(F)V
    .registers 2

    .prologue
    .line 4371
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:F

    .line 4372
    return-void
.end method

.method protected setVisibleRangeHint(II)V
    .registers 3

    .prologue
    .line 5343
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 2616
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;)I

    move-result v3

    .line 2617
    if-ltz v3, :cond_2d

    .line 2618
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2621
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_19

    .line 2622
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView$OnItemLongClickListener;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 2625
    :cond_19
    if-nez v0, :cond_2d

    .line 2626
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2629
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2634
    :cond_2d
    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 2341
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
