.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1345
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1364
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1365
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 1368
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1369
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 1379
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1380
    const/4 p2, 0x2

    .line 1382
    :cond_4
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;I)V

    .line 1383
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1348
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1356
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->b(Landroid/view/View;)V

    .line 1357
    return-void
.end method

.method public e(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1372
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public i(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 1399
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->d(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1424
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->i(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1404
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1409
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public v(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1414
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->g(Landroid/view/View;)V

    .line 1415
    return-void
.end method

.method public y(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 1419
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->h(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
