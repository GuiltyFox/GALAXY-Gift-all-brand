.class final Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogChangeMobileNoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(JLandroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 8

    .prologue
    .line 488
    iput-wide p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->a:J

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->c:Landroid/app/Dialog;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->e:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 528
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 531
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 532
    const-string/jumbo v2, "OTP"

    const-string/jumbo v3, "AuthenOTP"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_4e

    .line 537
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doAuthenOTP|onFailure)response_code="

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

    .line 539
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 541
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 542
    return-void

    .line 533
    :catch_4e
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 492
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 493
    const-string/jumbo v2, "OTP"

    const-string/jumbo v3, "AuthenOTP"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_96

    .line 498
    :goto_18
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doAuthenOTP|onComplete)response_code="

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

    .line 501
    :try_start_3e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 503
    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    if-eqz v1, :cond_5a

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 505
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 508
    :cond_5a
    const-string/jumbo v1, "ewallet_token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_71

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 510
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 513
    :cond_71
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 515
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_81

    .line 516
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 519
    :cond_81
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->c(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/bzbs/event/ProfileEvents;->b()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_89} :catch_8a

    .line 524
    :goto_89
    return-void

    .line 521
    :catch_8a
    move-exception v0

    .line 522
    const-string/jumbo v0, "Error while OTP Authentication!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$14;->e:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_89

    .line 494
    :catch_96
    move-exception v0

    goto :goto_18
.end method
