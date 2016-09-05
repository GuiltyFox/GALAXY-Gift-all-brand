.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$2;
.super Ljava/lang/Object;
.source "MarketPlaceAdsInsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 562
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_28

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 567
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "market_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 568
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->onSubmit(Landroid/view/View;)V

    .line 571
    :cond_28
    return-void
.end method
