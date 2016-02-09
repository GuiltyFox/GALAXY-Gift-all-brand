.class Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;
.super Ljava/lang/Object;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewGridAdapter"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 5
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 216
    iput-object p2, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 217
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    .line 218
    if-nez p1, :cond_1d

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1d
    iput-object p1, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 222
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 223
    return-void
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_c

    .line 246
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 252
    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 246
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;

    .line 247
    .local v0, "info":Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;
    iget-boolean v2, v0, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_6

    .line 248
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 279
    iget-object v1, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    .line 280
    iget-boolean v1, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 282
    :cond_11
    :goto_11
    return v0

    .line 280
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_13

    .line 271
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    goto :goto_12
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 426
    iget-boolean v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    .line 427
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 429
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getHeadersCount()I
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 310
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 311
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_21

    .line 312
    iget v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v3, p1, v3

    if-nez v3, :cond_1f

    .line 313
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;

    iget-object v3, v3, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 323
    :goto_1e
    return-object v3

    .line 315
    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e

    .line 318
    :cond_21
    sub-int v1, p1, v2

    .line 319
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 320
    .local v0, "adapterCount":I
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_37

    .line 321
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 322
    if-ge v1, v0, :cond_37

    .line 323
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1e

    .line 326
    :cond_37
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemId(I)J
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 331
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 332
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1f

    if-lt p1, v2, :cond_1f

    .line 333
    sub-int v1, p1, v2

    .line 334
    .local v1, "adjPosition":I
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 335
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_1f

    .line 336
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 339
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_1e
    return-wide v3

    :cond_1f
    const-wide/16 v3, -0x1

    goto :goto_1e
.end method

.method public getItemViewType(I)I
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 385
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 386
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1d

    iget v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v3, p1, v3

    if-eqz v3, :cond_1d

    .line 388
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 397
    :goto_1a
    return v3

    .line 388
    :cond_1b
    const/4 v3, 0x1

    goto :goto_1a

    .line 390
    :cond_1d
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_34

    if-lt p1, v2, :cond_34

    .line 391
    sub-int v1, p1, v2

    .line 392
    .local v1, "adjPosition":I
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 393
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_34

    .line 394
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    goto :goto_1a

    .line 397
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_34
    const/4 v3, -0x2

    goto :goto_1a
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 354
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v5, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v4, v5

    .line 355
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_37

    .line 356
    iget-object v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;

    iget-object v2, v4, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 357
    .local v2, "headerViewContainer":Landroid/view/View;
    iget v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_1f

    .line 377
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :goto_1e
    return-object v2

    .line 360
    .restart local v2    # "headerViewContainer":Landroid/view/View;
    :cond_1f
    if-nez p2, :cond_2a

    .line 361
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 366
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2a
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v2, p2

    .line 368
    goto :goto_1e

    .line 372
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :cond_37
    sub-int v1, p1, v3

    .line 373
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 374
    .local v0, "adapterCount":I
    iget-object v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_4d

    .line 375
    iget-object v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 376
    if-ge v1, v0, :cond_4d

    .line 377
    iget-object v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1e

    .line 380
    :cond_4d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_d

    .line 403
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 405
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x2

    goto :goto_c
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 345
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 347
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isEnabled(I)Z
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 290
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 291
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_24

    .line 292
    iget v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v3, p1, v3

    if-nez v3, :cond_22

    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v4, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;

    iget-boolean v3, v3, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    .line 300
    :goto_21
    return v3

    .line 292
    :cond_22
    const/4 v3, 0x0

    goto :goto_21

    .line 295
    :cond_24
    sub-int v1, p1, v2

    .line 296
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 297
    .local v0, "adapterCount":I
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3a

    .line 298
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 299
    if-ge v1, v0, :cond_3a

    .line 300
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_21

    .line 303
    :cond_3a
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 439
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 410
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 412
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 414
    :cond_e
    return-void
.end method

.method public removeHeader(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 265
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 257
    :cond_b
    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;

    .line 258
    .local v1, "info":Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;
    iget-object v2, v1, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_2b

    .line 259
    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    iput-boolean v2, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 261
    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 262
    const/4 v2, 0x1

    goto :goto_a

    .line 256
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setNumColumns(I)V
    .registers 4
    .param p1, "numColumns"    # I

    .prologue
    .line 235
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_b
    iget v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_14

    .line 239
    iput p1, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 240
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 242
    :cond_14
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 418
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 420
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 422
    :cond_e
    return-void
.end method
