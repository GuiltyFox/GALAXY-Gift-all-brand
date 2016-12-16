.class public Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MarketPlaceDashboardCampaignListAdapter.java"


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
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

.field private e:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;",
            "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->b:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c:Ljava/util/ArrayList;

    .line 42
    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->e:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->a:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;
    .registers 3

    .prologue
    .line 75
    instance-of v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    if-eqz v0, :cond_7

    .line 76
    check-cast p1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    .line 77
    :goto_6
    return-object p1

    :cond_7
    const/4 p1, 0x0

    goto :goto_6
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->e:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    .line 87
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 54
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_1a

    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v1, v0, p2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;I)V

    .line 68
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    if-eqz v0, :cond_1a

    .line 69
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->d:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    invoke-virtual {v1, p2, v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    .line 72
    :cond_1a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    .line 59
    new-instance v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f04014b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;Landroid/view/View;)V

    return-object v0
.end method
