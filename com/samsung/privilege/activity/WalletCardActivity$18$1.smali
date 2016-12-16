.class Lcom/samsung/privilege/activity/WalletCardActivity$18$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$18;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$18;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$18;)V
    .registers 2

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 1360
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1362
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doVerifyImei|onFailure)response_code="

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

    .line 1364
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1367
    :try_start_34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1368
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1369
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1370
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    const-string/jumbo v0, "1201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1372
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wallet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wallet_create"

    iget-object v5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v5, v5, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :goto_9a
    return-void

    .line 1375
    :cond_9b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_a2} :catch_a3

    goto :goto_9a

    .line 1378
    :catch_a3
    move-exception v0

    .line 1379
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_9a
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1338
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doVerifyImei|onComplete)response_code="

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

    .line 1340
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1343
    :try_start_31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1344
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1346
    if-eqz v0, :cond_4f

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1347
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, v0}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4f} :catch_5f

    .line 1353
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$18;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$18;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    return-void

    .line 1349
    :catch_5f
    move-exception v0

    goto :goto_4f
.end method
