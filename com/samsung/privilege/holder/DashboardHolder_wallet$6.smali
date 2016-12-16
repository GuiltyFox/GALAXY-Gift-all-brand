.class final Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DashboardHolder_wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Handler;)V
    .registers 6

    .prologue
    .line 598
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->e:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 613
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doActivate|onFailure)response_code="

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

    .line 617
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 620
    :try_start_30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 621
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 622
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    const-string/jumbo v0, "1201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 625
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->c:Ljava/lang/String;

    const-string/jumbo v3, "Dashboard"

    const-string/jumbo v4, "wallet_create"

    iget-object v5, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Active Wallet Request OTP"

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_81} :catch_aa

    .line 636
    :goto_81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Z)Z

    .line 637
    return-void

    .line 628
    :cond_86
    :try_start_86
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->d:Landroid/app/Activity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Active Wallet Fail"

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a9} :catch_aa

    goto :goto_81

    .line 631
    :catch_aa
    move-exception v0

    .line 632
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->d:Landroid/app/Activity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Active Wallet Fail"

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 601
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doActivate|onComplete)response_code="

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

    .line 603
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 605
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Z)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Active Wallet Success"

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Z)Z

    .line 609
    return-void
.end method
