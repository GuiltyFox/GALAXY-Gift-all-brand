.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;
.super Ljava/lang/Object;
.source "MarketPlaceAdsInsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/net/wifi/WifiManager;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Landroid/net/wifi/WifiManager;)V
    .registers 3

    .prologue
    .line 222
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;->a:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 225
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 227
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->g()V

    .line 228
    return-void
.end method
