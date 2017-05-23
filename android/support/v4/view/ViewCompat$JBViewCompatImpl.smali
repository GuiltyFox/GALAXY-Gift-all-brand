.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1422
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 1506
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1507
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1441
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 1445
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1446
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1425
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1433
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->b(Landroid/view/View;)V

    .line 1434
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 1456
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1457
    const/4 p2, 0x2

    .line 1459
    :cond_4
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;I)V

    .line 1460
    return-void
.end method

.method public d(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1449
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 1476
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->d(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1501
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->i(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1481
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1486
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public v(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1491
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->g(Landroid/view/View;)V

    .line 1492
    return-void
.end method

.method public y(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1496
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->h(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
