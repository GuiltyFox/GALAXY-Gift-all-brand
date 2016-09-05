.class Lcom/samsung/privilege/activity/HistoryActivity$4$5;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$4;->a(Landroid/view/View;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/HistoryActivity$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V
    .registers 2

    .prologue
    .line 297
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 334
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(VerifySubmitListener|onFailure)response_code="

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

    .line 338
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 340
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const-string/jumbo v1, "Verify Submit Fail!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(VerifySubmitListener|onComplete)response_code="

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

    .line 302
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 304
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$5;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->k(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$4$5$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/HistoryActivity$4$5$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method
