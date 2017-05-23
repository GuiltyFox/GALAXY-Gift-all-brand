.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .registers 6

    .prologue
    .line 945
    const/4 v1, 0x0

    .line 946
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 948
    :goto_9
    if-gt v1, v0, :cond_1d

    .line 949
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 950
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 951
    if-ge v3, p1, :cond_1a

    .line 952
    add-int/lit8 v1, v2, 0x1

    goto :goto_9

    .line 954
    :cond_1a
    add-int/lit8 v0, v2, -0x1

    goto :goto_9

    .line 957
    :cond_1d
    add-int/lit8 v0, v1, -0x1

    .line 958
    if-ltz v0, :cond_30

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 959
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 961
    :goto_2f
    return v0

    :cond_30
    const/4 v0, -0x1

    goto :goto_2f
.end method

.method getCachedSpanIndex(II)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 878
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_a

    .line 879
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    .line 887
    :cond_9
    :goto_9
    return v0

    .line 881
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 882
    if-ne v0, v1, :cond_9

    .line 885
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    .line 886
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_9
.end method

.method public getSpanGroupIndex(II)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 975
    .line 977
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    move v4, v2

    move v0, v2

    move v3, v2

    .line 978
    :goto_8
    if-ge v4, p1, :cond_1e

    .line 979
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 980
    add-int/2addr v3, v1

    .line 981
    if-ne v3, p2, :cond_19

    .line 983
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 978
    :goto_14
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_8

    .line 984
    :cond_19
    if-le v3, p2, :cond_25

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 990
    :cond_1e
    add-int v1, v3, v5

    if-le v1, p2, :cond_24

    .line 991
    add-int/lit8 v0, v0, 0x1

    .line 993
    :cond_24
    return v0

    :cond_25
    move v1, v3

    goto :goto_14
.end method

.method public getSpanIndex(II)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 914
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 915
    if-ne v4, p2, :cond_8

    .line 941
    :cond_7
    :goto_7
    return v1

    .line 921
    :cond_8
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 922
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v0

    .line 923
    if-ltz v0, :cond_41

    .line 924
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 925
    add-int/lit8 v0, v0, 0x1

    :goto_27
    move v3, v0

    .line 928
    :goto_28
    if-ge v3, p1, :cond_3b

    .line 929
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 930
    add-int/2addr v2, v0

    .line 931
    if-ne v2, p2, :cond_37

    move v0, v1

    .line 928
    :cond_32
    :goto_32
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_28

    .line 933
    :cond_37
    if-gt v2, p2, :cond_32

    move v0, v2

    goto :goto_32

    .line 938
    :cond_3b
    add-int v0, v2, v4

    if-gt v0, p2, :cond_7

    move v1, v2

    .line 939
    goto :goto_7

    :cond_41
    move v0, v1

    move v2, v1

    goto :goto_27
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 866
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .registers 2

    .prologue
    .line 874
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .registers 2

    .prologue
    .line 857
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 858
    return-void
.end method
