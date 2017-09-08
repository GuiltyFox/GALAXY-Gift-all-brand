.class Lcom/samsung/privilege/activity/WalletCardActivity$23$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$23;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$23;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$23;J)V
    .registers 4

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 14

    .prologue
    .line 2017
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 2020
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2021
    const-string/jumbo v2, "Wallet"

    const-string/jumbo v3, "doVerifyImei"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_167

    .line 2026
    :goto_1b
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

    .line 2028
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->f(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2031
    :try_start_4c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2032
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2033
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2034
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2035
    const-string/jumbo v2, "1201"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 2036
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    .line 2037
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wallet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wallet_create"

    iget-object v5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v5, v5, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v6

    iget-boolean v6, v6, Lcom/bzbs/bean/DashboardItem;->wallet_otp_call_create:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "doVerifyImei Fail:1201"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    :goto_eb
    return-void

    .line 2040
    :cond_ec
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 2041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doVerifyImei Fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_126} :catch_127

    goto :goto_eb

    .line 2043
    :catch_127
    move-exception v0

    .line 2044
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 2045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doVerifyImei Fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    .line 2022
    :catch_167
    move-exception v0

    goto/16 :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1989
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1990
    const-string/jumbo v2, "Wallet"

    const-string/jumbo v3, "doVerifyImei"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_9b

    .line 1995
    :goto_18
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

    .line 1997
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->f(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2000
    :try_start_49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2001
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2003
    if-eqz v0, :cond_67

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 2004
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, v0}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_67} :catch_99

    .line 2010
    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "doVerifyImei Success"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$23;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    return-void

    .line 2006
    :catch_99
    move-exception v0

    goto :goto_67

    .line 1991
    :catch_9b
    move-exception v0

    goto/16 :goto_18
.end method
