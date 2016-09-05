.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;
.super Ljava/lang/Object;
.source "MarketPlaceAdsInsFragment.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V
    .registers 2

    .prologue
    .line 543
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$1;)V
    .registers 3

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 546
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->f(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 562
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->g(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 578
    return-void
.end method
