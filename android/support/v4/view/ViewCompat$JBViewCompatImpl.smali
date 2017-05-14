.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1408
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1427
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1428
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 1431
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1432
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1411
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1419
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->b(Landroid/view/View;)V

    .line 1420
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 1442
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1443
    const/4 p2, 0x2

    .line 1445
    :cond_4
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;I)V

    .line 1446
    return-void
.end method

.method public d(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1435
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 1462
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->d(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1487
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->i(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public q(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1467
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1472
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public u(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1477
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->g(Landroid/view/View;)V

    .line 1478
    return-void
.end method

.method public x(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1482
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->h(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
