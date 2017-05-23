.class Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field l:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1977
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a:Z

    .line 2018
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->h:I

    .line 2025
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:Z

    .line 2037
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:Ljava/util/List;

    return-void
.end method

.method private b()Landroid/view/View;
    .registers 6

    .prologue
    .line 2074
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2075
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v3, :cond_31

    .line 2076
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2077
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2078
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2075
    :cond_20
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 2081
    :cond_24
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    if-ne v4, v0, :cond_20

    .line 2082
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a(Landroid/view/View;)V

    move-object v0, v1

    .line 2086
    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .registers 5

    .prologue
    .line 2058
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 2059
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->b()Landroid/view/View;

    move-result-object v0

    .line 2063
    :goto_8
    return-object v0

    .line 2061
    :cond_9
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2062
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    goto :goto_8
.end method

.method public a()V
    .registers 2

    .prologue
    .line 2090
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a(Landroid/view/View;)V

    .line 2091
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 2094
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2095
    if-nez v0, :cond_a

    .line 2096
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    .line 2101
    :goto_9
    return-void

    .line 2098
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2099
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    goto :goto_9
.end method

.method a(Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 4

    .prologue
    .line 2048
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .registers 9

    .prologue
    .line 2104
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 2105
    const/4 v2, 0x0

    .line 2106
    const v1, 0x7fffffff

    .line 2110
    const/4 v0, 0x0

    move v4, v0

    :goto_c
    if-ge v4, v5, :cond_47

    .line 2111
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2112
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2113
    if-eq v3, p1, :cond_44

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_2e

    move v0, v1

    move-object v1, v2

    .line 2110
    :goto_28
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move v1, v0

    goto :goto_c

    .line 2116
    :cond_2e
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->e:I

    mul-int/2addr v0, v6

    .line 2118
    if-gez v0, :cond_3d

    move v0, v1

    move-object v1, v2

    .line 2119
    goto :goto_28

    .line 2121
    :cond_3d
    if-ge v0, v1, :cond_44

    .line 2124
    if-nez v0, :cond_42

    .line 2129
    :goto_41
    return-object v3

    :cond_42
    move-object v1, v3

    goto :goto_28

    :cond_44
    move v0, v1

    move-object v1, v2

    goto :goto_28

    :cond_47
    move-object v3, v2

    goto :goto_41
.end method
