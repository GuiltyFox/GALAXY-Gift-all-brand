.class public Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ExpandableHeightRecyclerView.java"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;->a:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;->a:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;->a:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;->a:Z

    return v0
.end method

.method public onMeasure(II)V
    .registers 5

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 39
    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 41
    invoke-super {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    :goto_1c
    return-void

    .line 46
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    goto :goto_1c
.end method

.method public setExpanded(Z)V
    .registers 2

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/privilege/control/ExpandableHeightRecyclerView;->a:Z

    .line 30
    return-void
.end method
