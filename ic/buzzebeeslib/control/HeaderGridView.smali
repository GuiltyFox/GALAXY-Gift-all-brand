.class public Lic/buzzebeeslib/control/HeaderGridView;
.super Landroid/widget/GridView;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;,
        Lic/buzzebeeslib/control/HeaderGridView$FullWidthFixedViewLayout;,
        Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeaderGridView"


# instance fields
.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 53
    invoke-direct {p0}, Lic/buzzebeeslib/control/HeaderGridView;->initHeaderGridView()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 58
    invoke-direct {p0}, Lic/buzzebeeslib/control/HeaderGridView;->initHeaderGridView()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 63
    invoke-direct {p0}, Lic/buzzebeeslib/control/HeaderGridView;->initHeaderGridView()V

    .line 64
    return-void
.end method

.method private initHeaderGridView()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 49
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 159
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 166
    :goto_7
    return-void

    .line 160
    :cond_8
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;

    .line 161
    .local v1, "info":Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;
    iget-object v3, v1, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_16

    .line 162
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 159
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lic/buzzebeeslib/control/HeaderGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 130
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 97
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 98
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_12

    instance-of v3, v0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;

    if-nez v3, :cond_12

    .line 99
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_12
    new-instance v2, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;-><init>(Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;)V

    .line 102
    .local v2, "info":Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;
    new-instance v1, Lic/buzzebeeslib/control/HeaderGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lic/buzzebeeslib/control/HeaderGridView$FullWidthFixedViewLayout;-><init>(Lic/buzzebeeslib/control/HeaderGridView;Landroid/content/Context;)V

    .line 103
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    iput-object p1, v2, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 105
    iput-object v1, v2, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 106
    iput-object p2, v2, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 107
    iput-boolean p3, v2, Lic/buzzebeeslib/control/HeaderGridView$FixedViewInfo;->isSelectable:Z

    .line 108
    iget-object v3, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    if-eqz v0, :cond_38

    .line 112
    check-cast v0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 114
    :cond_38
    return-void
.end method

.method public getHeaderViewCount()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 69
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 70
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_16

    instance-of v1, v0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v1, :cond_16

    .line 71
    check-cast v0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 73
    :cond_16
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "result":Z
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 148
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_18

    check-cast v0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 149
    const/4 v1, 0x1

    .line 151
    :cond_18
    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lic/buzzebeeslib/control/HeaderGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 154
    .end local v1    # "result":Z
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 170
    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 171
    new-instance v0, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v2, p1}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 172
    .local v0, "hadapter":Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;
    invoke-virtual {p0}, Lic/buzzebeeslib/control/HeaderGridView;->getNumColumns()I

    move-result v1

    .line 173
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_19

    .line 174
    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 176
    :cond_19
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    .end local v0    # "hadapter":Lic/buzzebeeslib/control/HeaderGridView$HeaderViewGridAdapter;
    .end local v1    # "numColumns":I
    :goto_1c
    return-void

    .line 178
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1c
.end method

.method public setClipChildren(Z)V
    .registers 2
    .param p1, "clipChildren"    # Z

    .prologue
    .line 78
    return-void
.end method
