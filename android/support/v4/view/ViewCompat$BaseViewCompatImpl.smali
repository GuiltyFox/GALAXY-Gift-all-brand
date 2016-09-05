.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/ScrollingView;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 937
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v2

    .line 938
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 940
    if-nez v3, :cond_13

    move v0, v1

    .line 944
    :cond_12
    :goto_12
    return v0

    .line 941
    :cond_13
    if-gez p2, :cond_19

    .line 942
    if-gtz v2, :cond_12

    move v0, v1

    goto :goto_12

    .line 944
    :cond_19
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method private b(Landroid/support/v4/view/ScrollingView;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 949
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v2

    .line 950
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 952
    if-nez v3, :cond_13

    move v0, v1

    .line 956
    :cond_12
    :goto_12
    return v0

    .line 953
    :cond_13
    if-gez p2, :cond_19

    .line 954
    if-gtz v2, :cond_12

    move v0, v1

    goto :goto_12

    .line 956
    :cond_19
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_12

    move v0, v1

    goto :goto_12
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public B(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 910
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 911
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    .line 913
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public C(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 918
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->a(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public D(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .prologue
    .line 933
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public E(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 969
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    .line 970
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 972
    :cond_9
    return-void
.end method

.method public F(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1022
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public G(Landroid/view/View;)F
    .registers 4

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->x(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->w(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public H(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1037
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public I(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1042
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)I
    .registers 4

    .prologue
    .line 1027
    or-int v0, p1, p2

    return v0
.end method

.method public a(III)I
    .registers 5

    .prologue
    .line 582
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 478
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .registers 3

    .prologue
    .line 521
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .prologue
    .line 879
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 744
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .registers 4

    .prologue
    .line 1058
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 6

    .prologue
    .line 622
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 623
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 543
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 923
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 924
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 928
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 929
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    .prologue
    .line 485
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .prologue
    .line 875
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 8

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 864
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .registers 3

    .prologue
    .line 854
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 470
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->a(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .prologue
    .line 884
    return-object p2
.end method

.method public b(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 749
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 890
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 474
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->b(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 754
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 528
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 895
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 510
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 769
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 608
    return-void
.end method

.method public e(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 774
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1062
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->b(Landroid/view/View;I)V

    .line 1063
    return-void
.end method

.method public f(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 539
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public f(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 826
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1067
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->a(Landroid/view/View;I)V

    .line 1068
    return-void
.end method

.method public g(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public n(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public o(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public r(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 723
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 728
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public t(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 3

    .prologue
    .line 733
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public u(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public v(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 822
    return-void
.end method

.method public w(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public y(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public z(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 869
    return-void
.end method
