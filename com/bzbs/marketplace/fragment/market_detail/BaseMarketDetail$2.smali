.class Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "BaseMarketDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->sendLike(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 288
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;

    .line 291
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v1, v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    check-cast v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l()V

    .line 293
    const-string/jumbo v1, "like"

    .line 294
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel;->getBuzzebees()Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel$BuzzebeesEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/LikePointMarketModel$BuzzebeesEntity;->getPoints()I

    move-result v0

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v3, v3, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 298
    :goto_33
    return-void

    .line 295
    :catch_34
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 303
    return-void
.end method
