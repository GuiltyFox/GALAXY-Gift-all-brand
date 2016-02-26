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
    .line 333
    iput-object p1, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->this$0:Lcom/samsung/privilege/GCMIntentService;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->ctxt:Landroid/content/Context;

    .line 335
    iput p3, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->intRequestCode:I

    .line 336
    iput-object p4, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    .line 337
    iput-object p5, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->applicationName:Ljava/lang/String;

    .line 338
    iput-wide p6, p0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->gStartTime:J

    .line 339
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 22
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 343
    const-string v3, "GCM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response_code="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",response_text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->ctxt:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v17

    .line 354
    .local v17, "mGaInstance":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->ctxt:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    .line 356
    .local v2, "mGaTracker":Lcom/google/analytics/tracking/android/Tracker;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 357
    .local v14, "endTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->gStartTime:J

    sub-long v4, v14, v6

    .line 358
    .local v4, "spentTime":J
    const-string v3, "campaign_gift_noti"

    const-string v6, "load"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v8, v8, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6d} :catch_b1

    .line 363
    .end local v2    # "mGaTracker":Lcom/google/analytics/tracking/android/Tracker;
    .end local v4    # "spentTime":J
    .end local v14    # "endTime":J
    .end local v17    # "mGaInstance":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :goto_6d
    const/16 v3, 0xc8

    move/from16 v0, p1

    if-ne v0, v3, :cond_ae

    .line 365
    :try_start_73
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 366
    .local v16, "jsonRoot":Lorg/json/JSONObject;
    new-instance v13, Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 368
    .local v13, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v6, v13, Lcom/samsung/privilege/bean/CampaignView;->AgencyID:Ljava/lang/String;

    iput-object v6, v3, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    iget-object v6, v13, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    iput-object v6, v3, Lcom/samsung/privilege/bean/MessageGCM;->cp_cat_id:Ljava/lang/String;

    .line 371
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->this$0:Lcom/samsung/privilege/GCMIntentService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->ctxt:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->intRequestCode:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->messageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;->applicationName:Ljava/lang/String;

    iget-object v11, v13, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    iget-object v12, v13, Lcom/samsung/privilege/bean/CampaignView;->AgencyID:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v6 .. v12}, Lcom/samsung/privilege/GCMIntentService;->access$0(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_ae} :catch_af

    .line 378
    .end local v13    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v16    # "jsonRoot":Lorg/json/JSONObject;
    :cond_ae
    :goto_ae
    return-void

    .line 372
    :catch_af
    move-exception v3

    goto :goto_ae

    .line 359
    :catch_b1
    move-exception v3

    goto :goto_6d
.end method
