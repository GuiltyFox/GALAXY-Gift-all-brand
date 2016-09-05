.class Landroid/support/v4/view/ViewCompatICS;
.super Ljava/lang/Object;
.source "ViewCompatICS.java"


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 39
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 40
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 56
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method
