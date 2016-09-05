.class Lcom/samsung/privilege/activity/AddMoneyActivity$4;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "AddMoneyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity;->doConfirm(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AddMoneyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response_text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->a(Lcom/samsung/privilege/activity/AddMoneyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 340
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->d(Lcom/samsung/privilege/activity/AddMoneyActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/AddMoneyActivity$4$2;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Pop-up Topup Fail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scc|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 291
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response_text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->a(Lcom/samsung/privilege/activity/AddMoneyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 295
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->d(Lcom/samsung/privilege/activity/AddMoneyActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/AddMoneyActivity$4$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Pop-up Topup Success"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scc|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$4;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    return-void
.end method
