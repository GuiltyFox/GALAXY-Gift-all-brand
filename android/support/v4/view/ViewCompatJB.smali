.class Landroid/support/v4/view/ViewCompatJB;
.super Ljava/lang/Object;
.source "ViewCompatJB.java"


# direct methods
.method public static a(Landroid/view/View;I)V
    .registers 2

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 59
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 51
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 38
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 83
    return-void
.end method

.method public static h(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method
