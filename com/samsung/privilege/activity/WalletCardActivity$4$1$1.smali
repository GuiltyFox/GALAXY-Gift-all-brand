.class Lcom/samsung/privilege/activity/WalletCardActivity$4$1$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$4$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$4$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$4$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 444
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$4$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 448
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1$1;->a:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v0

    .line 451
    :goto_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_50

    .line 452
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 453
    const-string/jumbo v5, "issuer"

    invoke-static {v4, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 455
    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$4$1;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$4$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$4;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$4;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v6

    iget-object v6, v6, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 456
    const-string/jumbo v5, "cardId"

    invoke-static {v4, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 457
    const-string/jumbo v6, "active"

    invoke-static {v4, v6}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 459
    if-eqz v5, :cond_4d

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    if-ne v4, v1, :cond_4d

    move v0, v1

    .line 451
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 465
    :cond_50
    if-ne v0, v1, :cond_75

    .line 466
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$4$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$4;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 468
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$4$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$4;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->f(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 469
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$4$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$4$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$4;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->g(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_75} :catch_76

    .line 474
    :cond_75
    :goto_75
    return-void

    .line 471
    :catch_76
    move-exception v0

    .line 472
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(retryCheckWalletCard|Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75
.end method
