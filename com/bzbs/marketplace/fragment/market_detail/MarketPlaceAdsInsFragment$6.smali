.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "MarketPlaceAdsInsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V
    .registers 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 381
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;)V

    .line 382
    invoke-virtual {v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6$1;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 381
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 384
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/InstallAppModel;

    .line 386
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/InstallAppModel;->getInstallPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a4

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/InstallAppModel;->getInstallPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 387
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/InstallAppModel;->getInstallPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/String;)Z

    move-result v1

    .line 392
    :goto_47
    if-eqz v1, :cond_1e

    .line 393
    const-string/jumbo v1, ""

    .line 394
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 396
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/InstallAppModel;->getVerifyTypeAndroid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "manual"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "api/campaign/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/InstallAppModel;->getID()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/verify?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_8f
    new-instance v1, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v5, v5, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    sget-object v6, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v1, v5, v0, v4, v6}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6$2;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;)V

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    goto/16 :goto_1e

    :cond_a4
    move v1, v2

    .line 389
    goto :goto_47

    .line 399
    :cond_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{\"campaign_id\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/InstallAppModel;->getID()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\"token\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    const-string/jumbo v0, ""

    .line 404
    :try_start_db
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 405
    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_ee
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_db .. :try_end_ee} :catch_147

    move-result-object v0

    .line 410
    :goto_ef
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string/jumbo v5, ""

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "api/main/log_verify"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string/jumbo v5, "encrypt"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8f

    .line 406
    :catch_147
    move-exception v1

    .line 407
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_ef

    .line 439
    :cond_14c
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 444
    return-void
.end method
