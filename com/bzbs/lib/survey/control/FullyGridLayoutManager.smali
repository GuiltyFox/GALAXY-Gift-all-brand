.class public Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "FullyGridLayoutManager.java"


# instance fields
.field private mMeasuredDimension:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->mMeasuredDimension:[I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->mMeasuredDimension:[I

    .line 27
    return-void
.end method

.method private measureScrapChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V
    .registers 14
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "position"    # I
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I
    .param p5, "measuredDimension"    # [I

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getItemCount()I

    move-result v5

    if-ge p2, v5, :cond_51

    .line 86
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 87
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_51

    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 90
    .local v3, "p":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 89
    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 92
    .local v1, "childWidthSpec":I
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 91
    invoke-static {p4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 93
    .local v0, "childHeightSpec":I
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 94
    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    aput v6, p5, v5

    .line 95
    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    aput v6, p5, v5

    .line 96
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_51} :catch_52

    .line 102
    .end local v0    # "childHeightSpec":I
    .end local v1    # "childWidthSpec":I
    .end local v3    # "p":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_51
    :goto_51
    return-void

    .line 98
    :catch_52
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .registers 19
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 33
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 34
    .local v12, "widthMode":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 35
    .local v8, "heightMode":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 36
    .local v13, "widthSize":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 38
    .local v9, "heightSize":I
    const/4 v11, 0x0

    .line 39
    .local v11, "width":I
    const/4 v7, 0x0

    .line 40
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getItemCount()I

    move-result v6

    .line 41
    .local v6, "count":I
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getSpanCount()I

    move-result v10

    .line 42
    .local v10, "span":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v6, :cond_5a

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v0, 0x0

    .line 45
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->mMeasuredDimension:[I

    move-object v0, p0

    move-object v1, p1

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->measureScrapChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 48
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_48

    .line 49
    rem-int v0, v2, v10

    if-nez v0, :cond_3e

    .line 50
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->mMeasuredDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/2addr v11, v0

    .line 52
    :cond_3e
    if-nez v2, :cond_45

    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->mMeasuredDimension:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 42
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 56
    :cond_48
    rem-int v0, v2, v10

    if-nez v0, :cond_52

    .line 57
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->mMeasuredDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v7, v0

    .line 59
    :cond_52
    if-nez v2, :cond_45

    .line 60
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->mMeasuredDimension:[I

    const/4 v1, 0x0

    aget v11, v0, v1

    goto :goto_45

    .line 65
    :cond_5a
    packed-switch v12, :pswitch_data_68

    .line 72
    :goto_5d
    packed-switch v8, :pswitch_data_6e

    .line 79
    :goto_60
    invoke-virtual {p0, v11, v7}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->setMeasuredDimension(II)V

    .line 80
    return-void

    .line 67
    :pswitch_64
    move v11, v13

    goto :goto_5d

    .line 74
    :pswitch_66
    move v7, v9

    goto :goto_60

    .line 65
    :pswitch_data_68
    .packed-switch 0x40000000
        :pswitch_64
    .end packed-switch

    .line 72
    :pswitch_data_6e
    .packed-switch 0x40000000
        :pswitch_66
    .end packed-switch
.end method
