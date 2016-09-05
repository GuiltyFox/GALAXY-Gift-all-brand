.class Landroid/support/v4/view/MenuItemCompatHoneycomb;
.super Ljava/lang/Object;
.source "MenuItemCompatHoneycomb.java"


# direct methods
.method public static a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 31
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 2

    .prologue
    .line 39
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/MenuItem;I)V
    .registers 2

    .prologue
    .line 27
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 28
    return-void
.end method

.method public static b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 35
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
