.class Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1561
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public E(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1579
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatKitKat;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public G(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1589
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatKitKat;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1574
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;I)V

    .line 1575
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 1569
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatKitKat;->a(Landroid/view/View;I)V

    .line 1570
    return-void
.end method
