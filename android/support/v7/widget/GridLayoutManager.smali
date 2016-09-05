.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 74
    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 745
    if-eqz p5, :cond_4d

    move v1, v2

    move v0, v4

    .line 754
    :goto_7
    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v5, v2, :cond_52

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 755
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move v4, v3

    :goto_17
    move v6, v5

    move v5, v0

    .line 761
    :goto_19
    if-eq v5, p3, :cond_59

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v0, v5

    .line 763
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 764
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v7

    # setter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v0, v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$102(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    .line 765
    if-ne v4, v3, :cond_55

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v7

    if-le v7, v2, :cond_55

    .line 766
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v7, v6, v7

    # setter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v0, v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    .line 770
    :goto_43
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v6, v0

    .line 761
    add-int v0, v5, v1

    move v5, v0

    goto :goto_19

    .line 750
    :cond_4d
    add-int/lit8 v0, p3, -0x1

    move v1, v3

    move p3, v3

    .line 752
    goto :goto_7

    :cond_52
    move v5, v4

    move v4, v2

    .line 759
    goto :goto_17

    .line 768
    :cond_55
    # setter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v0, v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    goto :goto_43

    .line 772
    :cond_59
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .registers 7

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_2c

    .line 188
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 189
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 190
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 193
    :cond_2c
    return-void
.end method

.method private calculateItemBorders(I)V
    .registers 4

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 307
    return-void
.end method

.method static calculateItemBorders([III)[I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 317
    if-eqz p0, :cond_f

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_f

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_13

    .line 319
    :cond_f
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 321
    :cond_13
    aput v2, p0, v2

    .line 322
    div-int v1, p2, p1

    .line 323
    rem-int v5, p2, p1

    .line 326
    const/4 v0, 0x1

    move v3, v0

    move v4, v2

    :goto_1c
    if-gt v3, p1, :cond_2f

    .line 328
    add-int/2addr v2, v5

    .line 329
    if-lez v2, :cond_30

    sub-int v0, p1, v2

    if-ge v0, v5, :cond_30

    .line 330
    add-int/lit8 v0, v1, 0x1

    .line 331
    sub-int/2addr v2, p1

    .line 333
    :goto_28
    add-int/2addr v4, v0

    .line 334
    aput v4, p0, v3

    .line 326
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c

    .line 336
    :cond_2f
    return-object p0

    :cond_30
    move v0, v1

    goto :goto_28
.end method

.method private clearPreLayoutSpanMappingCache()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 183
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    .line 374
    if-ne p4, v0, :cond_1e

    .line 376
    :goto_3
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 377
    if-eqz v0, :cond_20

    .line 379
    :goto_b
    if-lez v1, :cond_3b

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    if-lez v0, :cond_3b

    .line 380
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 381
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_b

    .line 374
    :cond_1e
    const/4 v0, 0x0

    goto :goto_3

    .line 385
    :cond_20
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 386
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    move v2, v0

    move v0, v1

    .line 388
    :goto_2a
    if-ge v2, v3, :cond_39

    .line 389
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 390
    if-le v1, v0, :cond_39

    .line 391
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 396
    goto :goto_2a

    .line 397
    :cond_39
    iput v2, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 399
    :cond_3b
    return-void
.end method

.method private ensureViewSet()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_11

    .line 352
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 354
    :cond_11
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 7

    .prologue
    .line 437
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    .line 449
    :goto_e
    return v0

    .line 440
    :cond_f
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 441
    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    .line 446
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    goto :goto_e

    .line 449
    :cond_32
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    goto :goto_e
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 453
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_10

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    .line 470
    :cond_f
    :goto_f
    return v0

    .line 456
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 457
    if-ne v0, v1, :cond_f

    .line 460
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 461
    if-ne v0, v1, :cond_3a

    .line 466
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x0

    goto :goto_f

    .line 470
    :cond_3a
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    goto :goto_f
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 474
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_e

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 491
    :cond_d
    :goto_d
    return v0

    .line 477
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 478
    if-ne v0, v1, :cond_d

    .line 481
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 482
    if-ne v0, v1, :cond_38

    .line 487
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x1

    goto :goto_d

    .line 491
    :cond_38
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    goto :goto_d
.end method

.method private guessMeasurement(FI)V
    .registers 4

    .prologue
    .line 700
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 702
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 703
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V
    .registers 10

    .prologue
    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 709
    if-nez p4, :cond_12

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 710
    :cond_12
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 713
    :cond_24
    if-nez p4, :cond_2a

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3c

    .line 714
    :cond_2a
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 718
    :cond_3c
    if-eqz p5, :cond_48

    .line 719
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    .line 723
    :goto_42
    if-eqz v0, :cond_47

    .line 724
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 727
    :cond_47
    return-void

    .line 721
    :cond_48
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    goto :goto_42
.end method

.method private updateMeasurements()V
    .registers 3

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 273
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 277
    :goto_15
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 278
    return-void

    .line 275
    :cond_19
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_15
.end method

.method private updateSpecWithExtra(III)I
    .registers 7

    .prologue
    .line 730
    if-nez p2, :cond_5

    if-nez p3, :cond_5

    .line 738
    :cond_4
    :goto_4
    return p1

    .line 733
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 734
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_4

    .line 735
    :cond_11
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_4
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 3

    .prologue
    .line 248
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    .line 407
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 409
    if-le p4, p3, :cond_2f

    const/4 v0, 0x1

    move v1, v0

    :goto_14
    move-object v4, v2

    .line 410
    :goto_15
    if-eq p3, p4, :cond_57

    .line 411
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 412
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 413
    if-ltz v0, :cond_5d

    if-ge v0, p5, :cond_5d

    .line 414
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    .line 415
    if-eqz v0, :cond_32

    move-object v0, v2

    move-object v3, v4

    .line 410
    :goto_2b
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_15

    .line 409
    :cond_2f
    const/4 v0, -0x1

    move v1, v0

    goto :goto_14

    .line 418
    :cond_32
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 419
    if-nez v4, :cond_5d

    move-object v0, v2

    .line 420
    goto :goto_2b

    .line 422
    :cond_42
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_52

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_5a

    .line 424
    :cond_52
    if-nez v2, :cond_5d

    move-object v0, v3

    move-object v3, v4

    .line 425
    goto :goto_2b

    .line 432
    :cond_57
    if-eqz v2, :cond_5b

    :goto_59
    move-object v3, v2

    :cond_5a
    return-object v3

    :cond_5b
    move-object v2, v4

    goto :goto_59

    :cond_5d
    move-object v0, v2

    move-object v3, v4

    goto :goto_2b
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 223
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_c

    .line 224
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 227
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_b
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4

    .prologue
    .line 234
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    .prologue
    .line 239
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 240
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 242
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_8

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 139
    :goto_7
    return v0

    .line 134
    :cond_8
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 135
    const/4 v0, 0x0

    goto :goto_7

    .line 139
    :cond_10
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 125
    :goto_6
    return v0

    .line 120
    :cond_7
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 121
    const/4 v0, 0x0

    goto :goto_6

    .line 125
    :cond_10
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public getSpanCount()I
    .registers 2

    .prologue
    .line 781
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 29

    .prologue
    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v22

    .line 498
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v3, :cond_b6

    const/4 v3, 0x1

    move/from16 v19, v3

    .line 499
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_bb

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    aget v3, v3, v4

    move/from16 v21, v3

    .line 503
    :goto_23
    if-eqz v19, :cond_28

    .line 504
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 506
    :cond_28
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c0

    const/4 v8, 0x1

    .line 508
    :goto_30
    const/4 v6, 0x0

    .line 509
    const/4 v7, 0x0

    .line 510
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 511
    if-nez v8, :cond_55

    .line 512
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    .line 513
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v4

    .line 514
    add-int/2addr v3, v4

    .line 516
    :cond_55
    :goto_55
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v6, v4, :cond_c6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_c6

    if-lez v3, :cond_c6

    .line 517
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v5

    .line 519
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v5, v9, :cond_c3

    .line 520
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Item at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " requires "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " spans but GridLayoutManager has only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " spans."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    :cond_b6
    const/4 v3, 0x0

    move/from16 v19, v3

    goto/16 :goto_11

    .line 499
    :cond_bb
    const/4 v3, 0x0

    move/from16 v21, v3

    goto/16 :goto_23

    .line 506
    :cond_c0
    const/4 v8, 0x0

    goto/16 :goto_30

    .line 524
    :cond_c3
    sub-int/2addr v3, v5

    .line 525
    if-gez v3, :cond_ce

    .line 537
    :cond_c6
    if-nez v6, :cond_e3

    .line 538
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 687
    :goto_cd
    return-void

    .line 528
    :cond_ce
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v4

    .line 529
    if-eqz v4, :cond_c6

    .line 532
    add-int/2addr v7, v5

    .line 533
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v4, v5, v6

    .line 534
    add-int/lit8 v6, v6, 0x1

    .line 535
    goto/16 :goto_55

    .line 542
    :cond_e3
    const/4 v10, 0x0

    .line 543
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 546
    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V

    .line 547
    const/4 v3, 0x0

    move/from16 v20, v3

    move v7, v9

    move v5, v10

    :goto_f3
    move/from16 v0, v20

    if-ge v0, v6, :cond_1cd

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v10, v3, v20

    .line 549
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:Ljava/util/List;

    if-nez v3, :cond_19e

    .line 550
    if-eqz v8, :cond_196

    .line 551
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 563
    :goto_10a
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v9

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int/2addr v9, v11

    aget v4, v4, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    aget v9, v9, v11

    sub-int v9, v4, v9

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1af

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_134
    const/4 v12, 0x0

    move/from16 v0, v22

    invoke-static {v9, v0, v11, v4, v12}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v14, 0x1

    if-ne v4, v14, :cond_1b2

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_155
    const/4 v14, 0x1

    invoke-static {v9, v12, v13, v4, v14}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v12

    .line 572
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_1b7

    .line 574
    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_1b5

    const/4 v13, 0x1

    .line 575
    :goto_167
    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    .line 581
    :goto_16d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    .line 582
    if-le v4, v5, :cond_3d3

    .line 585
    :goto_177
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v5, v9

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 587
    cmpl-float v5, v3, v7

    if-lez v5, :cond_3d0

    .line 547
    :goto_18e
    add-int/lit8 v5, v20, 0x1

    move/from16 v20, v5

    move v7, v3

    move v5, v4

    goto/16 :goto_f3

    .line 553
    :cond_196
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_10a

    .line 556
    :cond_19e
    if-eqz v8, :cond_1a7

    .line 557
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_10a

    .line 559
    :cond_1a7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_10a

    .line 564
    :cond_1af
    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_134

    .line 568
    :cond_1b2
    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_155

    .line 574
    :cond_1b5
    const/4 v13, 0x0

    goto :goto_167

    .line 578
    :cond_1b7
    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_1ca

    const/16 v17, 0x1

    .line 579
    :goto_1be
    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object v14, v10

    move v15, v12

    move/from16 v16, v11

    invoke-direct/range {v13 .. v18}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_16d

    .line 578
    :cond_1ca
    const/16 v17, 0x0

    goto :goto_1be

    .line 591
    :cond_1cd
    if-eqz v19, :cond_264

    .line 593
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v7, v1}, Landroid/support/v7/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 595
    const/4 v5, 0x0

    .line 596
    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_1da
    move/from16 v0, v17

    if-ge v0, v6, :cond_264

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v3, v17

    .line 598
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v7

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v9

    add-int/2addr v7, v9

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v9

    aget v7, v7, v9

    sub-int v7, v4, v7

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_252

    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_210
    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v4, v11}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v9

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v7

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_255

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_22f
    const/4 v11, 0x1

    invoke-static {v4, v7, v10, v3, v11}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v10

    .line 605
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_258

    .line 606
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    .line 610
    :goto_242
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 611
    if-le v3, v5, :cond_3cd

    .line 596
    :goto_24c
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    move v5, v3

    goto :goto_1da

    .line 599
    :cond_252
    iget v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_210

    .line 602
    :cond_255
    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_22f

    .line 608
    :cond_258
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object v12, v8

    move v13, v10

    move v14, v9

    invoke-direct/range {v11 .. v16}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_242

    .line 618
    :cond_264
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 620
    const/4 v3, 0x0

    move v4, v3

    :goto_26c
    if-ge v4, v6, :cond_2cf

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v3, v4

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-eq v3, v5, :cond_2bc

    .line 623
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 624
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v9

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int/2addr v9, v11

    aget v7, v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    aget v9, v9, v11

    sub-int/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v12, :cond_2c0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_2a9
    const/4 v12, 0x0

    invoke-static {v7, v9, v11, v3, v12}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v9

    .line 627
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2c3

    .line 628
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    .line 620
    :cond_2bc
    :goto_2bc
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_26c

    .line 624
    :cond_2c0
    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_2a9

    .line 630
    :cond_2c3
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object v12, v8

    move v13, v10

    move v14, v9

    invoke-direct/range {v11 .. v16}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_2bc

    .line 635
    :cond_2cf
    move-object/from16 v0, p4

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 637
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 638
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_371

    .line 639
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->f:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_367

    .line 640
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->b:I

    .line 641
    sub-int v4, v3, v5

    move v5, v7

    move v7, v8

    .line 655
    :goto_2ed
    const/4 v8, 0x0

    move v15, v8

    move v9, v7

    move v7, v5

    move v5, v4

    move v4, v3

    :goto_2f3
    if-ge v15, v6, :cond_3c3

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v3, v15

    .line 657
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 658
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3a7

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v7

    if-eqz v7, :cond_38c

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int/2addr v10, v11

    aget v9, v9, v10

    add-int/2addr v7, v9

    .line 661
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v9

    sub-int v9, v7, v9

    move v13, v7

    move v14, v9

    .line 672
    :goto_32e
    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int v9, v14, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int v10, v5, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v11, v13, v7

    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v12, v4, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 681
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v7

    if-nez v7, :cond_34f

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_354

    .line 682
    :cond_34f
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 684
    :cond_354
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v7

    or-int/2addr v3, v7

    move-object/from16 v0, p4

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 655
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move v7, v13

    move v9, v14

    goto :goto_2f3

    .line 643
    :cond_367
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->b:I

    .line 644
    add-int v3, v4, v5

    move v5, v7

    move v7, v8

    goto/16 :goto_2ed

    .line 647
    :cond_371
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->f:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_385

    .line 648
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->b:I

    .line 649
    sub-int v5, v7, v5

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v23

    goto/16 :goto_2ed

    .line 651
    :cond_385
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->b:I

    .line 652
    add-int/2addr v5, v7

    goto/16 :goto_2ed

    .line 663
    :cond_38c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    aget v9, v9, v10

    add-int/2addr v9, v7

    .line 664
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v9

    move v13, v7

    move v14, v9

    goto :goto_32e

    .line 667
    :cond_3a7
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    aget v5, v5, v10

    add-int/2addr v5, v4

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v5

    move v13, v7

    move v14, v9

    goto/16 :goto_32e

    .line 686
    :cond_3c3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_cd

    :cond_3cd
    move v3, v5

    goto/16 :goto_24c

    :cond_3d0
    move v3, v7

    goto/16 :goto_18e

    :cond_3d3
    move v4, v5

    goto/16 :goto_177
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 6

    .prologue
    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 343
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 344
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_15

    .line 345
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 347
    :cond_15
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 348
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 25

    .prologue
    .line 978
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 979
    if-nez v13, :cond_8

    .line 980
    const/4 v9, 0x0

    .line 1044
    :cond_7
    :goto_7
    return-object v9

    .line 982
    :cond_8
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 983
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v14

    .line 984
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v3

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v2

    add-int v15, v3, v2

    .line 985
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 986
    if-nez v2, :cond_24

    .line 987
    const/4 v9, 0x0

    goto :goto_7

    .line 991
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    .line 992
    const/4 v3, 0x1

    if-ne v2, v3, :cond_65

    const/4 v2, 0x1

    :goto_30
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_67

    const/4 v2, 0x1

    .line 994
    :goto_37
    if-eqz v2, :cond_69

    .line 995
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 996
    const/4 v3, -0x1

    .line 997
    const/4 v2, -0x1

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    .line 1003
    :goto_47
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_76

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_76

    const/4 v5, 0x1

    .line 1004
    :goto_55
    const/4 v8, 0x0

    .line 1005
    const/4 v7, -0x1

    .line 1006
    const/4 v6, 0x0

    move v12, v2

    .line 1008
    :goto_59
    if-eq v12, v3, :cond_63

    .line 1009
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1010
    if-ne v9, v13, :cond_78

    :cond_63
    move-object v9, v8

    .line 1044
    goto :goto_7

    .line 992
    :cond_65
    const/4 v2, 0x0

    goto :goto_30

    :cond_67
    const/4 v2, 0x0

    goto :goto_37

    .line 999
    :cond_69
    const/4 v4, 0x0

    .line 1000
    const/4 v3, 0x1

    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    goto :goto_47

    .line 1003
    :cond_76
    const/4 v5, 0x0

    goto :goto_55

    .line 1013
    :cond_78
    invoke-virtual {v9}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_88

    move v2, v6

    move v6, v7

    move-object v7, v8

    .line 1008
    :goto_81
    add-int v8, v12, v4

    move v12, v8

    move-object v8, v7

    move v7, v6

    move v6, v2

    goto :goto_59

    .line 1016
    :cond_88
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1017
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v16

    .line 1018
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int v17, v10, v11

    .line 1019
    move/from16 v0, v16

    if-ne v0, v14, :cond_a4

    move/from16 v0, v17

    if-eq v0, v15, :cond_7

    .line 1022
    :cond_a4
    const/4 v10, 0x0

    .line 1023
    if-nez v8, :cond_bd

    .line 1024
    const/4 v10, 0x1

    .line 1037
    :cond_a8
    :goto_a8
    if-eqz v10, :cond_dc

    .line 1039
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    .line 1040
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v2, v7

    move-object v7, v9

    goto :goto_81

    .line 1026
    :cond_bd
    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1027
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1028
    sub-int v11, v18, v11

    .line 1029
    if-le v11, v6, :cond_cf

    .line 1030
    const/4 v10, 0x1

    goto :goto_a8

    .line 1031
    :cond_cf
    if-ne v11, v6, :cond_a8

    move/from16 v0, v16

    if-le v0, v7, :cond_da

    const/4 v11, 0x1

    :goto_d6
    if-ne v5, v11, :cond_a8

    .line 1033
    const/4 v10, 0x1

    goto :goto_a8

    .line 1031
    :cond_da
    const/4 v11, 0x0

    goto :goto_d6

    :cond_dc
    move v2, v6

    move v6, v7

    move-object v7, v8

    goto :goto_81
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 13

    .prologue
    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_c

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 163
    :goto_b
    return-void

    :cond_c
    move-object v6, v0

    .line 150
    check-cast v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 151
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    .line 152
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3d

    .line 153
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3b

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_3b

    const/4 v4, 0x1

    :goto_32
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->c(Ljava/lang/Object;)V

    goto :goto_b

    :cond_3b
    const/4 v4, 0x0

    goto :goto_32

    .line 158
    :cond_3d
    const/4 v3, 0x1

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5d

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_5d

    const/4 v6, 0x1

    :goto_54
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->c(Ljava/lang/Object;)V

    goto :goto_b

    :cond_5d
    const/4 v6, 0x0

    goto :goto_54
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 5

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 198
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 203
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .registers 6

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 219
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 5

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 208
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 214
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 4

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 170
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 174
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 175
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_18

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 178
    :cond_18
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .prologue
    .line 359
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 360
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 361
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 368
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 369
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_7

    .line 283
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 286
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 288
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 291
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v1

    .line 299
    :goto_3d
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 300
    return-void

    .line 294
    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v1

    .line 296
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    goto :goto_3d
.end method

.method public setSpanCount(I)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 794
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_6

    .line 804
    :goto_5
    return-void

    .line 797
    :cond_6
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 798
    if-ge p1, v1, :cond_24

    .line 799
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_24
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 803
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    goto :goto_5
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 2

    .prologue
    .line 258
    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 259
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 4

    .prologue
    .line 106
    if-eqz p1, :cond_b

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_b
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 112
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
