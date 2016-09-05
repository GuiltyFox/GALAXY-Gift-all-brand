.class Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .registers 2

    .prologue
    .line 2135
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 4

    .prologue
    .line 2135
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 5

    .prologue
    .line 2165
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2166
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_1e

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 2140
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 2141
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    .line 2143
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2171
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    .line 2172
    if-ltz v0, :cond_f

    .line 2173
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b(Landroid/view/View;)V

    .line 2215
    :cond_e
    :goto_e
    return-void

    .line 2176
    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 2177
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v1, :cond_6b

    .line 2178
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v0, v1, v0

    .line 2179
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 2180
    sub-int/2addr v0, v1

    .line 2181
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2183
    if-lez v0, :cond_e

    .line 2184
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 2185
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    sub-int v1, v2, v1

    .line 2186
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 2187
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 2189
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2190
    sub-int/2addr v1, v2

    .line 2191
    if-gez v1, :cond_e

    .line 2193
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto :goto_e

    .line 2197
    :cond_6b
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    .line 2198
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, v1, v2

    .line 2199
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2200
    if-lez v2, :cond_e

    .line 2201
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2203
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v0, v3, v0

    .line 2205
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2207
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 2209
    sub-int/2addr v0, v1

    .line 2210
    if-gez v0, :cond_e

    .line 2211
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto/16 :goto_e
.end method

.method b()V
    .registers 2

    .prologue
    .line 2150
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    :goto_c
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2153
    return-void

    .line 2150
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_c
.end method

.method public b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2218
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v0, :cond_20

    .line 2219
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2225
    :goto_17
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 2226
    return-void

    .line 2222
    :cond_20
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
