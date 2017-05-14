.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# static fields
.field private static final a:[I

.field private static final ai:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Landroid/support/v4/widget/EdgeEffectCompat;

.field private S:Landroid/support/v4/widget/EdgeEffectCompat;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private ac:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private af:Ljava/lang/reflect/Method;

.field private ag:I

.field private ah:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final aj:Ljava/lang/Runnable;

.field private ak:I

.field private b:I

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final g:Landroid/graphics/Rect;

.field private h:Landroid/support/v4/view/PagerAdapter;

.field private i:I

.field private j:I

.field private k:Landroid/os/Parcelable;

.field private l:Ljava/lang/ClassLoader;

.field private m:Landroid/widget/Scroller;

.field private n:Z

.field private o:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    .line 142
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->c:Ljava/util/Comparator;

    .line 149
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->d:Landroid/view/animation/Interpolator;

    .line 253
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->ai:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 393
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;

    .line 164
    iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 165
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;

    .line 166
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;

    .line 181
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->t:F

    .line 182
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 191
    iput v3, p0, Landroid/support/v4/view/ViewPager;->A:I

    .line 209
    iput v1, p0, Landroid/support/v4/view/ViewPager;->K:I

    .line 236
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->T:Z

    .line 237
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->U:Z

    .line 271
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/lang/Runnable;

    .line 279
    iput v2, p0, Landroid/support/v4/view/ViewPager;->ak:I

    .line 394
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 398
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;

    .line 164
    iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 165
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;

    .line 166
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;

    .line 181
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->t:F

    .line 182
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 191
    iput v3, p0, Landroid/support/v4/view/ViewPager;->A:I

    .line 209
    iput v1, p0, Landroid/support/v4/view/ViewPager;->K:I

    .line 236
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->T:Z

    .line 237
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->U:Z

    .line 271
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/lang/Runnable;

    .line 279
    iput v2, p0, Landroid/support/v4/view/ViewPager;->ak:I

    .line 399
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 400
    return-void
.end method

.method private a(IFII)I
    .registers 8

    .prologue
    .line 2395
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->O:I

    if-le v0, v1, :cond_43

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->M:I

    if-le v0, v1, :cond_43

    .line 2396
    if-lez p3, :cond_40

    .line 2402
    :goto_12
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 2403
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2404
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2407
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2410
    :cond_3f
    return p1

    .line 2396
    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 2398
    :cond_43
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-lt p1, v0, :cond_4e

    const v0, 0x3ecccccd    # 0.4f

    .line 2399
    :goto_4a
    add-float/2addr v0, p2

    float-to-int v0, v0

    add-int/2addr p1, v0

    goto :goto_12

    .line 2398
    :cond_4e
    const v0, 0x3f19999a    # 0.6f

    goto :goto_4a
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 2844
    if-nez p1, :cond_5e

    .line 2845
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2847
    :goto_8
    if-nez p2, :cond_f

    .line 2848
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2866
    :goto_e
    return-object v0

    .line 2851
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2852
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2853
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2854
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2856
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2857
    :goto_2b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5c

    if-eq v0, p0, :cond_5c

    .line 2858
    check-cast v0, Landroid/view/ViewGroup;

    .line 2859
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2860
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2861
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2862
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2864
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2b

    :cond_5c
    move-object v0, v1

    .line 2866
    goto :goto_e

    :cond_5e
    move-object v1, p1

    goto :goto_8
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method private a(IIII)V
    .registers 8

    .prologue
    .line 1647
    if-lez p2, :cond_4c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1648
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1649
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1670
    :cond_20
    :goto_20
    return-void

    .line 1651
    :cond_21
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1652
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    .line 1654
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1655
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 1656
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1658
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_20

    .line 1661
    :cond_4c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1662
    if-eqz v0, :cond_7c

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->u:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1664
    :goto_5c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1665
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 1666
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1667
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_20

    .line 1662
    :cond_7c
    const/4 v0, 0x0

    goto :goto_5c
.end method

.method private a(IZIZ)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 677
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_36

    .line 680
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 681
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->t:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 682
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 681
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 684
    :goto_1c
    if-eqz p2, :cond_27

    .line 685
    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/view/ViewPager;->a(III)V

    .line 686
    if-eqz p4, :cond_26

    .line 687
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->e(I)V

    .line 697
    :cond_26
    :goto_26
    return-void

    .line 690
    :cond_27
    if-eqz p4, :cond_2c

    .line 691
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->e(I)V

    .line 693
    :cond_2c
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 694
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 695
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    goto :goto_26

    :cond_36
    move v0, v1

    goto :goto_1c
.end method

.method private a(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1294
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v7

    .line 1295
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 1296
    if-lez v0, :cond_55

    iget v1, p0, Landroid/support/v4/view/ViewPager;->p:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 1298
    :goto_16
    if-eqz p3, :cond_b7

    .line 1299
    iget v0, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 1301
    iget v1, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ge v0, v1, :cond_70

    .line 1304
    iget v1, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    iget v2, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v1, v2

    add-float v3, v1, v6

    .line 1305
    add-int/lit8 v2, v0, 0x1

    move v1, v4

    .line 1306
    :goto_28
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-gt v2, v0, :cond_b7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b7

    .line 1307
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1308
    :goto_3c
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-le v2, v5, :cond_58

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_58

    .line 1309
    add-int/lit8 v1, v1, 0x1

    .line 1310
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_3c

    .line 1296
    :cond_55
    const/4 v0, 0x0

    move v6, v0

    goto :goto_16

    .line 1312
    :cond_58
    :goto_58
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ge v2, v5, :cond_67

    .line 1315
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/PagerAdapter;->d(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 1316
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 1318
    :cond_67
    iput v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 1319
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v0, v6

    add-float/2addr v3, v0

    .line 1306
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1321
    :cond_70
    iget v1, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-le v0, v1, :cond_b7

    .line 1322
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1324
    iget v3, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 1325
    add-int/lit8 v2, v0, -0x1

    .line 1326
    :goto_80
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-lt v2, v0, :cond_b7

    if-ltz v1, :cond_b7

    .line 1327
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1328
    :goto_8e
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ge v2, v5, :cond_9f

    if-lez v1, :cond_9f

    .line 1329
    add-int/lit8 v1, v1, -0x1

    .line 1330
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_8e

    .line 1332
    :cond_9f
    :goto_9f
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-le v2, v5, :cond_ae

    .line 1335
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/PagerAdapter;->d(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1336
    add-int/lit8 v2, v2, -0x1

    goto :goto_9f

    .line 1338
    :cond_ae
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1339
    iput v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 1326
    add-int/lit8 v2, v2, -0x1

    goto :goto_80

    .line 1345
    :cond_b7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1346
    iget v2, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 1347
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    add-int/lit8 v1, v0, -0x1

    .line 1348
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-nez v0, :cond_f9

    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    :goto_c9
    iput v0, p0, Landroid/support/v4/view/ViewPager;->t:F

    .line 1349
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_fd

    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    iget v3, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_d7
    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 1352
    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_dc
    if-ltz v5, :cond_114

    .line 1353
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    move v3, v2

    .line 1354
    :goto_e7
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-le v1, v2, :cond_101

    .line 1355
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v9, v1}, Landroid/support/v4/view/PagerAdapter;->d(I)F

    move-result v1

    add-float/2addr v1, v6

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_e7

    .line 1348
    :cond_f9
    const v0, -0x800001

    goto :goto_c9

    .line 1349
    :cond_fd
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_d7

    .line 1357
    :cond_101
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v2, v6

    sub-float v2, v3, v2

    .line 1358
    iput v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 1359
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-nez v0, :cond_10e

    iput v2, p0, Landroid/support/v4/view/ViewPager;->t:F

    .line 1352
    :cond_10e
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    move v5, v0

    goto :goto_dc

    .line 1361
    :cond_114
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    iget v1, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    .line 1362
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 1364
    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_122
    if-ge v5, v8, :cond_157

    .line 1365
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    move v3, v2

    .line 1366
    :goto_12d
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ge v1, v2, :cond_13e

    .line 1367
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v9, v1}, Landroid/support/v4/view/PagerAdapter;->d(I)F

    move-result v1

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_12d

    .line 1369
    :cond_13e
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    add-int/lit8 v9, v7, -0x1

    if-ne v2, v9, :cond_14a

    .line 1370
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v10

    iput v2, p0, Landroid/support/v4/view/ViewPager;->u:F

    .line 1372
    :cond_14a
    iput v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 1373
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v0, v6

    add-float v2, v3, v0

    .line 1364
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_122

    .line 1376
    :cond_157
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->U:Z

    .line 1377
    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPager;I)V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 2634
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2635
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2636
    iget v2, p0, Landroid/support/v4/view/ViewPager;->K:I

    if-ne v1, v2, :cond_24

    .line 2639
    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 2640
    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2641
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    .line 2642
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_24

    .line 2643
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2646
    :cond_24
    return-void

    .line 2639
    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Z)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1966
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5c

    move v0, v4

    .line 1967
    :goto_8
    if-eqz v0, :cond_3d

    .line 1969
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1970
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5e

    move v1, v4

    .line 1971
    :goto_16
    if-eqz v1, :cond_3d

    .line 1972
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1973
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1974
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 1975
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1976
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1977
    if-ne v1, v5, :cond_35

    if-eq v3, v6, :cond_3d

    .line 1978
    :cond_35
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1979
    if-eq v5, v1, :cond_3d

    .line 1980
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->d(I)Z

    .line 1985
    :cond_3d
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    move v1, v2

    move v3, v0

    .line 1986
    :goto_41
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_60

    .line 1987
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1988
    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    if-eqz v5, :cond_58

    .line 1990
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    move v3, v4

    .line 1986
    :cond_58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    :cond_5c
    move v0, v2

    .line 1966
    goto :goto_8

    :cond_5e
    move v1, v2

    .line 1970
    goto :goto_16

    .line 1993
    :cond_60
    if-eqz v3, :cond_69

    .line 1994
    if-eqz p1, :cond_6a

    .line 1995
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2000
    :cond_69
    :goto_69
    return-void

    .line 1997
    :cond_6a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_69
.end method

.method private a(FF)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 2003
    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->E:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPager;)I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    return v0
.end method

.method private b(IFI)V
    .registers 7

    .prologue
    .line 1915
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1916
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1918
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 1919
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_28

    .line 1920
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1921
    if-eqz v0, :cond_24

    .line 1922
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1919
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 1926
    :cond_28
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_31

    .line 1927
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1929
    :cond_31
    return-void
.end method

.method private b(Z)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2007
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    .line 2008
    :goto_6
    if-ge v2, v3, :cond_19

    .line 2009
    if-eqz p1, :cond_17

    const/4 v0, 0x2

    .line 2011
    :goto_b
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 2008
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_17
    move v0, v1

    .line 2009
    goto :goto_b

    .line 2013
    :cond_19
    return-void
.end method

.method private b(F)Z
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2301
    .line 2303
    iget v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    sub-float/2addr v0, p1

    .line 2304
    iput p1, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2306
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2307
    add-float v5, v1, v0

    .line 2308
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v7

    .line 2310
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->t:F

    mul-float v4, v0, v1

    .line 2311
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->u:F

    mul-float v6, v0, v1

    .line 2315
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2316
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2317
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-eqz v8, :cond_93

    .line 2319
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 2321
    :goto_3e
    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_91

    .line 2323
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 2326
    :goto_4f
    cmpg-float v6, v5, v4

    if-gez v6, :cond_79

    .line 2327
    if-eqz v0, :cond_63

    .line 2328
    sub-float v0, v4, v5

    .line 2329
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    move-result v2

    .line 2340
    :cond_63
    :goto_63
    iget v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2341
    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2342
    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    .line 2344
    return v2

    .line 2332
    :cond_79
    cmpl-float v0, v5, v1

    if-lez v0, :cond_8f

    .line 2333
    if-eqz v3, :cond_8d

    .line 2334
    sub-float v0, v5, v1

    .line 2335
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->S:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    move-result v2

    :cond_8d
    move v4, v1

    .line 2337
    goto :goto_63

    :cond_8f
    move v4, v5

    goto :goto_63

    :cond_91
    move v1, v6

    goto :goto_4f

    :cond_93
    move v0, v3

    goto :goto_3e
.end method

.method private c(Z)V
    .registers 3

    .prologue
    .line 2294
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2295
    if-eqz v0, :cond_9

    .line 2296
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2298
    :cond_9
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1491
    const-class v1, Landroid/support/v4/view/ViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private d(I)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 1810
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_21

    .line 1811
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->T:Z

    if-eqz v1, :cond_e

    .line 1839
    :cond_d
    :goto_d
    return v0

    .line 1816
    :cond_e
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 1817
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 1818
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->V:Z

    if-nez v1, :cond_d

    .line 1819
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1824
    :cond_21
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->k()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 1825
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 1826
    iget v3, p0, Landroid/support/v4/view/ViewPager;->p:I

    add-int/2addr v3, v2

    .line 1827
    iget v4, p0, Landroid/support/v4/view/ViewPager;->p:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1828
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 1829
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    sub-float/2addr v2, v6

    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1831
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1833
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 1834
    invoke-virtual {p0, v5, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 1835
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    if-nez v0, :cond_54

    .line 1836
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    :cond_54
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private e(I)V
    .registers 5

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1933
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1935
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 1936
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_28

    .line 1937
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1938
    if-eqz v0, :cond_24

    .line 1939
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1936
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 1943
    :cond_28
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_31

    .line 1944
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1946
    :cond_31
    return-void
.end method

.method private f(I)V
    .registers 5

    .prologue
    .line 1949
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1950
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1952
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 1953
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_28

    .line 1954
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1955
    if-eqz v0, :cond_24

    .line 1956
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1953
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 1960
    :cond_28
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_31

    .line 1961
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1963
    :cond_31
    return-void
.end method

.method static synthetic g()[I
    .registers 1

    .prologue
    .line 110
    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private getClientWidth()I
    .registers 3

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 557
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 558
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 560
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_1b

    .line 561
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 562
    add-int/lit8 v1, v1, -0x1

    .line 557
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 565
    :cond_1f
    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 1278
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ag:I

    if-eqz v0, :cond_2f

    .line 1279
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ah:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ah:Ljava/util/ArrayList;

    .line 1284
    :goto_f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1285
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_28

    .line 1286
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1287
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ah:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1282
    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_f

    .line 1289
    :cond_28
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ah:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->ai:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1291
    :cond_2f
    return-void
.end method

.method private j()Z
    .registers 3

    .prologue
    .line 2287
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    .line 2288
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->l()V

    .line 2289
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->S:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2290
    return v0
.end method

.method private k()Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2352
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 2353
    if-lez v1, :cond_6e

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 2354
    :goto_10
    if-lez v1, :cond_70

    iget v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2355
    :goto_18
    const/4 v5, -0x1

    .line 2358
    const/4 v4, 0x1

    .line 2360
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 2361
    :goto_21
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6d

    .line 2362
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2364
    if-nez v5, :cond_7f

    iget v10, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_7f

    .line 2366
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2367
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 2368
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 2369
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->d(I)F

    move-result v6

    iput v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    .line 2370
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 2372
    :goto_52
    iget v6, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 2375
    iget v7, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 2376
    if-nez v5, :cond_5e

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_6d

    .line 2377
    :cond_5e
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_6c

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_72

    :cond_6c
    move-object v4, v2

    .line 2390
    :cond_6d
    return-object v4

    :cond_6e
    move v9, v2

    .line 2353
    goto :goto_10

    :cond_70
    move v1, v2

    .line 2354
    goto :goto_18

    .line 2384
    :cond_72
    iget v5, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 2386
    iget v4, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    .line 2361
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_21

    :cond_7f
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_52
.end method

.method private l()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2649
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->B:Z

    .line 2650
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->C:Z

    .line 2652
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2653
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2654
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    .line 2656
    :cond_11
    return-void
.end method

.method private setScrollState(I)V
    .registers 3

    .prologue
    .line 490
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ak:I

    if-ne v0, p1, :cond_5

    .line 500
    :goto_4
    return-void

    .line 494
    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ak:I

    .line 495
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_11

    .line 497
    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Z)V

    .line 499
    :cond_11
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->f(I)V

    goto :goto_4

    .line 497
    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    .prologue
    .line 2659
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->y:Z

    if-eq v0, p1, :cond_6

    .line 2660
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->y:Z

    .line 2671
    :cond_6
    return-void
.end method


# virtual methods
.method a(F)F
    .registers 6

    .prologue
    .line 923
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 924
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 925
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 5

    .prologue
    .line 1004
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 1005
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 1006
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    .line 1007
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->d(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    .line 1008
    if-ltz p2, :cond_21

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_27

    .line 1009
    :cond_21
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    :goto_26
    return-object v0

    .line 1011
    :cond_27
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26
.end method

.method a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 6

    .prologue
    .line 1504
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 1505
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1506
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1510
    :goto_1c
    return-object v0

    .line 1504
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1510
    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method a()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 404
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 405
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 406
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->d:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    .line 408
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 409
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 411
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->F:I

    .line 412
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 413
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->N:I

    .line 414
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 415
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->S:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 417
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->O:I

    .line 418
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->P:I

    .line 419
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->D:I

    .line 421
    new-instance v0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 423
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6b

    .line 425
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 429
    :cond_6b
    new-instance v0, Landroid/support/v4/view/ViewPager$4;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$4;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 477
    return-void
.end method

.method a(I)V
    .registers 19

    .prologue
    .line 1092
    const/4 v2, 0x0

    .line 1093
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->i:I

    move/from16 v0, p1

    if-eq v3, v0, :cond_328

    .line 1094
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->i:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1095
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->i:I

    move-object v3, v2

    .line 1098
    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-nez v2, :cond_24

    .line 1099
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->i()V

    .line 1275
    :cond_23
    :goto_23
    return-void

    .line 1107
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v2, :cond_2e

    .line 1109
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->i()V

    goto :goto_23

    .line 1116
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;)V

    .line 1122
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->A:I

    .line 1123
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->i:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1124
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v11

    .line 1125
    add-int/lit8 v4, v11, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->i:I

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1127
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->b:I

    if-eq v11, v2, :cond_d0

    .line 1130
    :try_start_64
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_6f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_64 .. :try_end_6f} :catch_c6

    move-result-object v2

    .line 1134
    :goto_70
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1138
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    .line 1139
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    :catch_c6
    move-exception v2

    .line 1132
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_70

    .line 1144
    :cond_d0
    const/4 v5, 0x0

    .line 1145
    const/4 v2, 0x0

    move v4, v2

    :goto_d3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_325

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1147
    iget v6, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->i:I

    if-lt v6, v7, :cond_1c1

    .line 1148
    iget v6, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->i:I

    if-ne v6, v7, :cond_325

    .line 1153
    :goto_f7
    if-nez v2, :cond_322

    if-lez v11, :cond_322

    .line 1154
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->i:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    move-object v9, v2

    .line 1160
    :goto_106
    if-eqz v9, :cond_172

    .line 1161
    const/4 v8, 0x0

    .line 1162
    add-int/lit8 v7, v4, -0x1

    .line 1163
    if-ltz v7, :cond_1c6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1164
    :goto_117
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v13

    .line 1165
    if-gtz v13, :cond_1c9

    const/4 v5, 0x0

    .line 1167
    :goto_11e
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->i:I

    add-int/lit8 v6, v6, -0x1

    move v15, v6

    move v6, v8

    move v8, v15

    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    :goto_12c
    if-ltz v8, :cond_136

    .line 1168
    cmpl-float v14, v6, v5

    if-ltz v14, :cond_208

    if-ge v8, v10, :cond_208

    .line 1169
    if-nez v2, :cond_1d8

    .line 1195
    :cond_136
    iget v5, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    .line 1196
    add-int/lit8 v8, v7, 0x1

    .line 1197
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v5, v2

    if-gez v2, :cond_16d

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_23e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object v6, v2

    .line 1199
    :goto_155
    if-gtz v13, :cond_241

    const/4 v2, 0x0

    move v4, v2

    .line 1201
    :goto_159
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->i:I

    add-int/lit8 v2, v2, 0x1

    move v15, v2

    move-object v2, v6

    move v6, v8

    move v8, v15

    :goto_163
    if-ge v8, v11, :cond_16d

    .line 1202
    cmpl-float v10, v5, v4

    if-ltz v10, :cond_288

    if-le v8, v12, :cond_288

    .line 1203
    if-nez v2, :cond_24e

    .line 1228
    :cond_16d
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    .line 1238
    :cond_172
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->i:I

    if-eqz v9, :cond_2d2

    iget-object v2, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    :goto_17e
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v2}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/view/ViewGroup;)V

    .line 1244
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1245
    const/4 v2, 0x0

    move v3, v2

    :goto_192
    if-ge v3, v4, :cond_2d5

    .line 1246
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1247
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1248
    iput v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->f:I

    .line 1249
    iget-boolean v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v6, :cond_1bd

    iget v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1bd

    .line 1251
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    .line 1252
    if-eqz v5, :cond_1bd

    .line 1253
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    iput v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    .line 1254
    iget v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iput v5, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->e:I

    .line 1245
    :cond_1bd
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_192

    .line 1145
    :cond_1c1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_d3

    .line 1163
    :cond_1c6
    const/4 v2, 0x0

    goto/16 :goto_117

    .line 1165
    :cond_1c9
    const/high16 v5, 0x40000000    # 2.0f

    iget v6, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    sub-float/2addr v5, v6

    .line 1166
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v14, v13

    div-float/2addr v6, v14

    add-float/2addr v5, v6

    goto/16 :goto_11e

    .line 1172
    :cond_1d8
    iget v14, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ne v8, v14, :cond_202

    iget-boolean v14, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    if-nez v14, :cond_202

    .line 1173
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1174
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v8, v2}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1179
    add-int/lit8 v4, v4, -0x1

    .line 1180
    add-int/lit8 v7, v7, -0x1

    .line 1181
    if-ltz v4, :cond_206

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1167
    :cond_202
    :goto_202
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_12c

    .line 1181
    :cond_206
    const/4 v2, 0x0

    goto :goto_202

    .line 1183
    :cond_208
    if-eqz v2, :cond_222

    iget v14, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ne v8, v14, :cond_222

    .line 1184
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v6, v2

    .line 1185
    add-int/lit8 v4, v4, -0x1

    .line 1186
    if-ltz v4, :cond_220

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_202

    :cond_220
    const/4 v2, 0x0

    goto :goto_202

    .line 1188
    :cond_222
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1189
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v6, v2

    .line 1190
    add-int/lit8 v7, v7, 0x1

    .line 1191
    if-ltz v4, :cond_23c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_202

    :cond_23c
    const/4 v2, 0x0

    goto :goto_202

    .line 1198
    :cond_23e
    const/4 v6, 0x0

    goto/16 :goto_155

    .line 1200
    :cond_241
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v13

    div-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v2, v4

    move v4, v2

    goto/16 :goto_159

    .line 1206
    :cond_24e
    iget v10, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ne v8, v10, :cond_31d

    iget-boolean v10, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    if-nez v10, :cond_31d

    .line 1207
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1208
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v8, v2}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_286

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_27c
    move v15, v5

    move-object v5, v2

    move v2, v15

    .line 1201
    :goto_27f
    add-int/lit8 v8, v8, 0x1

    move v15, v2

    move-object v2, v5

    move v5, v15

    goto/16 :goto_163

    .line 1213
    :cond_286
    const/4 v2, 0x0

    goto :goto_27c

    .line 1215
    :cond_288
    if-eqz v2, :cond_2ad

    iget v10, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ne v8, v10, :cond_2ad

    .line 1216
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v5, v2

    .line 1217
    add-int/lit8 v6, v6, 0x1

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_2ab

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_2a7
    move v15, v5

    move-object v5, v2

    move v2, v15

    goto :goto_27f

    :cond_2ab
    const/4 v2, 0x0

    goto :goto_2a7

    .line 1220
    :cond_2ad
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1221
    add-int/lit8 v6, v6, 0x1

    .line 1222
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v5, v2

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_2d0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    :goto_2cc
    move v15, v5

    move-object v5, v2

    move v2, v15

    goto :goto_27f

    :cond_2d0
    const/4 v2, 0x0

    goto :goto_2cc

    .line 1238
    :cond_2d2
    const/4 v2, 0x0

    goto/16 :goto_17e

    .line 1258
    :cond_2d5
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->i()V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1261
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1262
    if-eqz v2, :cond_31b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1263
    :goto_2ea
    if-eqz v2, :cond_2f4

    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->i:I

    if-eq v2, v3, :cond_23

    .line 1264
    :cond_2f4
    const/4 v2, 0x0

    :goto_2f5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 1265
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1266
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 1267
    if-eqz v4, :cond_318

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->i:I

    if-ne v4, v5, :cond_318

    .line 1268
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1264
    :cond_318
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f5

    .line 1262
    :cond_31b
    const/4 v2, 0x0

    goto :goto_2ea

    :cond_31d
    move v15, v5

    move-object v5, v2

    move v2, v15

    goto/16 :goto_27f

    :cond_322
    move-object v9, v2

    goto/16 :goto_106

    :cond_325
    move-object v2, v5

    goto/16 :goto_f7

    :cond_328
    move-object v3, v2

    goto/16 :goto_1a
.end method

.method protected a(IFI)V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 1857
    iget v0, p0, Landroid/support/v4/view/ViewPager;->W:I

    if-lez v0, :cond_75

    .line 1858
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    .line 1859
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1860
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1861
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    .line 1862
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1863
    :goto_1a
    if-ge v4, v7, :cond_75

    .line 1864
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1865
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1866
    iget-boolean v9, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v9, :cond_34

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1863
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_1a

    .line 1868
    :cond_34
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v0, v0, 0x7

    .line 1870
    packed-switch v0, :pswitch_data_b0

    :pswitch_3b
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1887
    :goto_3f
    add-int/2addr v0, v5

    .line 1889
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1890
    if-eqz v0, :cond_2d

    .line 1891
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2d

    .line 1876
    :pswitch_4b
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1877
    goto :goto_3f

    .line 1879
    :pswitch_55
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1881
    goto :goto_3f

    .line 1883
    :pswitch_65
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1884
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_3f

    .line 1896
    :cond_75
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->b(IFI)V

    .line 1898
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_ab

    .line 1899
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1900
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    .line 1901
    :goto_85
    if-ge v1, v4, :cond_ab

    .line 1902
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1903
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1905
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_99

    .line 1901
    :goto_95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_85

    .line 1906
    :cond_99
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 1907
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v5, v3, v0}, Landroid/support/v4/view/ViewPager$PageTransformer;->a(Landroid/view/View;F)V

    goto :goto_95

    .line 1911
    :cond_ab
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    .line 1912
    return-void

    .line 1870
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_55
        :pswitch_3b
        :pswitch_4b
        :pswitch_3b
        :pswitch_65
    .end packed-switch
.end method

.method a(III)V
    .registers 14

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 946
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 948
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1001
    :goto_d
    return-void

    .line 953
    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v5

    .line 954
    :goto_1b
    if-eqz v0, :cond_4f

    .line 959
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->n:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 961
    :goto_27
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 962
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    move v1, v0

    .line 966
    :goto_30
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 967
    sub-int v3, p1, v1

    .line 968
    sub-int v4, p2, v2

    .line 969
    if-nez v3, :cond_54

    if-nez v4, :cond_54

    .line 970
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 971
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 972
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_d

    :cond_46
    move v0, v6

    .line 953
    goto :goto_1b

    .line 959
    :cond_48
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    goto :goto_27

    .line 964
    :cond_4f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    goto :goto_30

    .line 976
    :cond_54
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 977
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 979
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 980
    div-int/lit8 v5, v0, 0x2

    .line 981
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 982
    int-to-float v8, v5

    int-to-float v5, v5

    .line 983
    invoke-virtual {p0, v7}, Landroid/support/v4/view/ViewPager;->a(F)F

    move-result v7

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    .line 986
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 987
    if-lez v7, :cond_9c

    .line 988
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 994
    :goto_8a
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 998
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->n:Z

    .line 999
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1000
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    goto/16 :goto_d

    .line 990
    :cond_9c
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget v7, p0, Landroid/support/v4/view/ViewPager;->i:I

    invoke-virtual {v5, v7}, Landroid/support/v4/view/PagerAdapter;->d(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 991
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Landroid/support/v4/view/ViewPager;->p:I

    int-to-float v7, v7

    add-float/2addr v0, v7

    div-float v0, v5, v0

    .line 992
    add-float/2addr v0, v9

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_8a
.end method

.method a(IZZ)V
    .registers 5

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 633
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 889
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    .line 890
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 891
    :cond_7
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 892
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 893
    return-void

    .line 891
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Landroid/support/v4/view/PagerAdapter;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_41

    .line 509
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/PagerAdapter;->c(Landroid/database/DataSetObserver;)V

    .line 510
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 511
    :goto_12
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 512
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 513
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 511
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 515
    :cond_2f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/view/ViewGroup;)V

    .line 516
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    .line 518
    iput v2, p0, Landroid/support/v4/view/ViewPager;->i:I

    .line 519
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 522
    :cond_41
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    .line 523
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    .line 524
    iput v2, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 526
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_84

    .line 527
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v0, :cond_56

    .line 528
    new-instance v0, Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v0, p0, v5}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 530
    :cond_56
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerAdapter;->c(Landroid/database/DataSetObserver;)V

    .line 531
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 532
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->T:Z

    .line 533
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->T:Z

    .line 534
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 535
    iget v3, p0, Landroid/support/v4/view/ViewPager;->j:I

    if-ltz v3, :cond_a6

    .line 536
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 537
    iget v0, p0, Landroid/support/v4/view/ViewPager;->j:I

    invoke-virtual {p0, v0, v2, v6}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 538
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 539
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;

    .line 540
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;

    .line 549
    :cond_84
    :goto_84
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/List;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 550
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_96
    if-ge v2, v3, :cond_b0

    .line 551
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v0, p0, v1, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->a(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 541
    :cond_a6
    if-nez v0, :cond_ac

    .line 542
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    goto :goto_84

    .line 544
    :cond_ac
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_84

    .line 554
    :cond_b0
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 710
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 711
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 2745
    const/4 v0, 0x0

    .line 2746
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_f

    .line 2747
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    .line 2767
    :cond_f
    :goto_f
    return v0

    .line 2749
    :sswitch_10
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_f

    .line 2752
    :sswitch_17
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_f

    .line 2755
    :sswitch_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_f

    .line 2758
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2759
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_f

    .line 2760
    :cond_30
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2761
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_f

    .line 2747
    nop

    :sswitch_data_3c
    .sparse-switch
        0x15 -> :sswitch_10
        0x16 -> :sswitch_17
        0x3d -> :sswitch_1e
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .registers 16

    .prologue
    const/4 v2, 0x1

    .line 2708
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5a

    move-object v6, p1

    .line 2709
    check-cast v6, Landroid/view/ViewGroup;

    .line 2710
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2711
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2712
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2714
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_17
    if-ltz v7, :cond_5a

    .line 2717
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2718
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_56

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_56

    add-int v0, p5, v9

    .line 2719
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_56

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_56

    add-int v0, p4, v8

    .line 2720
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    .line 2721
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2720
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2727
    :cond_55
    :goto_55
    return v2

    .line 2714
    :cond_56
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_17

    .line 2727
    :cond_5a
    if-eqz p2, :cond_63

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_63
    const/4 v2, 0x0

    goto :goto_55
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2890
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2892
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2894
    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_2f

    .line 2895
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 2896
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2897
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2898
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2899
    if-eqz v4, :cond_2c

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-ne v4, v5, :cond_2c

    .line 2900
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2895
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2910
    :cond_2f
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_39

    .line 2911
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3f

    .line 2914
    :cond_39
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    .line 2925
    :cond_3f
    :goto_3f
    return-void

    .line 2917
    :cond_40
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    .line 2918
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2921
    :cond_51
    if-eqz p1, :cond_3f

    .line 2922
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
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
    .line 2935
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2936
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2937
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2938
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2939
    if-eqz v2, :cond_20

    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-ne v2, v3, :cond_20

    .line 2940
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2935
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2944
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    .prologue
    .line 1464
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1465
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_a
    move-object v0, v1

    .line 1467
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1469
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    invoke-static {p1}, Landroid/support/v4/view/ViewPager;->c(Landroid/view/View;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    .line 1470
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    if-eqz v2, :cond_30

    .line 1471
    if-eqz v0, :cond_29

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v2, :cond_29

    .line 1472
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_29
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    .line 1475
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1487
    :goto_2f
    return-void

    .line 1477
    :cond_30
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :cond_34
    move-object v1, p3

    goto :goto_a
.end method

.method public b()Landroid/support/v4/view/PagerAdapter;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method b(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 5

    .prologue
    .line 1525
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 1526
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1527
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ne v2, p1, :cond_17

    .line 1531
    :goto_16
    return-object v0

    .line 1525
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1531
    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method b(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 4

    .prologue
    .line 1515
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_12

    .line 1516
    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_e

    .line 1517
    :cond_c
    const/4 v0, 0x0

    .line 1521
    :goto_d
    return-object v0

    .line 1519
    :cond_e
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1521
    :cond_12
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    goto :goto_d
.end method

.method public b(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3

    .prologue
    .line 724
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    if-nez v0, :cond_b

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    .line 727
    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method c()V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1019
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v8

    .line 1020
    iput v8, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 1021
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->A:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_4d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    .line 1022
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_4d

    move v0, v1

    .line 1023
    :goto_21
    iget v3, p0, Landroid/support/v4/view/ViewPager;->i:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 1026
    :goto_27
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_93

    .line 1027
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1028
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroid/support/v4/view/PagerAdapter;->a(Ljava/lang/Object;)I

    move-result v7

    .line 1030
    const/4 v9, -0x1

    if-ne v7, v9, :cond_4f

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 1026
    :goto_46
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_27

    :cond_4d
    move v0, v2

    .line 1022
    goto :goto_21

    .line 1034
    :cond_4f
    const/4 v9, -0x2

    if-ne v7, v9, :cond_81

    .line 1035
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1036
    add-int/lit8 v3, v3, -0x1

    .line 1038
    if-nez v4, :cond_61

    .line 1039
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 1043
    :cond_61
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget-object v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1046
    iget v6, p0, Landroid/support/v4/view/ViewPager;->i:I

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ne v6, v0, :cond_cc

    .line 1048
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    add-int/lit8 v5, v8, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 1049
    goto :goto_46

    .line 1054
    :cond_81
    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-eq v9, v7, :cond_c6

    .line 1055
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v9, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-ne v6, v9, :cond_8c

    move v5, v7

    .line 1060
    :cond_8c
    iput v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 1061
    goto :goto_46

    .line 1065
    :cond_93
    if-eqz v4, :cond_9a

    .line 1066
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/view/ViewGroup;)V

    .line 1069
    :cond_9a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->c:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1071
    if-eqz v6, :cond_c5

    .line 1073
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 1074
    :goto_a8
    if-ge v3, v4, :cond_bf

    .line 1075
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1077
    iget-boolean v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v6, :cond_bb

    .line 1078
    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    .line 1074
    :cond_bb
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a8

    .line 1082
    :cond_bf
    invoke-virtual {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 1083
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 1085
    :cond_c5
    return-void

    :cond_c6
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_46

    :cond_cc
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto/16 :goto_46
.end method

.method public c(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3

    .prologue
    .line 737
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 738
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 740
    :cond_9
    return-void
.end method

.method public c(I)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2778
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2779
    if-ne v2, p0, :cond_3e

    move-object v0, v1

    .line 2806
    :goto_e
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2808
    if-eqz v1, :cond_c9

    if-eq v1, v0, :cond_c9

    .line 2809
    if-ne p1, v7, :cond_a7

    .line 2812
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2813
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2814
    if-eqz v0, :cond_a2

    if-lt v2, v3, :cond_a2

    .line 2815
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()Z

    move-result v0

    .line 2837
    :goto_34
    if-eqz v0, :cond_3d

    .line 2838
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2840
    :cond_3d
    return v0

    .line 2781
    :cond_3e
    if-eqz v2, :cond_e1

    .line 2783
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_44
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e4

    .line 2785
    if-ne v0, p0, :cond_7c

    move v0, v4

    .line 2790
    :goto_4b
    if-nez v0, :cond_e1

    .line 2792
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2793
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2794
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_61
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_81

    .line 2796
    const-string/jumbo v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_61

    .line 2784
    :cond_7c
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_44

    .line 2798
    :cond_81
    const-string/jumbo v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2799
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2798
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2800
    goto/16 :goto_e

    .line 2817
    :cond_a2
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_34

    .line 2819
    :cond_a7
    if-ne p1, v8, :cond_de

    .line 2822
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2823
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2824
    if-eqz v0, :cond_c3

    if-gt v2, v3, :cond_c3

    .line 2825
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    goto/16 :goto_34

    .line 2827
    :cond_c3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_34

    .line 2830
    :cond_c9
    if-eq p1, v7, :cond_cd

    if-ne p1, v4, :cond_d3

    .line 2832
    :cond_cd
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()Z

    move-result v0

    goto/16 :goto_34

    .line 2833
    :cond_d3
    if-eq p1, v8, :cond_d8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_de

    .line 2835
    :cond_d8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    goto/16 :goto_34

    :cond_de
    move v0, v3

    goto/16 :goto_34

    :cond_e1
    move-object v0, v2

    goto/16 :goto_e

    :cond_e4
    move v0, v3

    goto/16 :goto_4b
.end method

.method public canScrollHorizontally(I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2681
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-nez v2, :cond_7

    .line 2692
    :cond_6
    :goto_6
    return v1

    .line 2685
    :cond_7
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 2686
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2687
    if-gez p1, :cond_1c

    .line 2688
    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->t:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_1a

    :goto_18
    move v1, v0

    goto :goto_6

    :cond_1a
    move v0, v1

    goto :goto_18

    .line 2689
    :cond_1c
    if-lez p1, :cond_6

    .line 2690
    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->u:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_27

    :goto_25
    move v1, v0

    goto :goto_6

    :cond_27
    move v0, v1

    goto :goto_25
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 3014
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1785
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->n:Z

    .line 1786
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1787
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1788
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1789
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1790
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1792
    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    .line 1793
    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1794
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1795
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1796
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1801
    :cond_3d
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1807
    :goto_40
    return-void

    .line 1806
    :cond_41
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_40
.end method

.method d()V
    .registers 2

    .prologue
    .line 1088
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 1089
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 2733
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 2982
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_e

    .line 2983
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2999
    :cond_d
    :goto_d
    return v0

    .line 2987
    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2988
    :goto_13
    if-ge v1, v2, :cond_d

    .line 2989
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2990
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    .line 2991
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2992
    if-eqz v4, :cond_33

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-ne v4, v5, :cond_33

    .line 2993
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2994
    const/4 v0, 0x1

    goto :goto_d

    .line 2988
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 2415
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2416
    const/4 v0, 0x0

    .line 2418
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2419
    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_a2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_a2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    .line 2421
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v1

    if-le v1, v2, :cond_a2

    .line 2422
    :cond_19
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    if-nez v1, :cond_59

    .line 2423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2424
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2425
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 2427
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2428
    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->t:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2429
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 2430
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2431
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2433
    :cond_59
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->S:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 2434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2435
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2436
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2438
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2439
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->u:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2440
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->S:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 2441
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->S:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2442
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2449
    :cond_9c
    :goto_9c
    if-eqz v0, :cond_a1

    .line 2451
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 2453
    :cond_a1
    return-void

    .line 2445
    :cond_a2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->b()V

    .line 2446
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->S:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->b()V

    goto :goto_9c
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 911
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 912
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    .line 913
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 914
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 916
    :cond_14
    return-void
.end method

.method e()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2870
    iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-lez v1, :cond_d

    .line 2871
    iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2874
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method f()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2878
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_19

    iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_19

    .line 2879
    iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2882
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 3004
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 3019
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 3009
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    .prologue
    .line 798
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 799
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ah:Ljava/util/ArrayList;

    .line 800
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->f:I

    .line 801
    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    .prologue
    .line 628
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .prologue
    .line 824
    iget v0, p0, Landroid/support/v4/view/ViewPager;->A:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    .prologue
    .line 880
    iget v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1536
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1537
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->T:Z

    .line 1538
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->aj:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 483
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    .line 484
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 486
    :cond_16
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 487
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .prologue
    .line 2457
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2460
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->p:I

    if-lez v1, :cond_b5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_b5

    .line 2461
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 2462
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 2464
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->p:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2465
    const/4 v5, 0x0

    .line 2466
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2467
    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2469
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 2470
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v10, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    move v2, v5

    move v5, v3

    .line 2471
    :goto_57
    if-ge v5, v10, :cond_b5

    .line 2472
    :goto_59
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-le v5, v3, :cond_6c

    if-ge v2, v9, :cond_6c

    .line 2473
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_59

    .line 2477
    :cond_6c
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ne v5, v3, :cond_b6

    .line 2478
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2479
    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    iget v11, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2486
    :goto_7d
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->p:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_ae

    .line 2487
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->r:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->p:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    .line 2488
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->s:I

    .line 2487
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2489
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2492
    :cond_ae
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_c5

    .line 2497
    :cond_b5
    return-void

    .line 2481
    :cond_b6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/PagerAdapter;->d(I)F

    move-result v11

    .line 2482
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 2483
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_7d

    .line 2471
    :cond_c5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_57
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 2023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2026
    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    if-ne v0, v6, :cond_12

    .line 2029
    :cond_e
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Z

    .line 2153
    :cond_11
    :goto_11
    return v2

    .line 2035
    :cond_12
    if-eqz v0, :cond_1e

    .line 2036
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->B:Z

    if-eqz v1, :cond_1a

    move v2, v6

    .line 2038
    goto :goto_11

    .line 2040
    :cond_1a
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->C:Z

    if-nez v1, :cond_11

    .line 2046
    :cond_1e
    sparse-switch v0, :sswitch_data_112

    .line 2144
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2b

    .line 2145
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    .line 2147
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2153
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->B:Z

    goto :goto_11

    .line 2057
    :sswitch_33
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    .line 2058
    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 2063
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2064
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 2065
    iget v1, p0, Landroid/support/v4/view/ViewPager;->G:F

    sub-float v8, v7, v1

    .line 2066
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2067
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 2068
    iget v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2071
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_72

    iget v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_72

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    .line 2072
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 2074
    iput v7, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2075
    iput v10, p0, Landroid/support/v4/view/ViewPager;->H:F

    .line 2076
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->C:Z

    goto :goto_11

    .line 2079
    :cond_72
    iget v0, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_af

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_af

    .line 2081
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->B:Z

    .line 2082
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->c(Z)V

    .line 2083
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2084
    cmpl-float v0, v8, v12

    if-lez v0, :cond_a8

    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_92
    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2086
    iput v10, p0, Landroid/support/v4/view/ViewPager;->H:F

    .line 2087
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2096
    :cond_99
    :goto_99
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->B:Z

    if-eqz v0, :cond_21

    .line 2098
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2099
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    goto/16 :goto_21

    .line 2084
    :cond_a8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_92

    .line 2088
    :cond_af
    iget v0, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_99

    .line 2094
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->C:Z

    goto :goto_99

    .line 2110
    :sswitch_b9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:F

    .line 2112
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    .line 2113
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->C:Z

    .line 2115
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->n:Z

    .line 2116
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2117
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_106

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    .line 2118
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->P:I

    if-le v0, v1, :cond_106

    .line 2120
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2121
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 2122
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 2123
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->B:Z

    .line 2124
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->c(Z)V

    .line 2125
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_21

    .line 2127
    :cond_106
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 2128
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->B:Z

    goto/16 :goto_21

    .line 2140
    :sswitch_10d
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_21

    .line 2046
    :sswitch_data_112
    .sparse-switch
        0x0 -> :sswitch_b9
        0x2 -> :sswitch_33
        0x6 -> :sswitch_10d
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    .prologue
    .line 1674
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1675
    sub-int v10, p4, p2

    .line 1676
    sub-int v11, p5, p3

    .line 1677
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1678
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1679
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1680
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1681
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1683
    const/4 v4, 0x0

    .line 1687
    const/4 v1, 0x0

    move v8, v1

    :goto_1f
    if-ge v8, v9, :cond_be

    .line 1688
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1689
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_141

    .line 1690
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1693
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_141

    .line 1694
    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v7, 0x7

    .line 1695
    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v1, 0x70

    .line 1696
    packed-switch v7, :pswitch_data_148

    :pswitch_44
    move v7, v6

    .line 1713
    :goto_45
    sparse-switch v14, :sswitch_data_156

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1730
    :goto_4e
    add-int/2addr v7, v12

    .line 1732
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    .line 1733
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    .line 1731
    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1734
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1687
    :goto_62
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_1f

    .line 1702
    :pswitch_6a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1703
    goto :goto_45

    .line 1705
    :pswitch_72
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1707
    goto :goto_45

    .line 1709
    :pswitch_80
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1710
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_45

    .line 1719
    :sswitch_8e
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1720
    goto :goto_4e

    .line 1722
    :sswitch_9a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1724
    goto :goto_4e

    .line 1726
    :sswitch_ac
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1727
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_4e

    .line 1739
    :cond_be
    sub-int v1, v10, v6

    sub-int v7, v1, v5

    .line 1741
    const/4 v1, 0x0

    move v5, v1

    :goto_c4
    if-ge v5, v9, :cond_11b

    .line 1742
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1743
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-eq v1, v10, :cond_117

    .line 1744
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1746
    iget-boolean v10, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v10, :cond_117

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_117

    .line 1747
    int-to-float v12, v7

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 1748
    add-int/2addr v10, v6

    .line 1750
    iget-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    if-eqz v12, :cond_10a

    .line 1753
    const/4 v12, 0x0

    iput-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    .line 1754
    int-to-float v12, v7

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1757
    sub-int v12, v11, v2

    sub-int/2addr v12, v3

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1760
    invoke-virtual {v8, v1, v12}, Landroid/view/View;->measure(II)V

    .line 1768
    :cond_10a
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v10

    .line 1769
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    .line 1767
    invoke-virtual {v8, v10, v2, v1, v12}, Landroid/view/View;->layout(IIII)V

    .line 1741
    :cond_117
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_c4

    .line 1773
    :cond_11b
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->r:I

    .line 1774
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->s:I

    .line 1775
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->W:I

    .line 1777
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->T:Z

    if-eqz v1, :cond_13b

    .line 1778
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 1780
    :cond_13b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->T:Z

    .line 1781
    return-void

    :cond_141
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_62

    .line 1696
    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_72
        :pswitch_44
        :pswitch_6a
        :pswitch_44
        :pswitch_80
    .end packed-switch

    .line 1713
    :sswitch_data_156
    .sparse-switch
        0x10 -> :sswitch_9a
        0x30 -> :sswitch_8e
        0x50 -> :sswitch_ac
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16

    .prologue
    .line 1547
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    .line 1548
    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    .line 1547
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1550
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1551
    div-int/lit8 v1, v0, 0xa

    .line 1552
    iget v2, p0, Landroid/support/v4/view/ViewPager;->D:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->E:I

    .line 1555
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1556
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1563
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1564
    const/4 v0, 0x0

    move v8, v0

    :goto_3b
    if-ge v8, v9, :cond_bc

    .line 1565
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1566
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a5

    .line 1567
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1568
    if-eqz v0, :cond_a5

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_a5

    .line 1569
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v6, v1, 0x7

    .line 1570
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v4, v1, 0x70

    .line 1571
    const/high16 v2, -0x80000000

    .line 1572
    const/high16 v1, -0x80000000

    .line 1573
    const/16 v7, 0x30

    if-eq v4, v7, :cond_69

    const/16 v7, 0x50

    if-ne v4, v7, :cond_a9

    :cond_69
    const/4 v4, 0x1

    move v7, v4

    .line 1574
    :goto_6b
    const/4 v4, 0x3

    if-eq v6, v4, :cond_71

    const/4 v4, 0x5

    if-ne v6, v4, :cond_ac

    :cond_71
    const/4 v4, 0x1

    move v6, v4

    .line 1576
    :goto_73
    if-eqz v7, :cond_af

    .line 1577
    const/high16 v2, 0x40000000    # 2.0f

    .line 1584
    :cond_77
    :goto_77
    iget v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_10f

    .line 1585
    const/high16 v4, 0x40000000    # 2.0f

    .line 1586
    iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_10c

    .line 1587
    iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    .line 1590
    :goto_85
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_10a

    .line 1591
    const/high16 v1, 0x40000000    # 2.0f

    .line 1592
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_10a

    .line 1593
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    .line 1596
    :goto_93
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1597
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1598
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1600
    if-eqz v7, :cond_b4

    .line 1601
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1564
    :cond_a5
    :goto_a5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3b

    .line 1573
    :cond_a9
    const/4 v4, 0x0

    move v7, v4

    goto :goto_6b

    .line 1574
    :cond_ac
    const/4 v4, 0x0

    move v6, v4

    goto :goto_73

    .line 1578
    :cond_af
    if-eqz v6, :cond_77

    .line 1579
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_77

    .line 1602
    :cond_b4
    if-eqz v6, :cond_a5

    .line 1603
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_a5

    .line 1609
    :cond_bc
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->v:I

    .line 1610
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->w:I

    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 1614
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 1615
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 1618
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1619
    const/4 v0, 0x0

    move v1, v0

    :goto_db
    if-ge v1, v2, :cond_109

    .line 1620
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1621
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_105

    .line 1626
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1627
    if-eqz v0, :cond_f5

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v5, :cond_105

    .line 1628
    :cond_f5
    int-to-float v5, v3

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1630
    iget v5, p0, Landroid/support/v4/view/ViewPager;->w:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1619
    :cond_105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_db

    .line 1634
    :cond_109
    return-void

    :cond_10a
    move v0, v5

    goto :goto_93

    :cond_10c
    move v2, v3

    goto/16 :goto_85

    :cond_10f
    move v4, v2

    move v2, v3

    goto/16 :goto_85
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2955
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2956
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2c

    move v1, v2

    move v3, v4

    .line 2965
    :goto_d
    if-eq v3, v0, :cond_33

    .line 2966
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2967
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 2968
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 2969
    if-eqz v6, :cond_31

    iget v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-ne v6, v7, :cond_31

    .line 2970
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2976
    :goto_2b
    return v2

    .line 2961
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2963
    goto :goto_d

    .line 2965
    :cond_31
    add-int/2addr v3, v1

    goto :goto_d

    :cond_33
    move v2, v4

    .line 2976
    goto :goto_2b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .prologue
    .line 1444
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1445
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1460
    :goto_7
    return-void

    .line 1449
    :cond_8
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1450
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1452
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_26

    .line 1453
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1454
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_7

    .line 1456
    :cond_26
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 1457
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;

    .line 1458
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1433
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1434
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1435
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    .line 1436
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_19

    .line 1437
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->a()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    .line 1439
    :cond_19
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .prologue
    .line 1638
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1641
    if-eq p1, p3, :cond_c

    .line 1642
    iget v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->p:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 1644
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2158
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Q:Z

    if-eqz v0, :cond_8

    move v0, v1

    .line 2282
    :goto_7
    return v0

    .line 2165
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 2168
    goto :goto_7

    .line 2171
    :cond_16
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v0

    if-nez v0, :cond_24

    :cond_22
    move v0, v2

    .line 2173
    goto :goto_7

    .line 2176
    :cond_24
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2e

    .line 2177
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    .line 2179
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2184
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_15e

    .line 2279
    :cond_3c
    :goto_3c
    :pswitch_3c
    if-eqz v2, :cond_41

    .line 2280
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    :cond_41
    move v0, v1

    .line 2282
    goto :goto_7

    .line 2186
    :pswitch_43
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2187
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 2188
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 2191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:F

    .line 2193
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    goto :goto_3c

    .line 2197
    :pswitch_64
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->B:Z

    if-nez v0, :cond_c0

    .line 2198
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2199
    const/4 v3, -0x1

    if-ne v0, v3, :cond_76

    .line 2202
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Z

    move-result v2

    goto :goto_3c

    .line 2205
    :cond_76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2206
    iget v4, p0, Landroid/support/v4/view/ViewPager;->G:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2207
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2208
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2212
    iget v6, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_c0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_c0

    .line 2214
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->B:Z

    .line 2215
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->c(Z)V

    .line 2216
    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_d5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_ad
    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2218
    iput v5, p0, Landroid/support/v4/view/ViewPager;->H:F

    .line 2219
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2220
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2223
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2224
    if-eqz v0, :cond_c0

    .line 2225
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2230
    :cond_c0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->B:Z

    if-eqz v0, :cond_3c

    .line 2232
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2233
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2234
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(F)Z

    move-result v0

    or-int/2addr v2, v0

    .line 2235
    goto/16 :goto_3c

    .line 2216
    :cond_d5
    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_ad

    .line 2238
    :pswitch_dc
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->B:Z

    if-eqz v0, :cond_3c

    .line 2239
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->L:Landroid/view/VelocityTracker;

    .line 2240
    const/16 v2, 0x3e8

    iget v3, p0, Landroid/support/v4/view/ViewPager;->N:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2241
    iget v2, p0, Landroid/support/v4/view/ViewPager;->K:I

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 2243
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 2244
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 2245
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2246
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->k()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2247
    iget v5, p0, Landroid/support/v4/view/ViewPager;->p:I

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 2248
    iget v6, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 2249
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->e:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->d:F

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    .line 2251
    iget v3, p0, Landroid/support/v4/view/ViewPager;->K:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2252
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2253
    iget v4, p0, Landroid/support/v4/view/ViewPager;->I:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 2254
    invoke-direct {p0, v6, v2, v0, v3}, Landroid/support/v4/view/ViewPager;->a(IFII)I

    move-result v2

    .line 2256
    invoke-virtual {p0, v2, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2258
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Z

    move-result v2

    goto/16 :goto_3c

    .line 2262
    :pswitch_12c
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->B:Z

    if-eqz v0, :cond_3c

    .line 2263
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 2264
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Z

    move-result v2

    goto/16 :goto_3c

    .line 2268
    :pswitch_13b
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2269
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2270
    iput v3, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 2271
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    goto/16 :goto_3c

    .line 2275
    :pswitch_14d
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 2276
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    goto/16 :goto_3c

    .line 2184
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_43
        :pswitch_dc
        :pswitch_64
        :pswitch_12c
        :pswitch_3c
        :pswitch_13b
        :pswitch_14d
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1496
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z

    if-eqz v0, :cond_8

    .line 1497
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1501
    :goto_7
    return-void

    .line 1499
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .registers 7

    .prologue
    .line 779
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2b

    .line 780
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1c

    .line 782
    :try_start_9
    const-class v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1c} :catch_2c

    .line 789
    :cond_1c
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_37

    .line 794
    :cond_2b
    :goto_2b
    return-void

    .line 784
    :catch_2c
    move-exception v0

    .line 785
    const-string/jumbo v1, "ViewPager"

    const-string/jumbo v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 790
    :catch_37
    move-exception v0

    .line 791
    const-string/jumbo v1, "ViewPager"

    const-string/jumbo v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public setCurrentItem(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 612
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 613
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->T:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 614
    return-void

    :cond_c
    move v0, v1

    .line 613
    goto :goto_8
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 623
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 624
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 625
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 636
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v0

    if-gtz v0, :cond_12

    .line 637
    :cond_e
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 673
    :goto_11
    return-void

    .line 640
    :cond_12
    if-nez p3, :cond_24

    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-ne v0, p1, :cond_24

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_24

    .line 641
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_11

    .line 645
    :cond_24
    if-gez p1, :cond_4b

    move p1, v1

    .line 650
    :cond_27
    :goto_27
    iget v0, p0, Landroid/support/v4/view/ViewPager;->A:I

    .line 651
    iget v2, p0, Landroid/support/v4/view/ViewPager;->i:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_34

    iget v2, p0, Landroid/support/v4/view/ViewPager;->i:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_5c

    :cond_34
    move v2, v1

    .line 655
    :goto_35
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5c

    .line 656
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    .line 655
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    .line 647
    :cond_4b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v0

    if-lt p1, v0, :cond_27

    .line 648
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_27

    .line 659
    :cond_5c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-eq v0, p1, :cond_61

    move v1, v3

    .line 661
    :cond_61
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->T:Z

    if-eqz v0, :cond_70

    .line 664
    iput p1, p0, Landroid/support/v4/view/ViewPager;->i:I

    .line 665
    if-eqz v1, :cond_6c

    .line 666
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->e(I)V

    .line 668
    :cond_6c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_11

    .line 670
    :cond_70
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 671
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_11
.end method

.method public setOffscreenPageLimit(I)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 845
    if-ge p1, v0, :cond_29

    .line 846
    const-string/jumbo v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 850
    :cond_29
    iget v0, p0, Landroid/support/v4/view/ViewPager;->A:I

    if-eq p1, v0, :cond_32

    .line 851
    iput p1, p0, Landroid/support/v4/view/ViewPager;->A:I

    .line 852
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 854
    :cond_32
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    .prologue
    .line 865
    iget v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    .line 866
    iput p1, p0, Landroid/support/v4/view/ViewPager;->p:I

    .line 868
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 869
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 871
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 872
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 902
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
