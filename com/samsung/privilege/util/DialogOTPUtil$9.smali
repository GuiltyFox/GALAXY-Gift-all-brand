.class final Lcom/samsung/privilege/util/DialogOTPUtil$9;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogOTPUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/os/Handler;

.field final synthetic h:Ljava/lang/Object;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 11

    .prologue
    .line 348
    iput-wide p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->a:J

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->d:Z

    iput-boolean p6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->e:Z

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->g:Landroid/os/Handler;

    iput-object p9, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->h:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 397
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 398
    const-string/jumbo v2, "OTP"

    const-string/jumbo v3, "AuthenOTP"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_86

    .line 403
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->b()Ljava/lang/String;

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

    .line 405
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 408
    :try_start_48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 410
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    const-string/jumbo v0, "4030"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 413
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    const v2, 0x7f0901e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    :goto_78
    return-void

    .line 416
    :cond_79
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_7e} :catch_7f

    goto :goto_78

    .line 419
    :catch_7f
    move-exception v0

    .line 420
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_78

    .line 399
    :catch_86
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v8, 0x1

    .line 352
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 353
    const-string/jumbo v2, "OTP"

    const-string/jumbo v3, "AuthenOTP"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_114

    .line 358
    :goto_19
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->b()Ljava/lang/String;

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

    .line 361
    :try_start_3f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_5b

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 365
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 368
    :cond_5b
    const-string/jumbo v1, "ewallet_token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_72

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 370
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 373
    :cond_72
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "issuer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",wallet_otp_call_create="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    iget-boolean v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->d:Z

    if-eq v0, v8, :cond_b3

    iget-boolean v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->e:Z

    if-ne v0, v8, :cond_dc

    .line 375
    :cond_b3
    iget-boolean v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->d:Z

    if-ne v0, v8, :cond_c7

    .line 376
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    const-string/jumbo v4, "wallet"

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->h:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    :cond_c7
    iget-boolean v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->e:Z

    if-ne v0, v8, :cond_db

    .line 379
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    const-string/jumbo v4, "stamp"

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->h:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    :cond_db
    :goto_db
    return-void

    .line 382
    :cond_dc
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 384
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LoginEvents.onAuthenOTPSuccess->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bzbs/event/LoginEvents;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_107} :catch_108

    goto :goto_db

    .line 387
    :catch_108
    move-exception v0

    .line 388
    const-string/jumbo v0, "Error while OTP Authentication!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->g:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_db

    .line 354
    :catch_114
    move-exception v0

    goto/16 :goto_19
.end method
