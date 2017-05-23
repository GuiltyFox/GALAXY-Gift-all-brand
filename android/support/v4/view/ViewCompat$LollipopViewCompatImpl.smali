.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1617
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1680
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public C(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 1730
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->d(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public D(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .prologue
    .line 1745
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->e(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public E(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1690
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->g(Landroid/view/View;)V

    .line 1691
    return-void
.end method

.method public G(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 1763
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->h(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .prologue
    .line 1750
    .line 1751
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->a(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1750
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 1735
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 1736
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 1740
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 1741
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 4

    .prologue
    .line 1656
    if-nez p2, :cond_7

    .line 1657
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    .line 1671
    :goto_6
    return-void

    .line 1661
    :cond_7
    new-instance v0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;-><init>(Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 1670
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    goto :goto_6
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .prologue
    .line 1756
    .line 1758
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->a(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    .line 1757
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatLollipop;->b(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1756
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1773
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->b(Landroid/view/View;I)V

    .line 1774
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1778
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;I)V

    .line 1779
    return-void
.end method

.method public h(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 1635
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;F)V

    .line 1636
    return-void
.end method

.method public v(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1630
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->a(Landroid/view/View;)V

    .line 1631
    return-void
.end method

.method public w(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 1640
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->b(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public x(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 1650
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->c(Landroid/view/View;)F

    move-result v0

    return v0
.end method
