.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MarketPlaceAdsInsFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V
    .registers 3

    .prologue
    .line 17
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$ViewInjector$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->onSubmit(Landroid/view/View;)V

    .line 22
    return-void
.end method
