.class Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerSetListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "StickerUtil.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerSetListener;->a:Landroid/content/Context;

    .line 259
    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 287
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerSetListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 288
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 263
    const-string/jumbo v0, ""

    .line 264
    if-eqz p3, :cond_a

    .line 265
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 268
    :cond_a
    const-string/jumbo v1, "buzzebees.sticker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(GetStickerSetListener|onComplete)response={"

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

    .line 270
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_47

    .line 272
    :try_start_33
    iget-object v1, p0, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerSetListener;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/sticker/StickerUtil;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 274
    invoke-static {}, Lcom/bzbs/marketplace/sticker/StickerUtil;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 275
    iget-object v1, p0, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerSetListener;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_47} :catch_48

    .line 283
    :cond_47
    :goto_47
    return-void

    .line 277
    :catch_48
    move-exception v0

    goto :goto_47
.end method
