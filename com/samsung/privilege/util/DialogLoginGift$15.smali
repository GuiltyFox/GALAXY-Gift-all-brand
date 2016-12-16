.class final Lcom/samsung/privilege/util/DialogLoginGift$15;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogLoginGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    .prologue
    .line 761
    iput-wide p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->a:J

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 780
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 783
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 784
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "LoginDevice"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_4e

    .line 789
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doLoginDevice|onFailure)response_code="

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

    .line 791
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 793
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->c:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 794
    return-void

    .line 785
    :catch_4e
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 765
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 766
    const-string/jumbo v2, "Login"

    const-string/jumbo v3, "LoginDevice"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_52

    .line 771
    :goto_18
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doLoginDevice|onComplete)response_code="

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

    .line 773
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 775
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$15;->d:Landroid/os/Handler;

    invoke-static {p4, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 776
    return-void

    .line 767
    :catch_52
    move-exception v0

    goto :goto_18
.end method
