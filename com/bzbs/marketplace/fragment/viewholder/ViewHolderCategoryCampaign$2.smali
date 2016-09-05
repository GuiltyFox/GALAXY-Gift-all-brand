.class Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;
.super Ljava/lang/Object;
.source "ViewHolderCategoryCampaign.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .registers 8

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 147
    :cond_14
    :goto_14
    return-void

    .line 142
    :cond_15
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "Click BZB Category Banner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->c(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_14
.end method
