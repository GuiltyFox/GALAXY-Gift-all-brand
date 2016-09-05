.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3$1;
.super Ljava/lang/Object;
.source "MarketPlaceAdsInsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;I)V
    .registers 3

    .prologue
    .line 288
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;

    iput p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3$1;->a:I

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V

    .line 292
    return-void
.end method
