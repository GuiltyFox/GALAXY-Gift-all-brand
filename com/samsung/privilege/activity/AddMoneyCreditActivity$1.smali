.class Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "AddMoneyCreditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCreditActivity;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->f()Ljava/lang/String;

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

    .line 170
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->a(Lcom/samsung/privilege/activity/AddMoneyCreditActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 173
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 114
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->f()Ljava/lang/String;

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

    .line 116
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->a(Lcom/samsung/privilege/activity/AddMoneyCreditActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->b(Lcom/samsung/privilege/activity/AddMoneyCreditActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method
