.class Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# instance fields
.field a:Landroid/support/v7/view/menu/MenuBuilder;

.field b:Landroid/support/v7/view/menu/MenuItemImpl;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .registers 2

    .prologue
    .line 1945
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V
    .registers 3

    .prologue
    .line 1945
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 2036
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v0, :cond_12

    .line 2037
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2040
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2041
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2042
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2044
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2045
    iput-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->b:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2046
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2047
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->e(Z)V

    .line 2049
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 2007
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    # invokes: Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$200(Landroid/support/v7/widget/Toolbar;)V

    .line 2008
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1f

    .line 2009
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2011
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2012
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->b:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2013
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_5c

    .line 2014
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 2015
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mButtonGravity:I
    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->access$400(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2016
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2017
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2018
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2021
    :cond_5c
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2022
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2023
    invoke-virtual {p2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->e(Z)V

    .line 2025
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v0, :cond_7a

    .line 2026
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2029
    :cond_7a
    return v3
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 2002
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 2054
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 5

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->a:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->b:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_f

    .line 1953
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->a:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->b:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 1955
    :cond_f
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->a:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1956
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    .prologue
    .line 1998
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 2064
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 2059
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 3

    .prologue
    .line 1993
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1966
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->b:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_26

    .line 1969
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->a:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_1d

    .line 1970
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    move v1, v0

    .line 1971
    :goto_10
    if-ge v1, v2, :cond_1d

    .line 1972
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1973
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->b:Landroid/support/v7/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_27

    .line 1974
    const/4 v0, 0x1

    .line 1980
    :cond_1d
    if-nez v0, :cond_26

    .line 1982
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->a:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->b:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 1985
    :cond_26
    return-void

    .line 1971
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method
