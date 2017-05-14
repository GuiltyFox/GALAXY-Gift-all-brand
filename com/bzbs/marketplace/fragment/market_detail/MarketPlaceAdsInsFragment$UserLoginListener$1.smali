.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceAdsInsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 546
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_28

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 552
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "market_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 553
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->onSubmit(Landroid/view/View;)V

    .line 556
    :cond_28
    return-void
.end method
