.class Lcom/samsung/privilege/activity/WalletCardActivity$18$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$18;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$18;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$18;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->f(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1686
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1687
    const-string/jumbo v1, "code"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    const-string/jumbo v2, "expirein"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    .line 1689
    const-string/jumbo v4, "code_format"

    invoke-static {v0, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1691
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v5, v5, Lcom/samsung/privilege/activity/WalletCardActivity$18;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1692
    const-string/jumbo v5, "issuer"

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$18;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v6

    iget-object v6, v6, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1693
    const-string/jumbo v5, "cardId"

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$18;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    const-string/jumbo v5, "code"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    const-string/jumbo v1, "expirein"

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1696
    const-string/jumbo v1, "code_format"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_73} :catch_74

    .line 1701
    :goto_73
    return-void

    .line 1698
    :catch_74
    move-exception v0

    .line 1699
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_73
.end method
