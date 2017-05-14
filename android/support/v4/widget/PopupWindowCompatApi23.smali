.class Landroid/support/v4/widget/PopupWindowCompatApi23;
.super Ljava/lang/Object;
.source "PopupWindowCompatApi23.java"


# direct methods
.method static a(Landroid/widget/PopupWindow;I)V
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 33
    return-void
.end method

.method static a(Landroid/widget/PopupWindow;Z)V
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 25
    return-void
.end method
