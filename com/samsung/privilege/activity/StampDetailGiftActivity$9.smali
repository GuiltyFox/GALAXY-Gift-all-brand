.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "StampDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 475
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 493
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(createStampAndGetStampProfile|onFailure)response_code="

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

    .line 497
    :try_start_29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 498
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    const-string/jumbo v2, "1201"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 522
    const-string/jumbo v0, "StampAgency Detail"

    const-string/jumbo v1, "doCheckCreateStamp Fail:1201"

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5d} :catch_8b

    .line 535
    :goto_5d
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    .line 536
    return-void

    .line 524
    :cond_63
    :try_start_63
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 525
    const-string/jumbo v1, "StampAgency Detail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doCheckCreateStamp Fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8a} :catch_8b

    goto :goto_5d

    .line 527
    :catch_8b
    move-exception v0

    .line 528
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 529
    const-string/jumbo v1, "StampAgency Detail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doCheckCreateStamp Fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 478
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(createStampAndGetStampProfile|onComplete)response_code="

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

    .line 481
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v1

    const-string/jumbo v2, "cardId"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    .line 483
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v1

    const-string/jumbo v2, "stampId"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bzbs/bean/StampAgency;->stampId:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4e} :catch_4f

    .line 489
    :goto_4e
    return-void

    .line 486
    :catch_4f
    move-exception v0

    .line 487
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$9;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4e
.end method
