.class Lcom/samsung/privilege/activity/WalletCardActivity$29$1$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$29$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$29$1;)V
    .registers 2

    .prologue
    .line 2568
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$29$1;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2577
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 2578
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(process_wallet_verify_success_redeem_campaign|onFailure)response_code="

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

    .line 2579
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$29$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$29;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "Can not redeem campaign!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->c(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    .line 2580
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2571
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(process_wallet_verify_success_redeem_campaign|onComplete)response_code="

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

    .line 2572
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$29$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$29;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$29$1$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$29$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$29$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$29;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$29;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Z)V

    .line 2573
    return-void
.end method
