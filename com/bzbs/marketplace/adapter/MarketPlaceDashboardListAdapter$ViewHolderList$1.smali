.class Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;
.super Ljava/lang/Object;
.source "MarketPlaceDashboardListAdapter.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

.field final synthetic b:I

.field final synthetic c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;I)V
    .registers 4

    .prologue
    .line 131
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    iput p3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .registers 8

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 149
    :cond_14
    :goto_14
    return-void

    .line 137
    :cond_15
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_75

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_75

    .line 138
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 140
    const-string/jumbo v0, "BZB Marketplace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Click BZB Category Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName_en()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 142
    :cond_75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iget-object v2, v2, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const-string/jumbo v2, "ItemMarketPlace"

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getCampaigns()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_14
.end method
