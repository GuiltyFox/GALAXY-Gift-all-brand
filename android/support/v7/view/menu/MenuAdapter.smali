.class public Landroid/support/v7/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# static fields
.field static final a:I


# instance fields
.field b:Landroid/support/v7/view/menu/MenuBuilder;

.field private c:I

.field private d:Z

.field private final e:Z

.field private final f:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/MenuAdapter;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->c:I

    .line 41
    iput-boolean p3, p0, Landroid/support/v7/view/menu/MenuAdapter;->e:Z

    .line 42
    iput-object p2, p0, Landroid/support/v7/view/menu/MenuAdapter;->f:Landroid/view/LayoutInflater;

    .line 43
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuAdapter;->b:Landroid/support/v7/view/menu/MenuBuilder;

    .line 44
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuAdapter;->b()V

    .line 45
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->b:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public a(I)Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 4

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->e:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->b:Landroid/support/v7/view/menu/MenuBuilder;

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    :goto_a
    iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->c:I

    if-ltz v1, :cond_14

    iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->c:I

    if-lt p1, v1, :cond_14

    .line 74
    add-int/lit8 p1, p1, 0x1

    .line 76
    :cond_14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0

    .line 72
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_a
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuAdapter;->d:Z

    .line 53
    return-void
.end method

.method b()V
    .registers 6

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_25

    .line 103
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, v4, :cond_25

    .line 106
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 107
    if-ne v0, v2, :cond_21

    .line 108
    iput v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->c:I

    .line 114
    :goto_20
    return-void

    .line 105
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 113
    :cond_25
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->c:I

    goto :goto_20
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->e:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->b:Landroid/support/v7/view/menu/MenuBuilder;

    .line 58
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    :goto_a
    iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->c:I

    if-gez v1, :cond_1a

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    :goto_12
    return v0

    .line 58
    :cond_13
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->b:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_a

    .line 62
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_12
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->a(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 88
    if-nez p2, :cond_21

    .line 89
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->f:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/view/menu/MenuAdapter;->a:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_b
    move-object v0, v1

    .line 92
    check-cast v0, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 93
    iget-boolean v2, p0, Landroid/support/v7/view/menu/MenuAdapter;->d:Z

    if-eqz v2, :cond_19

    move-object v2, v1

    .line 94
    check-cast v2, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 96
    :cond_19
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->a(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 97
    return-object v1

    :cond_21
    move-object v1, p2

    goto :goto_b
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuAdapter;->b()V

    .line 119
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method
