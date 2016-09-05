.class public Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "FullyGridLayoutManager.java"


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->a:[I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->a:[I

    .line 27
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V
    .registers 11

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_51

    .line 86
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_51

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 90
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 89
    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 92
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 91
    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    aput v0, p5, v2

    .line 96
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_51} :catch_52

    .line 102
    :cond_51
    :goto_51
    return-void

    .line 98
    :catch_52
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .registers 19

    .prologue
    .line 33
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 34
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 35
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 36
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getItemCount()I

    move-result v12

    .line 41
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getSpanCount()I

    move-result v13

    .line 42
    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v12, :cond_5d

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v0, 0x0

    .line 45
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->a:[I

    move-object v0, p0

    move-object v1, p1

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 48
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_4b

    .line 49
    rem-int v0, v2, v13

    if-nez v0, :cond_71

    .line 50
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int v1, v7, v0

    .line 52
    :goto_3f
    if-nez v2, :cond_6f

    .line 53
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->a:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    .line 42
    :goto_46
    add-int/lit8 v2, v2, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1b

    .line 56
    :cond_4b
    rem-int v0, v2, v13

    if-nez v0, :cond_6d

    .line 57
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, v6

    .line 59
    :goto_55
    if-nez v2, :cond_6b

    .line 60
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->a:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    goto :goto_46

    .line 65
    :cond_5d
    packed-switch v10, :pswitch_data_74

    .line 72
    :goto_60
    packed-switch v11, :pswitch_data_7a

    .line 79
    :goto_63
    invoke-virtual {p0, v7, v6}, Lcom/bzbs/lib/survey/control/FullyGridLayoutManager;->setMeasuredDimension(II)V

    .line 80
    return-void

    :pswitch_67
    move v7, v9

    .line 67
    goto :goto_60

    :pswitch_69
    move v6, v8

    .line 74
    goto :goto_63

    :cond_6b
    move v1, v7

    goto :goto_46

    :cond_6d
    move v0, v6

    goto :goto_55

    :cond_6f
    move v0, v6

    goto :goto_46

    :cond_71
    move v1, v7

    goto :goto_3f

    .line 65
    nop

    :pswitch_data_74
    .packed-switch 0x40000000
        :pswitch_67
    .end packed-switch

    .line 72
    :pswitch_data_7a
    .packed-switch 0x40000000
        :pswitch_69
    .end packed-switch
.end method
