.class public Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;
.super Landroid/widget/BaseAdapter;
.source "ContinueBoardAdapterGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private continueDataModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/models/ContinueDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private onTabItemListener:Lcom/bzbs/lib/survey/listener/OnTabItemListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/models/ContinueDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "continueDataModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/models/ContinueDataModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    if-nez p2, :cond_f

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->continueDataModels:Ljava/util/ArrayList;

    .line 29
    :goto_c
    iput-object p1, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->activity:Landroid/app/Activity;

    .line 30
    return-void

    .line 27
    :cond_f
    iput-object p2, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->continueDataModels:Ljava/util/ArrayList;

    goto :goto_c
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->continueDataModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/bzbs/lib/survey/models/ContinueDataModel;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->continueDataModels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/models/ContinueDataModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->getItem(I)Lcom/bzbs/lib/survey/models/ContinueDataModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    if-nez p2, :cond_28

    .line 56
    iget-object v2, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->activity:Landroid/app/Activity;

    const-string/jumbo v3, "layout_inflater"

    .line 57
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 58
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/bzbs/lib/survey/R$layout;->bz_survey_continue_row:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;

    invoke-direct {v0, p2}, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    .local v0, "holder":Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->getItem(I)Lcom/bzbs/lib/survey/models/ContinueDataModel;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->onTabItemListener:Lcom/bzbs/lib/survey/listener/OnTabItemListener;

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;->onBind(ILcom/bzbs/lib/survey/models/ContinueDataModel;Landroid/app/Activity;Lcom/bzbs/lib/survey/listener/OnTabItemListener;)V

    .line 67
    return-object p2

    .line 62
    .end local v0    # "holder":Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;
    :cond_28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;

    .restart local v0    # "holder":Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid$ViewHolder;
    goto :goto_1c
.end method

.method public setOnTabItemListener(Lcom/bzbs/lib/survey/listener/OnTabItemListener;)V
    .registers 2
    .param p1, "onTabItemListener"    # Lcom/bzbs/lib/survey/listener/OnTabItemListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapterGrid;->onTabItemListener:Lcom/bzbs/lib/survey/listener/OnTabItemListener;

    .line 72
    return-void
.end method
