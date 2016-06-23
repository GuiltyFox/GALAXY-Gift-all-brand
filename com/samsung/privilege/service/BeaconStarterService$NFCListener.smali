.class public Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BeaconStarterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/service/BeaconStarterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NFCListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/service/BeaconStarterService;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 373
    invoke-static {p3}, Lcom/bzbs/util/StringUtil;->NewString([B)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "response_text":Ljava/lang/String;
    const-string/jumbo v1, "BeaconStarterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(NFCListener|onFailure)response={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 15
    .param p1, "response_code"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 333
    invoke-static {p3}, Lcom/bzbs/util/StringUtil;->NewString([B)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "response_text":Ljava/lang/String;
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(NFCListener|onComplete)response={"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "}:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :try_start_29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    new-instance v5, Lcom/bzbs/bean/NFCResult;

    invoke-direct {v5, v3}, Lcom/bzbs/bean/NFCResult;-><init>(Lorg/json/JSONObject;)V

    .line 341
    .local v5, "nfcResult":Lcom/bzbs/bean/NFCResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    iget-object v8, v5, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_86

    .line 342
    iget-object v8, v5, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/bean/NFCPlan;

    .line 343
    .local v6, "objNFCPlan":Lcom/bzbs/bean/NFCPlan;
    iget-object v8, v6, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    const-string/jumbo v9, "campaign"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v2, v8

    .line 346
    .local v2, "intRequestCode":I
    new-instance v4, Lcom/bzbs/bean/MessageGCM;

    invoke-direct {v4}, Lcom/bzbs/bean/MessageGCM;-><init>()V

    .line 347
    .local v4, "messageGCM":Lcom/bzbs/bean/MessageGCM;
    const-string/jumbo v8, "campaign_beacon"

    iput-object v8, v4, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    .line 348
    iget-object v8, v6, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    iput-object v8, v4, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    .line 350
    iget-object v8, v6, Lcom/bzbs/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    iput-object v8, v4, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    .line 352
    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    # invokes: Lcom/samsung/privilege/service/BeaconStarterService;->pushNotiCampaign(Lcom/bzbs/bean/MessageGCM;)V
    invoke-static {v8, v4}, Lcom/samsung/privilege/service/BeaconStarterService;->access$400(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/bzbs/bean/MessageGCM;)V

    .line 341
    .end local v2    # "intRequestCode":I
    .end local v4    # "messageGCM":Lcom/bzbs/bean/MessageGCM;
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 356
    .end local v6    # "objNFCPlan":Lcom/bzbs/bean/NFCPlan;
    :cond_86
    const/4 v1, 0x0

    :goto_87
    iget-object v8, v5, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_db

    .line 357
    iget-object v8, v5, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/bean/NFCPlan;

    .line 358
    .restart local v6    # "objNFCPlan":Lcom/bzbs/bean/NFCPlan;
    iget-object v8, v6, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    const-string/jumbo v9, "post"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 359
    new-instance v4, Lcom/bzbs/bean/MessageGCM;

    invoke-direct {v4}, Lcom/bzbs/bean/MessageGCM;-><init>()V

    .line 360
    .restart local v4    # "messageGCM":Lcom/bzbs/bean/MessageGCM;
    const-string/jumbo v8, "message_beacon"

    iput-object v8, v4, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    .line 361
    iget-object v8, v6, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v8, v4, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 362
    iget-object v8, v6, Lcom/bzbs/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    iput-object v8, v4, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    .line 363
    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    # invokes: Lcom/samsung/privilege/service/BeaconStarterService;->pushNotiMessage(Lcom/bzbs/bean/MessageGCM;)V
    invoke-static {v8, v4}, Lcom/samsung/privilege/service/BeaconStarterService;->access$500(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/bzbs/bean/MessageGCM;)V
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_b9} :catch_bc

    .line 356
    .end local v4    # "messageGCM":Lcom/bzbs/bean/MessageGCM;
    :cond_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 366
    .end local v1    # "i":I
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v5    # "nfcResult":Lcom/bzbs/bean/NFCResult;
    .end local v6    # "objNFCPlan":Lcom/bzbs/bean/NFCPlan;
    :catch_bc
    move-exception v0

    .line 367
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(getNFCData|onComplete|JSONException):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_db
    return-void
.end method
