.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "MarketPlaceAdsInsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 483
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    const v2, 0x7f090351

    .line 486
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->e(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 487
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->e(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 490
    :cond_14
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6a

    .line 493
    :try_start_18
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 494
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 495
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_a5

    .line 500
    :goto_2f
    const-string/jumbo v0, ""

    .line 502
    :try_start_32
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 503
    const-string/jumbo v1, "AdsMessage"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_42} :catch_65

    .line 528
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->a:Ljava/lang/String;

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 529
    :cond_51
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->startActivity(Landroid/content/Intent;)V

    .line 530
    :cond_64
    return-void

    .line 504
    :catch_65
    move-exception v0

    .line 505
    const-string/jumbo v0, ""

    goto :goto_42

    .line 509
    :cond_6a
    const-string/jumbo v0, ""

    .line 511
    if-nez p3, :cond_84

    .line 512
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_75
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 524
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    goto :goto_42

    .line 515
    :cond_84
    :try_start_84
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 516
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 517
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9b} :catch_9d

    move-result-object v0

    goto :goto_75

    .line 518
    :catch_9d
    move-exception v0

    .line 519
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    .line 496
    :catch_a5
    move-exception v0

    goto :goto_2f
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 534
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->e(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 535
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->e(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 537
    :cond_11
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 538
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;->a(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 539
    return-void
.end method
