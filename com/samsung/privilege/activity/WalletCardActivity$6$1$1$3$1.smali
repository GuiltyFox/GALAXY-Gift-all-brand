.class Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;)V
    .registers 2

    .prologue
    .line 747
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 810
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 811
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

    .line 813
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->g(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 816
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f090385

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogWallet;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 16

    .prologue
    .line 750
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

    .line 751
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->g(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 754
    :try_start_37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 755
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    const-string/jumbo v2, "issuer"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    const-string/jumbo v2, "cardId"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    const-string/jumbo v2, "imageUrl"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 760
    const-string/jumbo v2, "merchantName"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 761
    const-string/jumbo v2, "branchName"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 762
    const-string/jumbo v2, "amount"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    .line 763
    const-string/jumbo v4, "balance"

    invoke-static {v0, v4}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v4

    .line 764
    const-string/jumbo v8, "transactionDate"

    invoke-static {v0, v8}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 766
    const-string/jumbo v10, "success"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 767
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Payment Success"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 806
    :goto_d5
    return-void

    .line 798
    :cond_d6
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/DialogWallet;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_ea} :catch_eb

    goto :goto_d5

    .line 803
    :catch_eb
    move-exception v0

    .line 804
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d5
.end method
