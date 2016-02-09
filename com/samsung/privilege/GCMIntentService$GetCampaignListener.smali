.class public Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/GCMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field private applicationName:Ljava/lang/String;

.field private ctxt:Landroid/content/Context;

.field private gStartTime:J

.field private intRequestCode:I

.field private messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

.field final synthetic this$0:Lcom/samsung/privilege/GCMIntentService;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;J)V
    .registers 8
    .param p2, "ctxt"    # Landroid/content/Context;
    .param p3, "intRequestCode"    # I
    .param p4, "messageGCM"    # Lcom/samsung/privilege/bean/MessageGCM;
    .param p5, "applicationName"    # Ljava/lang/String;
    .param p6, "startTime"    # J

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->this$0:Lcom/samsung/privilege/GCMIntentService;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->ctxt:Landroid/content/Context;

    .line 333
    iput p3, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->intRequestCode:I

    .line 334
    iput-object p4, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    .line 335
    iput-object p5, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->applicationName:Ljava/lang/String;

    .line 336
    iput-wide p6, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->gStartTime:J

    .line 337
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 21
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 341
    const-string v2, "GCM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response_code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",response_text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :try_start_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->ctxt:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v16

    .line 352
    .local v16, "mGaInstance":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->ctxt:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    .line 354
    .local v1, "mGaTracker":Lcom/google/analytics/tracking/android/Tracker;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 355
    .local v13, "endTime":J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->gStartTime:J

    sub-long v3, v13, v5

    .line 356
    .local v3, "spentTime":J
    const-string v2, "campaign_gift_noti"

    const-string v5, "load"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v7, v7, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6d} :catch_ad

    .line 361
    .end local v1    # "mGaTracker":Lcom/google/analytics/tracking/android/Tracker;
    .end local v3    # "spentTime":J
    .end local v13    # "endTime":J
    .end local v16    # "mGaInstance":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :goto_6d
    const/16 v2, 0xc8

    move/from16 v0, p1

    if-ne v0, v2, :cond_aa

    .line 363
    :try_start_73
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 364
    .local v15, "jsonRoot":Lorg/json/JSONObject;
    new-instance v12, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v12, v15}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 366
    .local v12, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v5, v12, Lcom/samsung/privilege/bean/CampaignView;->AgencyID:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v5, v12, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/privilege/bean/MessageGCM;->cp_cat_id:Ljava/lang/String;

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->this$0:Lcom/samsung/privilege/GCMIntentService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->ctxt:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->intRequestCode:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->applicationName:Ljava/lang/String;

    iget-object v10, v12, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    iget-object v11, v12, Lcom/samsung/privilege/bean/CampaignView;->AgencyID:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v5 .. v11}, Lcom/samsung/privilege/GCMIntentService;->access$0(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_aa} :catch_ab

    .line 376
    .end local v12    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v15    # "jsonRoot":Lorg/json/JSONObject;
    :cond_aa
    :goto_aa
    return-void

    .line 370
    :catch_ab
    move-exception v2

    goto :goto_aa

    .line 357
    :catch_ad
    move-exception v2

    goto :goto_6d
.end method
