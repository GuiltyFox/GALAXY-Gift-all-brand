.class Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerOrderListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "StickerUtil.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerOrderListener;->a:Landroid/content/Context;

    .line 220
    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerOrderListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 250
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 224
    const-string/jumbo v0, ""

    .line 225
    if-eqz p3, :cond_a

    .line 226
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 229
    :cond_a
    const-string/jumbo v1, "buzzebees.sticker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(GetStickerOrderListener|onComplete)response={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_65

    .line 233
    :try_start_33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerOrderListener;->a:Landroid/content/Context;

    const-string/jumbo v2, "sticker_order"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;Ljava/lang/String;)Z

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/stickerset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    const/4 v1, 0x0

    new-instance v2, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerSetListener;

    iget-object v3, p0, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerOrderListener;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerSetListener;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/asynctask/BuzzbeesRestClient;->a(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_65} :catch_66

    .line 245
    :cond_65
    :goto_65
    return-void

    .line 239
    :catch_66
    move-exception v0

    goto :goto_65
.end method
