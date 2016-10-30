.class public Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$$ViewInjector;
.super Ljava/lang/Object;
.source "MarketPlaceDashboardCampaignListAdapter$ViewHolderList$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const v4, 0x7f100661

    const v3, 0x7f100660

    const v2, 0x7f100579

    .line 11
    const-string/jumbo v0, "field \'imageViewCover\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'imageViewCover\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->imageViewCover:Landroid/widget/ImageView;

    .line 13
    const-string/jumbo v0, "field \'contentList\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'contentList\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->contentList:Landroid/support/v7/widget/CardView;

    .line 15
    const-string/jumbo v0, "field \'tvSeemore\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string/jumbo v1, "field \'tvSeemore\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->tvSeemore:Landroid/widget/TextView;

    .line 17
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->imageViewCover:Landroid/widget/ImageView;

    .line 21
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->contentList:Landroid/support/v7/widget/CardView;

    .line 22
    iput-object v0, p1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->tvSeemore:Landroid/widget/TextView;

    .line 23
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$$ViewInjector;->reset(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;)V

    return-void
.end method
