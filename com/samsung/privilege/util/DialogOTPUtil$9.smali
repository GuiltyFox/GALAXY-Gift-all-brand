.class final Lcom/samsung/privilege/util/DialogOTPUtil$9;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogOTPUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 8

    .prologue
    .line 343
    iput-wide p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->a:J

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->e:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 384
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 385
    const-string/jumbo v2, "OTP"

    const-string/jumbo v3, "AuthenOTP"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_86

    .line 390
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

    .line 392
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    :try_start_48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 397
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    const-string/jumbo v0, "4030"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 400
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    const v2, 0x7f0903a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 410
    :goto_78
    return-void

    .line 403
    :cond_79
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_7e} :catch_7f

    goto :goto_78

    .line 406
    :catch_7f
    move-exception v0

    .line 407
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_78

    .line 386
    :catch_86
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 347
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 348
    const-string/jumbo v2, "OTP"

    const-string/jumbo v3, "AuthenOTP"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_a5

    .line 353
    :goto_18
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

    .line 356
    :try_start_3e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_5a

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 360
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 363
    :cond_5a
    const-string/jumbo v1, "ewallet_token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_71

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 365
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 368
    :cond_71
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 369
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 377
    :goto_8b
    return-void

    .line 371
    :cond_8c
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->c()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 372
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->c(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_98} :catch_99

    goto :goto_8b

    .line 374
    :catch_99
    move-exception v0

    .line 375
    const-string/jumbo v0, "Error while OTP Authentication!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$9;->e:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_8b

    .line 349
    :catch_a5
    move-exception v0

    goto/16 :goto_18
.end method
