.class Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;)V
    .registers 2

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1326
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1327
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(checkCodeStatus|failure)response_code="

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

    .line 1329
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->f(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1332
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f0901ea

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogWallet;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 16

    .prologue
    .line 1265
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(checkCodeStatus|onComplete)response_code="

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

    .line 1266
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->f(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1269
    :try_start_37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1270
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, "issuer"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1273
    const-string/jumbo v2, "cardId"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1274
    const-string/jumbo v2, "imageUrl"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1275
    const-string/jumbo v2, "merchantName"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1276
    const-string/jumbo v2, "branchName"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1277
    const-string/jumbo v2, "amount"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    .line 1278
    const-string/jumbo v4, "balance"

    invoke-static {v0, v4}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v4

    .line 1279
    const-string/jumbo v8, "transactionDate"

    invoke-static {v0, v8}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1281
    const-string/jumbo v10, "success"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1282
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Payment Success"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1322
    :goto_d9
    return-void

    .line 1314
    :cond_da
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/DialogWallet;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_ee
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_ee} :catch_ef

    goto :goto_d9

    .line 1319
    :catch_ef
    move-exception v0

    .line 1320
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d9
.end method
