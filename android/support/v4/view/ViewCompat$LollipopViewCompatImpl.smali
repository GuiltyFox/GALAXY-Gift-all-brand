.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1593
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1656
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public B(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 1706
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->d(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public C(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .prologue
    .line 1721
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->e(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public D(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1666
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->g(Landroid/view/View;)V

    .line 1667
    return-void
.end method

.method public F(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 1739
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->h(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .prologue
    .line 1726
    .line 1727
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->a(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1726
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 1711
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 1712
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 1716
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 1717
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 4

    .prologue
    .line 1632
    if-nez p2, :cond_7

    .line 1633
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    .line 1647
    :goto_6
    return-void

    .line 1637
    :cond_7
    new-instance v0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;-><init>(Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 1646
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    goto :goto_6
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .prologue
    .line 1732
    .line 1734
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->a(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    .line 1733
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatLollipop;->b(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1732
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1749
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->b(Landroid/view/View;I)V

    .line 1750
    return-void
.end method

.method public f(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 1611
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;F)V

    .line 1612
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1754
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;I)V

    .line 1755
    return-void
.end method

.method public u(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1606
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;)V

    .line 1607
    return-void
.end method

.method public v(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 1616
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->b(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public w(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 1626
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->c(Landroid/view/View;)F

    move-result v0

    return v0
.end method
