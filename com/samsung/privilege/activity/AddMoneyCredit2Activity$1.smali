.class Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "AddMoneyCredit2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->f()Ljava/lang/String;

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

    .line 250
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->a(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 252
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 253
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 145
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->f()Ljava/lang/String;

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

    .line 147
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->a(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 149
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->d(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method
