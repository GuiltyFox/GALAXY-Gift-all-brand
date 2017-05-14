.class Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .registers 2

    .prologue
    .line 755
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuView;Landroid/support/v7/widget/ActionMenuView$1;)V
    .registers 3

    .prologue
    .line 755
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->a:Landroid/support/v7/widget/ActionMenuView;

    # getter for: Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->access$200(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 759
    # getter for: Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->access$200(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .prologue
    .line 764
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->a:Landroid/support/v7/widget/ActionMenuView;

    # getter for: Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->access$300(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 765
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->a:Landroid/support/v7/widget/ActionMenuView;

    # getter for: Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->access$300(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 767
    :cond_11
    return-void
.end method
