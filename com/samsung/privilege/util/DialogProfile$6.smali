.class final Lcom/samsung/privilege/util/DialogProfile$6;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile;->doUpdate(Landroid/app/Dialog;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 523
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$6;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogProfile$6;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogProfile$6;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogProfile$6;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogProfile$6;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogProfile$6;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 554
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doUpdate|onFailure)response_code="

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

    .line 557
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$6;->a:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/util/DialogProfile$6$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogProfile$6$2;-><init>(Lcom/samsung/privilege/util/DialogProfile$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 566
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 526
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doUpdate|onComplete)response_code="

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

    .line 528
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$6;->a:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/util/DialogProfile$6$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/util/DialogProfile$6$1;-><init>(Lcom/samsung/privilege/util/DialogProfile$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void
.end method
