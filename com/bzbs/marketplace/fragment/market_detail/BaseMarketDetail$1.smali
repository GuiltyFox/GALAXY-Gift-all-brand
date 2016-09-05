.class Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;
.super Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask$CallbackModel;
.source "BaseMarketDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask$CallbackModel;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 7

    .prologue
    .line 215
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Z)V

    .line 216
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iput-object p4, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 217
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPictures()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->o:Ljava/util/ArrayList;

    .line 224
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->c()V

    .line 225
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->d()V

    .line 227
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->b()V

    .line 229
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Z)V

    .line 234
    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 12

    .prologue
    .line 238
    invoke-super/range {p0 .. p7}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask$CallbackModel;->a(Ljava/lang/String;JJJ)V

    .line 239
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    iput-object v0, v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 240
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPictures()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->o:Ljava/util/ArrayList;

    .line 242
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->c()V

    .line 243
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->d()V

    .line 245
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->b()V

    .line 247
    return-void
.end method
