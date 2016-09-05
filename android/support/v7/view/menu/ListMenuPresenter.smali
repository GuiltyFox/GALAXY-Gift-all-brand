.class public Landroid/support/v7/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/view/menu/MenuBuilder;

.field d:Landroid/support/v7/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

.field private h:I

.field private i:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private j:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->f:I

    .line 78
    iput p2, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->e:I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(II)V

    .line 67
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->a:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->b:Landroid/view/LayoutInflater;

    .line 69
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/ListMenuPresenter;)I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->h:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v0, :cond_28

    .line 101
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 103
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_1c

    .line 104
    new-instance v0, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroid/support/v7/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    .line 106
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    :cond_28
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public a()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_b

    .line 121
    new-instance v0, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroid/support/v7/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    .line 123
    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 186
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_e

    .line 187
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 189
    :cond_e
    const-string/jumbo v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 190
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->i:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 134
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 193
    const-string/jumbo v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_e

    .line 195
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 197
    :cond_e
    return-void
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->j:I

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 5

    .prologue
    .line 83
    iget v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->e:I

    if-eqz v0, :cond_21

    .line 84
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->e:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->a:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->b:Landroid/view/LayoutInflater;

    .line 92
    :cond_15
    :goto_15
    iput-object p2, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->c:Landroid/support/v7/view/menu/MenuBuilder;

    .line 93
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_20

    .line 94
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_20
    return-void

    .line 86
    :cond_21
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->a:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 87
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->a:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_15

    .line 89
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->b:Landroid/view/LayoutInflater;

    goto :goto_15
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->i:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_9

    .line 151
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->i:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 153
    :cond_9
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->c:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->a(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    .line 169
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 221
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ListMenuPresenter;->b(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v0, :cond_6

    .line 211
    const/4 v0, 0x0

    .line 216
    :goto_5
    return-object v0

    .line 214
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuPresenter;->a(Landroid/os/Bundle;)V

    goto :goto_5
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 4

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 145
    :goto_7
    return v0

    .line 141
    :cond_8
    new-instance v0, Landroid/support/v7/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/MenuDialogHelper;-><init>(Landroid/support/v7/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuDialogHelper;->a(Landroid/os/IBinder;)V

    .line 142
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->i:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1a

    .line 143
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->i:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    .line 145
    :cond_1a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public updateMenuView(Z)V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->g:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 129
    :cond_9
    return-void
.end method
