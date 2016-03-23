.class public Lcom/bzbs/lib/survey/control/ExpandableHeightListView;
.super Landroid/widget/ListView;
.source "ExpandableHeightListView.java"


# instance fields
.field expanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/ExpandableHeightListView;->expanded:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/ExpandableHeightListView;->expanded:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/control/ExpandableHeightListView;->expanded:Z

    .line 22
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/control/ExpandableHeightListView;->expanded:Z

    return v0
.end method

.method public onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/ExpandableHeightListView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 31
    const v2, 0xffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 32
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    .line 34
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/ExpandableHeightListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 35
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/ExpandableHeightListView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .end local v0    # "expandSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_1c
    return-void

    .line 37
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    goto :goto_1c
.end method

.method public setExpanded(Z)V
    .registers 2
    .param p1, "expanded"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/control/ExpandableHeightListView;->expanded:Z

    .line 43
    return-void
.end method
