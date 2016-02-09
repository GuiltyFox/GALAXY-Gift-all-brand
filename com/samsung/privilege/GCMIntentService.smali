.class public Lcom/samsung/privilege/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;,
        Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;
    }
.end annotation


# static fields
.field private static gLastTimePlaySound:J

.field private static mGCMMessageListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 442
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/privilege/AppSetting;->APP_NOTIFICATION_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 42
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APP_NOTIFICATION_ID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/privilege/AppSetting;->APP_NOTIFICATION_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 379
    invoke-direct/range {p0 .. p6}, Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;

    .prologue
    .line 445
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method public static clearGCMMessageListener()V
    .registers 1

    .prologue
    .line 453
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 454
    return-void
.end method

.method public static onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V
    .registers 4
    .param p0, "messageGCM"    # Lcom/samsung/privilege/bean/MessageGCM;

    .prologue
    .line 457
    sget-object v1, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 460
    return-void

    .line 457
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;

    .line 458
    .local v0, "listener":Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;
    invoke-interface {v0, p0}, Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;->onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V

    goto :goto_6
.end method

.method private processNotiCampaign(Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "intRequestCode"    # I
    .param p3, "messageGCM"    # Lcom/samsung/privilege/bean/MessageGCM;
    .param p4, "applicationName"    # Ljava/lang/String;
    .param p5, "campaignID"    # Ljava/lang/String;
    .param p6, "agencyID"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-static {p1}, Lcom/samsung/privilege/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {p1, v5}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 381
    invoke-virtual {p3}, Lcom/samsung/privilege/bean/MessageGCM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/privilege/UserLogin;->SetNotificationListAppend(Landroid/content/Context;Ljava/lang/String;)Z

    .line 382
    invoke-static {p3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V

    .line 384
    invoke-static {p1}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 385
    new-instance v3, Landroid/app/Notification;

    const v5, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v5, p4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 386
    .local v3, "notif":Landroid/app/Notification;
    iget v5, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 388
    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 389
    iget-object v5, p3, Lcom/samsung/privilege/bean/MessageGCM;->cp_cat_id:Ljava/lang/String;

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 390
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.samsung.privilege.service"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v5, "campaign_id"

    invoke-static {p5}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 393
    const-string v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    const/4 v5, 0x0

    invoke-static {p1, p2, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 395
    .local v0, "activity":Landroid/app/PendingIntent;
    iget-object v5, p3, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v3, p1, v5, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 424
    :goto_79
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 425
    .local v4, "notifyManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v1, v5

    .line 426
    .local v1, "intNumberNotification":I
    invoke-virtual {v4, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 428
    .end local v0    # "activity":Landroid/app/PendingIntent;
    .end local v1    # "intNumberNotification":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notif":Landroid/app/Notification;
    .end local v4    # "notifyManager":Landroid/app/NotificationManager;
    :cond_89
    return-void

    .line 397
    .restart local v3    # "notif":Landroid/app/Notification;
    :cond_8a
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.samsung.privilege.service"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v5, "campaign_id"

    invoke-static {p5}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 400
    const-string v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    const/4 v5, 0x0

    invoke-static {p1, p2, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 402
    .restart local v0    # "activity":Landroid/app/PendingIntent;
    iget-object v5, p3, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v3, p1, v5, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_79

    .line 405
    .end local v0    # "activity":Landroid/app/PendingIntent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_c1
    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 407
    iget-object v5, p3, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v6, "ads"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    .line 408
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.samsung.privilege.service"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v5, "campaign_id"

    invoke-static {p5}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 411
    const-string v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    const/4 v5, 0x0

    invoke-static {p1, p2, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 413
    .restart local v0    # "activity":Landroid/app/PendingIntent;
    iget-object v5, p3, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v3, p1, v5, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_79

    .line 415
    .end local v0    # "activity":Landroid/app/PendingIntent;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_106
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.samsung.privilege.service"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v5, "campaign_id"

    invoke-static {p5}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 418
    const-string v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    const/4 v5, 0x0

    invoke-static {p1, p2, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 420
    .restart local v0    # "activity":Landroid/app/PendingIntent;
    iget-object v5, p3, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v3, p1, v5, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_79
.end method

.method public static removeGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;

    .prologue
    .line 449
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 450
    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 36
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/content/Intent;

    .prologue
    .line 61
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 62
    .local v30, "strToken":Ljava/lang/String;
    if-eqz v30, :cond_a5

    const-string v3, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 63
    const-string v3, "GCM"

    const-string v4, "onMessage"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 66
    .local v21, "extras":Landroid/os/Bundle;
    new-instance v6, Lcom/samsung/privilege/bean/MessageGCM;

    invoke-direct {v6}, Lcom/samsung/privilege/bean/MessageGCM;-><init>()V

    .line 67
    .local v6, "messageGCM":Lcom/samsung/privilege/bean/MessageGCM;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a6

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetNotificationList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    .line 92
    .local v29, "oldNoti":Ljava/lang/String;
    const/16 v25, 0x0

    .line 93
    .local v25, "isSameNoti":Z
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 94
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v4, "cat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_164

    .line 95
    const/16 v25, 0x0

    .line 103
    :cond_4e
    :goto_4e
    if-nez v25, :cond_a5

    .line 109
    const v3, 0x7f0a001d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "applicationName":Ljava/lang/String;
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v4, "campaign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 111
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->subject:Ljava/lang/String;

    if-eqz v3, :cond_73

    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->subject:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 112
    iget-object v7, v6, Lcom/samsung/privilege/bean/MessageGCM;->subject:Ljava/lang/String;

    .line 118
    :cond_73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v5, v3

    .line 119
    .local v5, "intRequestCode":I
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v4, "campaign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v4, "ads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cf

    .line 120
    :cond_8c
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v3, :cond_181

    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_181

    .line 121
    iget-object v8, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    iget-object v9, v6, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v5    # "intRequestCode":I
    .end local v6    # "messageGCM":Lcom/samsung/privilege/bean/MessageGCM;
    .end local v7    # "applicationName":Ljava/lang/String;
    .end local v21    # "extras":Landroid/os/Bundle;
    .end local v25    # "isSameNoti":Z
    .end local v29    # "oldNoti":Ljava/lang/String;
    .end local v30    # "strToken":Ljava/lang/String;
    :cond_a5
    :goto_a5
    return-void

    .line 67
    .restart local v6    # "messageGCM":Lcom/samsung/privilege/bean/MessageGCM;
    .restart local v21    # "extras":Landroid/os/Bundle;
    .restart local v30    # "strToken":Ljava/lang/String;
    :cond_a6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 68
    .local v26, "key":Ljava/lang/String;
    if-eqz v26, :cond_28

    .line 69
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 70
    .local v32, "value":Ljava/lang/String;
    const-string v4, "GCM"

    const-string v8, "  onMessage: %s=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v9, v10

    const/4 v10, 0x1

    aput-object v32, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v4, "collapse_key"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 72
    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/samsung/privilege/bean/MessageGCM;->collapse_key:Ljava/lang/String;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d8} :catch_da

    goto/16 :goto_28

    .line 319
    .end local v6    # "messageGCM":Lcom/samsung/privilege/bean/MessageGCM;
    .end local v21    # "extras":Landroid/os/Bundle;
    .end local v26    # "key":Ljava/lang/String;
    .end local v30    # "strToken":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :catch_da
    move-exception v20

    .line 320
    .local v20, "ex":Ljava/lang/Exception;
    const-string v3, "GCM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "onMessage:Exception="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    .line 73
    .end local v20    # "ex":Ljava/lang/Exception;
    .restart local v6    # "messageGCM":Lcom/samsung/privilege/bean/MessageGCM;
    .restart local v21    # "extras":Landroid/os/Bundle;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v30    # "strToken":Ljava/lang/String;
    .restart local v32    # "value":Ljava/lang/String;
    :cond_f4
    :try_start_f4
    const-string v4, "from"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 74
    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/samsung/privilege/bean/MessageGCM;->from:Ljava/lang/String;

    goto/16 :goto_28

    .line 75
    :cond_104
    const-string v4, "type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 76
    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    goto/16 :goto_28

    .line 77
    :cond_114
    const-string v4, "alert"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_124

    .line 78
    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    goto/16 :goto_28

    .line 79
    :cond_124
    const-string v4, "object_id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_134

    .line 80
    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    goto/16 :goto_28

    .line 81
    :cond_134
    const-string v4, "subject"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 82
    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/samsung/privilege/bean/MessageGCM;->subject:Ljava/lang/String;

    goto/16 :goto_28

    .line 83
    :cond_144
    const-string v4, "agency_id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_154

    .line 84
    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    goto/16 :goto_28

    .line 85
    :cond_154
    const-string v4, "url"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 86
    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/samsung/privilege/bean/MessageGCM;->url:Ljava/lang/String;

    goto/16 :goto_28

    .line 97
    .end local v26    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    .restart local v25    # "isSameNoti":Z
    .restart local v29    # "oldNoti":Ljava/lang/String;
    :cond_164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "object_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4e

    .line 98
    const/16 v25, 0x1

    goto/16 :goto_4e

    .line 123
    .restart local v5    # "intRequestCode":I
    .restart local v7    # "applicationName":Ljava/lang/String;
    :cond_181
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 124
    .local v31, "url":Ljava/lang/String;
    const-string v3, "GCM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "url="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 126
    .local v14, "startTime":J
    new-instance v8, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/samsung/privilege/GCMIntentService$GetCampaignListener;-><init>(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/samsung/privilege/bean/MessageGCM;Ljava/lang/String;J)V

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-static {v0, v8, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_a5

    .line 128
    .end local v14    # "startTime":J
    .end local v31    # "url":Ljava/lang/String;
    :cond_1cf
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v4, "badge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28a

    .line 129
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 130
    invoke-virtual {v6}, Lcom/samsung/privilege/bean/MessageGCM;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationListAppend(Landroid/content/Context;Ljava/lang/String;)Z

    .line 131
    invoke-static {v6}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 134
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/samsung/privilege/activity/MessageDialogActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v24, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.privilege.service"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v3, "messageGCM"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 139
    .local v16, "activity":Landroid/app/PendingIntent;
    new-instance v27, Landroid/app/Notification;

    const v3, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 140
    .local v27, "notif":Landroid/app/Notification;
    move-object/from16 v0, v27

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v27

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 141
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 143
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 144
    .local v19, "date":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v3, v3, v8

    if-lez v3, :cond_26e

    .line 145
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 146
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 149
    :cond_26e
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/NotificationManager;

    .line 150
    .local v28, "notifyManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v23, v0

    .line 151
    .local v23, "intNumberNotification":I
    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_a5

    .line 153
    .end local v16    # "activity":Landroid/app/PendingIntent;
    .end local v19    # "date":Ljava/util/Date;
    .end local v23    # "intNumberNotification":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v27    # "notif":Landroid/app/Notification;
    .end local v28    # "notifyManager":Landroid/app/NotificationManager;
    :cond_28a
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v4, "comment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3fa

    .line 154
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 155
    invoke-virtual {v6}, Lcom/samsung/privilege/bean/MessageGCM;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationListAppend(Landroid/content/Context;Ljava/lang/String;)Z

    .line 156
    invoke-static {v6}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 159
    new-instance v27, Landroid/app/Notification;

    const v3, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 160
    .restart local v27    # "notif":Landroid/app/Notification;
    move-object/from16 v0, v27

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v27

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 162
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 163
    .local v22, "index":I
    const/4 v3, -0x1

    move/from16 v0, v22

    if-le v0, v3, :cond_3ba

    .line 164
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 165
    .local v17, "buzzKey":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 166
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string v4, "f-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_371

    .line 167
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .restart local v24    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.privilege.service"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v3, "BuzzKey"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v3, "messageGCM"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 171
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 173
    .restart local v16    # "activity":Landroid/app/PendingIntent;
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 192
    .end local v17    # "buzzKey":Ljava/lang/String;
    :goto_333
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 193
    .restart local v19    # "date":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v3, v3, v8

    if-lez v3, :cond_355

    .line 194
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 195
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 198
    :cond_355
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/NotificationManager;

    .line 199
    .restart local v28    # "notifyManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v23, v0

    .line 200
    .restart local v23    # "intNumberNotification":I
    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_a5

    .line 175
    .end local v16    # "activity":Landroid/app/PendingIntent;
    .end local v19    # "date":Ljava/util/Date;
    .end local v23    # "intNumberNotification":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v28    # "notifyManager":Landroid/app/NotificationManager;
    .restart local v17    # "buzzKey":Ljava/lang/String;
    :cond_371
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .restart local v24    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.privilege.service"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v3, "BuzzKey"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v3, "messageGCM"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 181
    .restart local v16    # "activity":Landroid/app/PendingIntent;
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_333

    .line 184
    .end local v16    # "activity":Landroid/app/PendingIntent;
    .end local v17    # "buzzKey":Ljava/lang/String;
    .end local v24    # "intent":Landroid/content/Intent;
    :cond_3ba
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .restart local v24    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.privilege.service"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v3, "messageGCM"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 187
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 189
    .restart local v16    # "activity":Landroid/app/PendingIntent;
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_333

    .line 202
    .end local v16    # "activity":Landroid/app/PendingIntent;
    .end local v22    # "index":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v27    # "notif":Landroid/app/Notification;
    :cond_3fa
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v4, "link"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c8

    .line 203
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 204
    invoke-virtual {v6}, Lcom/samsung/privilege/bean/MessageGCM;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationListAppend(Landroid/content/Context;Ljava/lang/String;)Z

    .line 205
    invoke-static {v6}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V

    .line 207
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 208
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .restart local v24    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.privilege.service"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v3, "url"

    iget-object v4, v6, Lcom/samsung/privilege/bean/MessageGCM;->url:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v3, "message"

    iget-object v4, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v3, "isNoti"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 215
    .restart local v16    # "activity":Landroid/app/PendingIntent;
    new-instance v27, Landroid/app/Notification;

    const v3, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 216
    .restart local v27    # "notif":Landroid/app/Notification;
    move-object/from16 v0, v27

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v27

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 217
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 219
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 220
    .restart local v19    # "date":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v3, v3, v8

    if-lez v3, :cond_4ac

    .line 221
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 222
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 225
    :cond_4ac
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/NotificationManager;

    .line 226
    .restart local v28    # "notifyManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v23, v0

    .line 227
    .restart local v23    # "intNumberNotification":I
    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_a5

    .line 229
    .end local v16    # "activity":Landroid/app/PendingIntent;
    .end local v19    # "date":Ljava/util/Date;
    .end local v23    # "intNumberNotification":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v27    # "notif":Landroid/app/Notification;
    .end local v28    # "notifyManager":Landroid/app/NotificationManager;
    :cond_4c8
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v4, "cat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65a

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 231
    invoke-virtual {v6}, Lcom/samsung/privilege/bean/MessageGCM;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationListAppend(Landroid/content/Context;Ljava/lang/String;)Z

    .line 232
    invoke-static {v6}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V

    .line 234
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 235
    const/16 v18, 0x1

    .line 236
    .local v18, "catGift":Z
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v3, :cond_5b5

    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b5

    .line 237
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->agency_id:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b1

    .line 238
    const/16 v18, 0x1

    .line 246
    :goto_511
    if-eqz v18, :cond_5b9

    .line 247
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/samsung/privilege/activity/CampaignListActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .restart local v24    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.privilege.service"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v3, "category_noti"

    iget-object v4, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v3, "isNoti"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 253
    .restart local v16    # "activity":Landroid/app/PendingIntent;
    new-instance v27, Landroid/app/Notification;

    const v3, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 254
    .restart local v27    # "notif":Landroid/app/Notification;
    move-object/from16 v0, v27

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v27

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 255
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 257
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 258
    .restart local v19    # "date":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v3, v3, v8

    if-lez v3, :cond_595

    .line 259
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 260
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 263
    :cond_595
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/NotificationManager;

    .line 264
    .restart local v28    # "notifyManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v23, v0

    .line 265
    .restart local v23    # "intNumberNotification":I
    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_a5

    .line 240
    .end local v16    # "activity":Landroid/app/PendingIntent;
    .end local v19    # "date":Ljava/util/Date;
    .end local v23    # "intNumberNotification":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v27    # "notif":Landroid/app/Notification;
    .end local v28    # "notifyManager":Landroid/app/NotificationManager;
    :cond_5b1
    const/16 v18, 0x0

    .line 242
    goto/16 :goto_511

    .line 243
    :cond_5b5
    const/16 v18, 0x1

    goto/16 :goto_511

    .line 267
    :cond_5b9
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 269
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .restart local v24    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.privilege.service"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v3, "cat"

    iget-object v4, v6, Lcom/samsung/privilege/bean/MessageGCM;->object_id:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v3, "isNoti"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 275
    .restart local v16    # "activity":Landroid/app/PendingIntent;
    new-instance v27, Landroid/app/Notification;

    const v3, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 276
    .restart local v27    # "notif":Landroid/app/Notification;
    move-object/from16 v0, v27

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v27

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 277
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 279
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 280
    .restart local v19    # "date":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v3, v3, v8

    if-lez v3, :cond_63e

    .line 281
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 282
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 285
    :cond_63e
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/NotificationManager;

    .line 286
    .restart local v28    # "notifyManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v23, v0

    .line 287
    .restart local v23    # "intNumberNotification":I
    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_a5

    .line 291
    .end local v16    # "activity":Landroid/app/PendingIntent;
    .end local v18    # "catGift":Z
    .end local v19    # "date":Ljava/util/Date;
    .end local v23    # "intNumberNotification":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v27    # "notif":Landroid/app/Notification;
    .end local v28    # "notifyManager":Landroid/app/NotificationManager;
    :cond_65a
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 292
    invoke-virtual {v6}, Lcom/samsung/privilege/bean/MessageGCM;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/privilege/UserLogin;->SetNotificationListAppend(Landroid/content/Context;Ljava/lang/String;)Z

    .line 293
    invoke-static {v6}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V

    .line 295
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 296
    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/samsung/privilege/activity/MessageDialogActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .restart local v24    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.samsung.privilege.service"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v3, "messageGCM"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 299
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 301
    .restart local v16    # "activity":Landroid/app/PendingIntent;
    new-instance v27, Landroid/app/Notification;

    const v3, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 302
    .restart local v27    # "notif":Landroid/app/Notification;
    move-object/from16 v0, v27

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v27

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 303
    iget-object v3, v6, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 305
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 306
    .restart local v19    # "date":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v3, v3, v8

    if-lez v3, :cond_6ef

    .line 307
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 308
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 311
    :cond_6ef
    const-string v3, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/NotificationManager;

    .line 312
    .restart local v28    # "notifyManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v23, v0

    .line 313
    .restart local v23    # "intNumberNotification":I
    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_709
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_709} :catch_da

    goto/16 :goto_a5
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRecoverableError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRegistered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p1, p2}, Lcom/samsung/privilege/UserLogin;->SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    invoke-static {p1}, Lcom/samsung/privilege/util/BBUtil;->callUpdateDeviceNoti(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUnregistered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
