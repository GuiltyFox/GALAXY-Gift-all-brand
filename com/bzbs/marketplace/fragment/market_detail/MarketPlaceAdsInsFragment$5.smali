.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;
.super Ljava/lang/Object;
.source "MarketPlaceAdsInsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->l()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    .line 355
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    const/4 v0, 0x4

    if-ne p2, v0, :cond_23

    .line 356
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->d(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 357
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/DLManager;->a(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/DLManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->d(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DLManager;->a(Ljava/lang/String;)V

    .line 359
    :cond_23
    const/4 v0, 0x0

    return v0
.end method
