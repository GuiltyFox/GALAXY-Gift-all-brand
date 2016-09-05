.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;
.super Lcn/aigestudio/downloader/interfaces/DLTaskListener;
.source "MarketPlaceAdsInsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-direct {p0}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(Ljava/io/File;)V

    .line 299
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 301
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 303
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V

    .line 306
    :cond_26
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->c(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    .line 307
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V

    .line 326
    const-string/jumbo v0, "DLManager onError"

    const-string/jumbo v1, "error -> %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 317
    invoke-super {p0, p1, p2}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0, v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V

    .line 319
    const-string/jumbo v0, "DLManager onStart"

    const-string/jumbo v1, "fileName -> %1$s, url -> %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .registers 8

    .prologue
    .line 311
    const-string/jumbo v0, "DLManager onConnect"

    const-string/jumbo v1, "type -> %1$d, msg -> %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-super {p0, p1, p2}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
