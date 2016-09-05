.class Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;
.super Ljava/lang/Object;
.source "MarketPlaceDashboardCampaignListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

.field final synthetic c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 4

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    iput p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->a:I

    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_b

    .line 150
    :goto_a
    return-void

    .line 131
    :cond_b
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BZB Category-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    iget-object v2, v2, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName_en()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Click BZB Campaign Banner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "BZB Marketplace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BZB Category-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    iget-object v3, v3, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v3}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName_en()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , Click BZB Campaign Banner , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_a5
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 139
    :cond_bf
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    if-eqz v0, :cond_cb

    .line 140
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->a:I

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;->a(Landroid/view/View;IZ)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_cb} :catch_e1

    .line 149
    :cond_cb
    :goto_cb
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a

    .line 142
    :cond_d4
    :try_start_d4
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    if-eqz v0, :cond_cb

    .line 143
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;

    iget v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;->a:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;->a(Landroid/view/View;IZ)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_e0} :catch_e1

    goto :goto_cb

    .line 145
    :catch_e1
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cb
.end method
