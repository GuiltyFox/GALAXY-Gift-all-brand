.class Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroid/support/v7/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .registers 11

    .prologue
    .line 745
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 746
    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 748
    invoke-virtual {p3}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 749
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->j()Z

    move-result v0

    if-nez v0, :cond_27

    .line 751
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    if-nez v0, :cond_2d

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_24
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->a(Landroid/view/View;)V

    .line 754
    :cond_27
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->a(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 755
    return-void

    .line 751
    :cond_2d
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    goto :goto_24
.end method


# virtual methods
.method protected f()V
    .registers 3

    .prologue
    .line 759
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 762
    invoke-super {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->f()V

    .line 763
    return-void
.end method
