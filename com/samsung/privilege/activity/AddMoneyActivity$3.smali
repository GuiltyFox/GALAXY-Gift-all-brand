.class Lcom/samsung/privilege/activity/AddMoneyActivity$3;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "AddMoneyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AddMoneyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(checkWalletCardConfig|onFailure)response_code="

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

    .line 245
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->a(Lcom/samsung/privilege/activity/AddMoneyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 247
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 248
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 147
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(checkWalletCardConfig|onComplete)response_code="

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

    .line 149
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AddMoneyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method
