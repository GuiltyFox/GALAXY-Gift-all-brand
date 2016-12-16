.class Lcom/samsung/privilege/util/DialogQueue$4$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogQueue$4;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogQueue$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogQueue$4;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogQueue$4$1;->a:Lcom/samsung/privilege/util/DialogQueue$4;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/samsung/privilege/util/DialogQueue;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(AddQueue|onFailure)response_code="

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

    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogQueue$4$1;->a:Lcom/samsung/privilege/util/DialogQueue$4;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogQueue$4;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogQueue$4$1;->a:Lcom/samsung/privilege/util/DialogQueue$4;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogQueue$4;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 94
    invoke-static {}, Lcom/samsung/privilege/util/DialogQueue;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(AddQueue|onComplete)response_code="

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

    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogQueue$4$1;->a:Lcom/samsung/privilege/util/DialogQueue$4;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogQueue$4;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 99
    :try_start_2d
    new-instance v0, Lcom/bzbs/bean/QueueItem;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bzbs/bean/QueueItem;-><init>(Lorg/json/JSONObject;)V

    .line 100
    invoke-static {v0}, Lcom/bzbs/event/QueueEvents;->a(Lcom/bzbs/bean/QueueItem;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogQueue$4$1;->a:Lcom/samsung/privilege/util/DialogQueue$4;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogQueue$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogQueue$4$1;->a:Lcom/samsung/privilege/util/DialogQueue$4;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogQueue$4;->c:Lcom/bzbs/bean/Place;

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/util/DialogQueue;->a(Landroid/content/Context;Lcom/bzbs/bean/Place;Lcom/bzbs/bean/QueueItem;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_45} :catch_46

    .line 106
    :goto_45
    return-void

    .line 103
    :catch_46
    move-exception v0

    goto :goto_45
.end method
