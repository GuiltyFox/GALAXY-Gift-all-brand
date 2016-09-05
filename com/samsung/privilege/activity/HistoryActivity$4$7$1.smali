.class Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$4$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$4$7;)V
    .registers 2

    .prologue
    .line 380
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(PostUsedListener|onFailure)response_code="

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

    .line 424
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 426
    const-string/jumbo v0, ""

    .line 428
    :try_start_3f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 430
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_51} :catch_65

    move-result-object v0

    .line 435
    :goto_52
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 439
    :goto_5b
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0, p4}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    return-void

    .line 431
    :catch_65
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_6b
    move-object p4, v0

    goto :goto_5b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 383
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(PostUsedListener|onComplete)response_code="

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

    .line 385
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 387
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;->a:Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->k(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method
