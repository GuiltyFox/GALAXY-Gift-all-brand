.class public Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;
.super Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;
.source "MarketPlaceAdsInsFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;",
        ">",
        "Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 7
    check-cast p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/Object;)V
    .registers 11
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
    const v6, 0x7f1004d4

    const v5, 0x7f1004d3

    const v4, 0x7f1004d2

    const v2, 0x7f1004b5

    const v3, 0x7f10029d

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Ljava/lang/Object;)V

    .line 12
    const-string/jumbo v0, "field \'textViewSubtitle\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    const-string/jumbo v1, "field \'textViewSubtitle\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewSubtitle:Landroid/widget/TextView;

    .line 14
    const-string/jumbo v0, "field \'btnAds\' and method \'onSubmit\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 15
    const-string/jumbo v1, "field \'btnAds\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    .line 16
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const-string/jumbo v0, "field \'btnError\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 25
    const-string/jumbo v1, "field \'btnError\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnError:Landroid/widget/Button;

    .line 26
    const-string/jumbo v0, "field \'textViewPoint\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 27
    const-string/jumbo v1, "field \'textViewPoint\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewPoint:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f1004d5

    const-string/jumbo v1, "field \'mainDlPb1\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29
    const v1, 0x7f1004d5

    const-string/jumbo v2, "field \'mainDlPb1\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mainDlPb1:Landroid/widget/ProgressBar;

    .line 30
    const-string/jumbo v0, "field \'tvPercentLoader\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 31
    const-string/jumbo v1, "field \'tvPercentLoader\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->tvPercentLoader:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f1004d6

    const-string/jumbo v1, "field \'viewShadow\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 33
    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->viewShadow:Landroid/view/View;

    .line 34
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 7
    check-cast p2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic reset(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V
    .registers 2

    .prologue
    .line 7
    check-cast p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    .line 39
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewSubtitle:Landroid/widget/TextView;

    .line 40
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    .line 41
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnError:Landroid/widget/Button;

    .line 42
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewPoint:Landroid/widget/TextView;

    .line 43
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mainDlPb1:Landroid/widget/ProgressBar;

    .line 44
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->tvPercentLoader:Landroid/widget/TextView;

    .line 45
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->viewShadow:Landroid/view/View;

    .line 46
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 7
    check-cast p1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    return-void
.end method
