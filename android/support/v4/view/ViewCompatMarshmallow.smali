.class Landroid/support/v4/view/ViewCompatMarshmallow;
.super Ljava/lang/Object;
.source "ViewCompatMarshmallow.java"


# direct methods
.method static a(Landroid/view/View;I)V
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    .line 28
    return-void
.end method

.method static b(Landroid/view/View;I)V
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 40
    return-void
.end method
