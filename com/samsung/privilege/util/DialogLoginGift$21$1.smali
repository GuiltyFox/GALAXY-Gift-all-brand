.class Lcom/samsung/privilege/util/DialogLoginGift$21$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogLoginGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$21;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/privilege/util/DialogLoginGift$21;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$21;J)V
    .registers 4

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iput-wide p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1246
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1249
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1250
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "PointTransferYes"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_7d

    .line 1255
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(transfer_yes|failure)response_code="

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

    .line 1258
    :try_start_41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1259
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$21;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$21;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$21;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$21;->e:Landroid/os/Handler;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_67} :catch_68

    .line 1264
    :goto_67
    return-void

    .line 1261
    :catch_68
    move-exception v0

    .line 1262
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$21;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$21;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$21;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$21;->e:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_67

    .line 1251
    :catch_7d
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1233
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1234
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "PointTransferYes"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_5d

    .line 1239
    :goto_18
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(transfer_yes|successfully)response_code="

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

    .line 1241
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$21;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$21;->b:Landroid/content/Context;

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$21;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$21;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$21$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$21;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$21;->e:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1242
    return-void

    .line 1235
    :catch_5d
    move-exception v0

    goto :goto_18
.end method
