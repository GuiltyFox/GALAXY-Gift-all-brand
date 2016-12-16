.class public Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MarketPlaceDashboardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->b:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->c:Ljava/util/ArrayList;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;
    .registers 3

    .prologue
    .line 79
    instance-of v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    if-eqz v0, :cond_7

    .line 80
    check-cast p1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    .line 81
    :goto_6
    return-object p1

    :cond_7
    const/4 p1, 0x0

    goto :goto_6
.end method

.method static synthetic b(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    .line 91
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->c:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 58
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1a

    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v1, v0, p2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;I)V

    .line 72
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    if-eqz v0, :cond_1a

    .line 73
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    invoke-virtual {v1, p2, v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    .line 76
    :cond_1a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    .line 63
    new-instance v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f04014c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;Landroid/view/View;)V

    return-object v0
.end method
