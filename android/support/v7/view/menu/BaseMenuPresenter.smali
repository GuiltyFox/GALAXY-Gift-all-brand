.class public abstract Landroid/support/v7/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/support/v7/view/menu/MenuBuilder;

.field protected d:Landroid/view/LayoutInflater;

.field protected e:Landroid/view/LayoutInflater;

.field protected f:Landroid/support/v7/view/menu/MenuView;

.field private g:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->a:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->d:Landroid/view/LayoutInflater;

    .line 64
    iput p2, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->h:I

    .line 65
    iput p3, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->i:I

    .line 66
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->g:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .registers 5

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->f:Landroid/support/v7/view/menu/MenuView;

    if-nez v0, :cond_1c

    .line 78
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuView;

    iput-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->f:Landroid/support/v7/view/menu/MenuView;

    .line 79
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->f:Landroid/support/v7/view/menu/MenuView;

    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Landroid/support/v7/view/menu/MenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 83
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->f:Landroid/support/v7/view/menu/MenuView;

    return-object v0
.end method

.method public a(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 181
    instance-of v0, p2, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_d

    .line 182
    check-cast p2, Landroid/support/v7/view/menu/MenuView$ItemView;

    move-object v0, p2

    .line 186
    :goto_7
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->a(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V

    .line 187
    check-cast v0, Landroid/view/View;

    return-object v0

    .line 184
    :cond_d
    invoke-virtual {p0, p3}, Landroid/support/v7/view/menu/BaseMenuPresenter;->b(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView$ItemView;

    move-result-object v0

    goto :goto_7
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 239
    iput p1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->j:I

    .line 240
    return-void
.end method

.method public abstract a(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V
.end method

.method protected a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    if-eqz v0, :cond_b

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->f:Landroid/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method public a(ILandroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Landroid/view/ViewGroup;I)Z
    .registers 4

    .prologue
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView$ItemView;
    .registers 5

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->j:I

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .prologue
    .line 70
    iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->b:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->e:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->c:Landroid/support/v7/view/menu/MenuBuilder;

    .line 73
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 4

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->g:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->g:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->a(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 213
    :cond_9
    return-void
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->g:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_b

    .line 217
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->g:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->a(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v0

    .line 219
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->g:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 153
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->f:Landroid/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    if-nez v0, :cond_8

    .line 124
    :cond_7
    return-void

    .line 94
    :cond_8
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->c:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_65

    .line 95
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 96
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->c:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 97
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v5

    move v4, v5

    .line 98
    :goto_1d
    if-ge v6, v8, :cond_54

    .line 99
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 100
    invoke-virtual {p0, v4, v1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->a(ILandroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 101
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 102
    instance-of v2, v3, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v2, :cond_52

    move-object v2, v3

    check-cast v2, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 103
    invoke-interface {v2}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    .line 104
    :goto_3a
    invoke-virtual {p0, v1, v3, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->a(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 105
    if-eq v1, v2, :cond_46

    .line 107
    invoke-virtual {v9, v5}, Landroid/view/View;->setPressed(Z)V

    .line 108
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->x(Landroid/view/View;)V

    .line 110
    :cond_46
    if-eq v9, v3, :cond_4b

    .line 111
    invoke-virtual {p0, v9, v4}, Landroid/support/v7/view/menu/BaseMenuPresenter;->a(Landroid/view/View;I)V

    .line 113
    :cond_4b
    add-int/lit8 v1, v4, 0x1

    .line 98
    :goto_4d
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_1d

    .line 103
    :cond_52
    const/4 v2, 0x0

    goto :goto_3a

    .line 119
    :cond_54
    :goto_54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 120
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/view/menu/BaseMenuPresenter;->a(Landroid/view/ViewGroup;I)Z

    move-result v1

    if-nez v1, :cond_54

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :cond_63
    move v1, v4

    goto :goto_4d

    :cond_65
    move v4, v5

    goto :goto_54
.end method
