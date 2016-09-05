.class Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroid/support/v7/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic c:Landroid/support/v7/widget/ActionMenuPresenter;

.field private d:Landroid/support/v7/view/menu/SubMenuBuilder;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 719
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 720
    const/4 v3, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 722
    iput-object p3, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->d:Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 724
    invoke-virtual {p3}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 725
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->j()Z

    move-result v0

    if-nez v0, :cond_29

    .line 727
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    if-nez v0, :cond_4a

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_26
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->a(Landroid/view/View;)V

    .line 730
    :cond_29
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->a(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 733
    invoke-virtual {p3}, Landroid/support/v7/view/menu/SubMenuBuilder;->size()I

    move-result v1

    move v0, v4

    .line 734
    :goto_33
    if-ge v0, v1, :cond_46

    .line 735
    invoke-virtual {p3, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 736
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 737
    const/4 v4, 0x1

    .line 741
    :cond_46
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->a(Z)V

    .line 742
    return-void

    .line 727
    :cond_4a
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    goto :goto_26

    .line 734
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 746
    invoke-super {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    .line 747
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 749
    return-void
.end method
