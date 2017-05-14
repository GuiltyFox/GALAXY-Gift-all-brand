.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# static fields
.field private static b:Ljava/lang/reflect/Method;


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
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/ScrollingView;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 997
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v2

    .line 998
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v3

    .line 999
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1000
    if-nez v3, :cond_13

    move v0, v1

    .line 1004
    :cond_12
    :goto_12
    return v0

    .line 1001
    :cond_13
    if-gez p2, :cond_19

    .line 1002
    if-gtz v2, :cond_12

    move v0, v1

    goto :goto_12

    .line 1004
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

    .line 1009
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v2

    .line 1010
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v3

    .line 1011
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1012
    if-nez v3, :cond_13

    move v0, v1

    .line 1016
    :cond_12
    :goto_12
    return v0

    .line 1013
    :cond_13
    if-gez p2, :cond_19

    .line 1014
    if-gtz v2, :cond_12

    move v0, v1

    goto :goto_12

    .line 1016
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
    .line 970
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 971
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    .line 973
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public B(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 978
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->a(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public C(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .prologue
    .line 993
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public D(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1030
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    .line 1031
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 1033
    :cond_9
    return-void
.end method

.method public E(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1088
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public F(Landroid/view/View;)F
    .registers 4

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->w(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->v(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public G(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1113
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public H(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1118
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)I
    .registers 4

    .prologue
    .line 1098
    or-int v0, p1, p2

    return v0
.end method

.method public a(III)I
    .registers 5

    .prologue
    .line 619
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method a()J
    .registers 3

    .prologue
    .line 555
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .prologue
    .line 938
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 786
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .registers 4

    .prologue
    .line 1134
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 6

    .prologue
    .line 659
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 660
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 584
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 983
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 984
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 988
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 989
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    .prologue
    .line 510
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .prologue
    .line 934
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 8

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 923
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 895
    sget-object v0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1d

    .line 897
    :try_start_5
    const-class v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 898
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->b:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_18} :catch_2d

    .line 902
    :goto_18
    sget-object v0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 905
    :cond_1d
    :try_start_1d
    sget-object v0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2c} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2c} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2c} :catch_4e

    .line 913
    :goto_2c
    return-void

    .line 899
    :catch_2d
    move-exception v0

    .line 900
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 906
    :catch_38
    move-exception v0

    .line 907
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 908
    :catch_43
    move-exception v0

    .line 909
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 910
    :catch_4e
    move-exception v0

    .line 911
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public a(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 498
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    .line 499
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
    .line 943
    return-object p2
.end method

.method public b(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 791
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 949
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 503
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    .line 504
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

.method public c(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 541
    return-void
.end method

.method public c(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 796
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 564
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 954
    return-void
.end method

.method public d(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 811
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 645
    return-void
.end method

.method public e(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 579
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 816
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1138
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->b(Landroid/view/View;I)V

    .line 1139
    return-void
.end method

.method public f(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 868
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1143
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->a(Landroid/view/View;I)V

    .line 1144
    return-void
.end method

.method public g(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public j(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method public n(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 765
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 770
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 3

    .prologue
    .line 775
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public t(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public u(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 864
    return-void
.end method

.method public v(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public w(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public y(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 928
    return-void
.end method

.method public z(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 958
    const/4 v0, 0x0

    return v0
.end method
