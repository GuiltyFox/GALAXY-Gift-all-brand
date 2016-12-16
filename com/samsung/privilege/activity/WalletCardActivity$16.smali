.class Lcom/samsung/privilege/activity/WalletCardActivity$16;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1251
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 1253
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doCheckPrivilege|onFailure)response_code="

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

    .line 1255
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1258
    :try_start_32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1259
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1260
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1261
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1262
    const-string/jumbo v0, "4030"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1263
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f0903a8

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_62} :catch_6d

    .line 1274
    :goto_62
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Z)Z

    .line 1275
    return-void

    .line 1266
    :cond_67
    :try_start_67
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6c} :catch_6d

    goto :goto_62

    .line 1269
    :catch_6d
    move-exception v0

    .line 1270
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_62
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 11

    .prologue
    const v5, 0x7f0903a8

    .line 1228
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doCheckPrivilege|onComplete)response_code="

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

    .line 1230
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1234
    :try_start_32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1235
    const-string/jumbo v1, "amount"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    .line 1236
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_52

    .line 1237
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4d} :catch_61

    .line 1246
    :goto_4d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Z)Z

    .line 1247
    return-void

    .line 1239
    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f0903a8

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_60} :catch_61

    goto :goto_4d

    .line 1241
    :catch_61
    move-exception v0

    .line 1242
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4d
.end method
