.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "StampDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 810
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 837
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 838
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getStampPaycode|onFailure)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15$2;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 848
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 813
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getStampPaycode|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 817
    const-string/jumbo v1, "code"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 818
    const-string/jumbo v1, "expirein"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 820
    new-instance v3, Lcom/bzbs/bean/Campaign;

    invoke-direct {v3}, Lcom/bzbs/bean/Campaign;-><init>()V

    .line 821
    const-string/jumbo v0, "QR_CODE"

    iput-object v0, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_53} :catch_64

    .line 827
    :goto_53
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$15$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$15;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 833
    return-void

    .line 823
    :catch_64
    move-exception v0

    goto :goto_53
.end method
