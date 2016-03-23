.class public Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ContinueBoardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
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
    .line 27
    .local p2, "continueDataModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/models/ContinueDataModel;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    if-nez p2, :cond_f

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->continueDataModels:Ljava/util/ArrayList;

    .line 32
    :goto_c
    iput-object p1, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->activity:Landroid/app/Activity;

    .line 33
    return-void

    .line 30
    :cond_f
    iput-object p2, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->continueDataModels:Ljava/util/ArrayList;

    goto :goto_c
.end method

.method private getItem(I)Lcom/bzbs/lib/survey/models/ContinueDataModel;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->continueDataModels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/models/ContinueDataModel;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->continueDataModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->getItem(I)Lcom/bzbs/lib/survey/models/ContinueDataModel;

    move-result-object v0

    .line 44
    .local v0, "item":Lcom/bzbs/lib/survey/models/ContinueDataModel;
    if-eqz p1, :cond_f

    .line 45
    check-cast p1, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter$ViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->onTabItemListener:Lcom/bzbs/lib/survey/listener/OnTabItemListener;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter$ViewHolder;->onBind(ILcom/bzbs/lib/survey/models/ContinueDataModel;Landroid/app/Activity;Lcom/bzbs/lib/survey/listener/OnTabItemListener;)V

    .line 47
    :cond_f
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$layout;->bz_survey_continue_row:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setOnTabItemListener(Lcom/bzbs/lib/survey/listener/OnTabItemListener;)V
    .registers 2
    .param p1, "onTabItemListener"    # Lcom/bzbs/lib/survey/listener/OnTabItemListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bzbs/lib/survey/adapter/ContinueBoardAdapter;->onTabItemListener:Lcom/bzbs/lib/survey/listener/OnTabItemListener;

    .line 55
    return-void
.end method
