.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;
.super Ljava/lang/Object;
.source "MarketPlaceAdsInsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V
    .registers 3

    .prologue
    .line 340
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iput p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mainDlPb1:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->tvPercentLoader:Landroid/widget/TextView;

    iget v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    return-void
.end method
