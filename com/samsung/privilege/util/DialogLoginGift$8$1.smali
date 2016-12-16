.class Lcom/samsung/privilege/util/DialogLoginGift$8$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogLoginGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$8;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/privilege/util/DialogLoginGift$8;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$8;J)V
    .registers 4

    .prologue
    .line 404
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iput-wide p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 448
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 451
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 452
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "RequestOTP"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_62

    .line 457
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(requestOTP|onFailure)response_code="

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

    .line 459
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 460
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$8$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogLoginGift$8$1$2;-><init>(Lcom/samsung/privilege/util/DialogLoginGift$8$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 468
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Z)Z

    .line 469
    return-void

    .line 453
    :catch_62
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 408
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 409
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "RequestOTP"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_66

    .line 414
    :goto_18
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(requestOTP|onComplete)response_code="

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

    .line 416
    const-string/jumbo v0, "Request OTP success."

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$8;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 417
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 419
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$8$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$8;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$8;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/util/DialogLoginGift$8$1$1;-><init>(Lcom/samsung/privilege/util/DialogLoginGift$8$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Z)Z

    .line 444
    return-void

    .line 410
    :catch_66
    move-exception v0

    goto :goto_18
.end method
