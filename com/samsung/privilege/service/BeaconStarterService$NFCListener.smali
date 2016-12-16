.class public Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "BeaconStarterService.java"


# instance fields
.field final synthetic a:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;->a:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(NFCListener|onFailure)response={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 362
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(NFCListener|onComplete)response={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :try_start_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    new-instance v3, Lcom/bzbs/bean/NFCResult;

    invoke-direct {v3, v0}, Lcom/bzbs/bean/NFCResult;-><init>(Lorg/json/JSONObject;)V

    move v2, v1

    .line 369
    :goto_31
    iget-object v0, v3, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_84

    .line 370
    iget-object v0, v3, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    .line 371
    iget-object v4, v0, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    const-string/jumbo v5, "campaign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    .line 374
    new-instance v4, Lcom/bzbs/bean/MessageGCM;

    invoke-direct {v4}, Lcom/bzbs/bean/MessageGCM;-><init>()V

    .line 375
    const-string/jumbo v5, "campaign_beacon"

    iput-object v5, v4, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    .line 376
    iget-object v5, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    iput-object v5, v4, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    .line 378
    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    iput-object v0, v4, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;->a:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-static {v0, v4}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/bzbs/bean/MessageGCM;)V

    .line 369
    :cond_80
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    .line 384
    :cond_84
    :goto_84
    iget-object v0, v3, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f1

    .line 385
    iget-object v0, v3, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    .line 386
    iget-object v2, v0, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    const-string/jumbo v4, "post"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 387
    new-instance v2, Lcom/bzbs/bean/MessageGCM;

    invoke-direct {v2}, Lcom/bzbs/bean/MessageGCM;-><init>()V

    .line 388
    const-string/jumbo v4, "message_beacon"

    iput-object v4, v2, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    .line 389
    iget-object v4, v0, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v4, v2, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/bzbs/bean/NFCPlan;->Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    .line 391
    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    iput-object v0, v2, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;->a:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-static {v0, v2}, Lcom/samsung/privilege/service/BeaconStarterService;->b(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/bzbs/bean/MessageGCM;)V
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_ce} :catch_d2

    .line 384
    :cond_ce
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_84

    .line 395
    :catch_d2
    move-exception v0

    .line 396
    const-string/jumbo v1, "BeaconStarterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getNFCData|onComplete|JSONException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_f1
    return-void
.end method
