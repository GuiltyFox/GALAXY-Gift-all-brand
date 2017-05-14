.class Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/support/v7/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 310
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 311
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 316
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->a(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;->a()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 318
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected onForwardingStarted()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->b(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->b(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->c(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 325
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    .line 328
    :cond_28
    return v0
.end method
