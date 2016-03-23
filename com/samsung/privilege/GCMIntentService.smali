.class public Lcom/samsung/privilege/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

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
    .line 45
    const-class v0, Lcom/samsung/privilege/GCMIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    .line 47
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 624
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/bzbs/data/AppSetting;->APP_NOTIFICATION_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APP_NOTIFICATION_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/data/AppSetting;->APP_NOTIFICATION_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Lcom/samsung/privilege/GCMIntentService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/bzbs/bean/MessageGCM;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;

    .prologue
    .line 627
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method public static clearGCMMessageListener()V
    .registers 1

    .prologue
    .line 635
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 636
    return-void
.end method

.method public static onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V
    .registers 4
    .param p0, "messageGCM"    # Lcom/bzbs/bean/MessageGCM;

    .prologue
    .line 639
    sget-object v1, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;

    .line 640
    .local v0, "listener":Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;
    invoke-interface {v0, p0}, Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    goto :goto_6

    .line 642
    .end local v0    # "listener":Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;
    :cond_16
    return-void
.end method

.method private processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "intRequestCode"    # I
    .param p3, "messageGCM"    # Lcom/bzbs/bean/MessageGCM;
    .param p4, "applicationName"    # Ljava/lang/String;
    .param p5, "campaignID"    # Ljava/lang/String;
    .param p6, "agencyID"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 516
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 517
    invoke-static/range {p3 .. p3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 518
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v11}, Lcom/bzbs/event/NotiEvents;->onNotiReceived(Ljava/lang/String;)V

    .line 520
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10b

    .line 521
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_10b

    .line 525
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v6, v12

    .line 536
    .local v6, "intNotificationId":I
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    .local v7, "intent":Landroid/content/Intent;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "com.samsung.privilege.service"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string/jumbo v11, "campaign_id"

    invoke-static/range {p5 .. p5}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 539
    const-string/jumbo v11, "from_noti"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    const-string/jumbo v11, "from_noti_type"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string/jumbo v11, "from_noti_alert"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const/4 v11, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 545
    .local v2, "activity":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    .local v3, "builder":Landroid/app/Notification$Builder;
    const v11, 0x7f0202a0

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 547
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 548
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    .line 549
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 550
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 552
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 553
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-wide v14, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v16, 0xea60

    add-long v14, v14, v16

    cmp-long v11, v12, v14

    if-lez v11, :cond_d2

    .line 554
    const/4 v11, 0x2

    invoke-static {v11}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 555
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sput-wide v12, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 558
    :cond_d2
    const-string/jumbo v11, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 559
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 560
    .local v9, "notification":Landroid/app/Notification;
    invoke-virtual {v10, v6, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 562
    const-string/jumbo v11, "Push Notification"

    const-string/jumbo v12, "View Campaign"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .end local v2    # "activity":Landroid/app/PendingIntent;
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "intNotificationId":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_10b
    :goto_10b
    return-void

    .line 565
    :cond_10c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v6, v12

    .line 567
    .restart local v6    # "intNotificationId":I
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .restart local v7    # "intent":Landroid/content/Intent;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "com.samsung.privilege.service"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    new-instance v8, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v8}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 570
    .local v8, "model":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 571
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "ItemMarketPlace"

    invoke-static {v8}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 573
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v12, "ads"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20a

    .line 574
    const-string/jumbo v11, "ItemMarketPlace::Ads::Ins"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 578
    :goto_162
    const-string/jumbo v11, "from_noti"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    const-string/jumbo v11, "from_noti_type"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string/jumbo v11, "from_noti_alert"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    invoke-virtual {v7, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 582
    const/4 v11, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 585
    .restart local v2    # "activity":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    .restart local v3    # "builder":Landroid/app/Notification$Builder;
    const v11, 0x7f0202a0

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 587
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 588
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    .line 589
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 590
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 592
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 593
    .restart local v5    # "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-wide v14, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v16, 0xea60

    add-long v14, v14, v16

    cmp-long v11, v12, v14

    if-lez v11, :cond_1cf

    .line 594
    const/4 v11, 0x2

    invoke-static {v11}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 595
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sput-wide v12, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 598
    :cond_1cf
    const-string/jumbo v11, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 599
    .restart local v10    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 600
    .restart local v9    # "notification":Landroid/app/Notification;
    invoke-virtual {v10, v6, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 602
    const-string/jumbo v11, "Push Notification"

    const-string/jumbo v12, "View Bzbs Campaign"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10b

    .line 576
    .end local v2    # "activity":Landroid/app/PendingIntent;
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "date":Ljava/util/Date;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_20a
    const-string/jumbo v11, "ItemMarketPlace::Ads::Ins"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_162
.end method

.method public static removeGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;

    .prologue
    .line 631
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 632
    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 614
    const-string/jumbo v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 41
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/content/Intent;

    .prologue
    .line 70
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 71
    .local v30, "strToken":Ljava/lang/String;
    if-eqz v30, :cond_85

    const-string/jumbo v4, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 72
    sget-object v4, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onMessage"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 75
    .local v18, "extras":Landroid/os/Bundle;
    new-instance v7, Lcom/bzbs/bean/MessageGCM;

    invoke-direct {v7}, Lcom/bzbs/bean/MessageGCM;-><init>()V

    .line 76
    .local v7, "newMessageGCM":Lcom/bzbs/bean/MessageGCM;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 77
    .local v24, "key":Ljava/lang/String;
    if-eqz v24, :cond_2a

    .line 78
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 79
    .local v32, "value":Ljava/lang/String;
    sget-object v5, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "  onMessage: %s=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v33, 0x0

    aput-object v24, v10, v33

    const/16 v33, 0x1

    aput-object v32, v10, v33

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v5, "collapse_key"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 81
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/bzbs/bean/MessageGCM;->collapse_key:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_2a

    .line 508
    .end local v7    # "newMessageGCM":Lcom/bzbs/bean/MessageGCM;
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v24    # "key":Ljava/lang/String;
    .end local v30    # "strToken":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :catch_67
    move-exception v17

    .line 509
    .local v17, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onMessage:Exception="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v17    # "ex":Ljava/lang/Exception;
    :cond_85
    :goto_85
    return-void

    .line 82
    .restart local v7    # "newMessageGCM":Lcom/bzbs/bean/MessageGCM;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v24    # "key":Ljava/lang/String;
    .restart local v30    # "strToken":Ljava/lang/String;
    .restart local v32    # "value":Ljava/lang/String;
    :cond_86
    :try_start_86
    const-string/jumbo v5, "from"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 83
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/bzbs/bean/MessageGCM;->from:Ljava/lang/String;

    goto :goto_2a

    .line 84
    :cond_96
    const-string/jumbo v5, "type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 85
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    goto :goto_2a

    .line 86
    :cond_a6
    const-string/jumbo v5, "alert"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 87
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    goto/16 :goto_2a

    .line 88
    :cond_b7
    const-string/jumbo v5, "object_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 89
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    goto/16 :goto_2a

    .line 90
    :cond_c8
    const-string/jumbo v5, "subject"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 91
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    goto/16 :goto_2a

    .line 92
    :cond_d9
    const-string/jumbo v5, "agency_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 93
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    goto/16 :goto_2a

    .line 94
    :cond_ea
    const-string/jumbo v5, "url"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 95
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    goto/16 :goto_2a

    .line 100
    .end local v24    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_fb
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetAllMessageGCM(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v25

    .line 101
    .local v25, "listMessageGCM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/MessageGCM;>;"
    const/16 v23, 0x0

    .line 102
    .local v23, "isSameNoti":Z
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_119

    .line 103
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "cat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_177

    .line 104
    const/16 v23, 0x0

    .line 116
    :cond_119
    :goto_119
    if-nez v23, :cond_85

    .line 117
    const v4, 0x7f090383

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "applicationName":Ljava/lang/String;
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "campaign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    .line 119
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    if-eqz v4, :cond_140

    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_140

    .line 120
    iget-object v8, v7, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    .line 124
    :cond_140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v6, v4

    .line 125
    .local v6, "intRequestCode":I
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "campaign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15b

    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ads"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ed

    .line 126
    :cond_15b
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v4, :cond_19d

    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19d

    .line 127
    iget-object v9, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    iget-object v10, v7, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 106
    .end local v6    # "intRequestCode":I
    .end local v8    # "applicationName":Ljava/lang/String;
    :cond_177
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_179
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_119

    .line 107
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/bzbs/bean/MessageGCM;

    .line 108
    .local v28, "oldMessageGCM":Lcom/bzbs/bean/MessageGCM;
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19a

    .line 109
    const/16 v23, 0x1

    .line 110
    goto :goto_119

    .line 106
    :cond_19a
    add-int/lit8 v19, v19, 0x1

    goto :goto_179

    .line 129
    .end local v19    # "i":I
    .end local v28    # "oldMessageGCM":Lcom/bzbs/bean/MessageGCM;
    .restart local v6    # "intRequestCode":I
    .restart local v8    # "applicationName":Ljava/lang/String;
    :cond_19d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/campaign/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 130
    .local v31, "url":Ljava/lang/String;
    sget-object v4, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "url="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v15, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v15}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 133
    .local v15, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/GCMIntentService$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v7, v1, v6}, Lcom/samsung/privilege/GCMIntentService$1;-><init>(Lcom/samsung/privilege/GCMIntentService;Lcom/bzbs/bean/MessageGCM;Landroid/content/Context;I)V

    move-object/from16 v0, v31

    invoke-virtual {v15, v4, v0, v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_85

    .line 163
    .end local v15    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v31    # "url":Ljava/lang/String;
    :cond_1ed
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "badge"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ed

    .line 164
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 165
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/bzbs/data/UserLogin;->AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 166
    invoke-static {v7}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 167
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v4}, Lcom/bzbs/event/NotiEvents;->onNotiReceived(Ljava/lang/String;)V

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_85

    .line 170
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_85

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    .line 174
    .local v21, "intNotificationId":I
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v22, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v4, "messageGCM"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v4, "notificationId"

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 183
    .local v29, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v12, "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f0202a0

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 186
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 187
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 188
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 190
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 191
    .local v16, "date":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v34, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v36, 0xea60

    add-long v34, v34, v36

    cmp-long v4, v4, v34

    if-lez v4, :cond_2ca

    .line 192
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 196
    :cond_2ca
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 197
    .local v27, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 198
    .local v26, "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "View Badge"

    invoke-static {v4, v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 203
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "date":Ljava/util/Date;
    .end local v21    # "intNotificationId":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    .end local v29    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2ed
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "comment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_462

    .line 204
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 205
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/bzbs/data/UserLogin;->AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 206
    invoke-static {v7}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 207
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v4}, Lcom/bzbs/event/NotiEvents;->onNotiReceived(Ljava/lang/String;)V

    .line 209
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_85

    .line 210
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_85

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    .line 213
    .restart local v21    # "intNotificationId":I
    const/4 v11, 0x0

    .line 214
    .local v11, "activity":Landroid/app/PendingIntent;
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 215
    .local v20, "index":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-le v0, v4, :cond_42d

    .line 216
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 217
    .local v13, "buzzKey":Ljava/lang/String;
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v5, "f-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3e7

    .line 218
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/ReplyActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v4, "ReplyKeyBuzz"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v4, "ReplyIsRequestHelp"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 242
    .end local v13    # "buzzKey":Ljava/lang/String;
    :goto_38b
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    .restart local v12    # "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f0202a0

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 244
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 245
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 246
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 247
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 249
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 250
    .restart local v16    # "date":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v34, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v36, 0xea60

    add-long v34, v34, v36

    cmp-long v4, v4, v34

    if-lez v4, :cond_3cd

    .line 251
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 252
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 255
    :cond_3cd
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 256
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 257
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_85

    .line 226
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "date":Ljava/util/Date;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v13    # "buzzKey":Ljava/lang/String;
    :cond_3e7
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/ReplyActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v4, "ReplyKeyBuzz"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string/jumbo v4, "ReplyIsRequestHelp"

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    goto/16 :goto_38b

    .line 235
    .end local v13    # "buzzKey":Ljava/lang/String;
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_42d
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    goto/16 :goto_38b

    .line 260
    .end local v11    # "activity":Landroid/app/PendingIntent;
    .end local v20    # "index":I
    .end local v21    # "intNotificationId":I
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_462
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "link"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_564

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 262
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/bzbs/data/UserLogin;->AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 263
    invoke-static {v7}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 264
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v4}, Lcom/bzbs/event/NotiEvents;->onNotiReceived(Ljava/lang/String;)V

    .line 266
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_85

    .line 267
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_85

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    .line 270
    .restart local v21    # "intNotificationId":I
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v4, "url"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v4, "message"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 279
    .restart local v11    # "activity":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    .restart local v12    # "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f0202a0

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 281
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 282
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 283
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 284
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 286
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 287
    .restart local v16    # "date":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v34, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v36, 0xea60

    add-long v34, v34, v36

    cmp-long v4, v4, v34

    if-lez v4, :cond_53f

    .line 288
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 289
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 292
    :cond_53f
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 293
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 294
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 296
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "View Link"

    iget-object v9, v7, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-static {v4, v5, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 299
    .end local v11    # "activity":Landroid/app/PendingIntent;
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "date":Ljava/util/Date;
    .end local v21    # "intNotificationId":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    :cond_564
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "cat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_788

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 301
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/bzbs/data/UserLogin;->AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 302
    invoke-static {v7}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 303
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v4}, Lcom/bzbs/event/NotiEvents;->onNotiReceived(Ljava/lang/String;)V

    .line 305
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_85

    .line 306
    const/4 v14, 0x1

    .line 307
    .local v14, "catGift":Z
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v4, :cond_69d

    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69d

    .line 308
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69a

    .line 309
    const/4 v14, 0x1

    .line 317
    :goto_5af
    const/4 v4, 0x1

    if-ne v14, v4, :cond_6a0

    .line 318
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_85

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    .line 321
    .restart local v21    # "intNotificationId":I
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v4, "category_noti"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 329
    .restart local v11    # "activity":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    .restart local v12    # "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f0202a0

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 331
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 332
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 333
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 334
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 336
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 337
    .restart local v16    # "date":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v34, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v36, 0xea60

    add-long v34, v34, v36

    cmp-long v4, v4, v34

    if-lez v4, :cond_65b

    .line 338
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 339
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 342
    :cond_65b
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 343
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 344
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 346
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "View Category"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v5, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 311
    .end local v11    # "activity":Landroid/app/PendingIntent;
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "date":Ljava/util/Date;
    .end local v21    # "intNotificationId":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    :cond_69a
    const/4 v14, 0x0

    goto/16 :goto_5af

    .line 314
    :cond_69d
    const/4 v14, 0x1

    goto/16 :goto_5af

    .line 349
    :cond_6a0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_85

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    .line 352
    .restart local v21    # "intNotificationId":I
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v4, "catId"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 360
    .restart local v11    # "activity":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .restart local v12    # "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f0202a0

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 362
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 363
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 364
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 365
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 367
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 368
    .restart local v16    # "date":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v34, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v36, 0xea60

    add-long v34, v34, v36

    cmp-long v4, v4, v34

    if-lez v4, :cond_749

    .line 369
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 370
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 373
    :cond_749
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 374
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 375
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 377
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "View Bzbs Category"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v5, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 381
    .end local v11    # "activity":Landroid/app/PendingIntent;
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .end local v14    # "catGift":Z
    .end local v16    # "date":Ljava/util/Date;
    .end local v21    # "intNotificationId":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    :cond_788
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ewallet_pay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79e

    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ewallet_refund"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8ad

    .line 382
    :cond_79e
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 383
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/bzbs/data/UserLogin;->AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 384
    invoke-static {v7}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 385
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v4}, Lcom/bzbs/event/NotiEvents;->onNotiReceived(Ljava/lang/String;)V

    .line 387
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_890

    .line 388
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_890

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    .line 392
    .restart local v21    # "intNotificationId":I
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string/jumbo v4, "messageGCM"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 395
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 400
    .restart local v11    # "activity":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    .restart local v12    # "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f0202a0

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 402
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 403
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 404
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 405
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 407
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 408
    .restart local v16    # "date":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v34, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v36, 0xea60

    add-long v34, v34, v36

    cmp-long v4, v4, v34

    if-lez v4, :cond_864

    .line 409
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 410
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 413
    :cond_864
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 414
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 415
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 417
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ewallet_pay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_898

    .line 418
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "View Wallet Paid Success"

    invoke-static {v4, v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .end local v11    # "activity":Landroid/app/PendingIntent;
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "date":Ljava/util/Date;
    .end local v21    # "intNotificationId":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    :cond_890
    :goto_890
    const-string/jumbo v4, "payment success"

    invoke-static {v4}, Lcom/bzbs/event/WalletEvents;->onPaymentSuccess(Ljava/lang/String;)V

    goto/16 :goto_85

    .line 419
    .restart local v11    # "activity":Landroid/app/PendingIntent;
    .restart local v12    # "builder":Landroid/app/Notification$Builder;
    .restart local v16    # "date":Ljava/util/Date;
    .restart local v21    # "intNotificationId":I
    .restart local v22    # "intent":Landroid/content/Intent;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    :cond_898
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ewallet_refund"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_890

    .line 420
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "View Wallet Refund Success"

    invoke-static {v4, v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_890

    .line 426
    .end local v11    # "activity":Landroid/app/PendingIntent;
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "date":Ljava/util/Date;
    .end local v21    # "intNotificationId":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    :cond_8ad
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9ad

    .line 427
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 428
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/bzbs/data/UserLogin;->AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 429
    invoke-static {v7}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 430
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v4}, Lcom/bzbs/event/NotiEvents;->onNotiReceived(Ljava/lang/String;)V

    .line 432
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_85

    .line 433
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_85

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    .line 436
    .restart local v21    # "intNotificationId":I
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string/jumbo v4, "messageGCM"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 439
    const-string/jumbo v4, "notificationId"

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 445
    .restart local v29    # "pendingIntent":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .restart local v12    # "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f0202a0

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 447
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 448
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 449
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 450
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 452
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 453
    .restart local v16    # "date":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v34, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v36, 0xea60

    add-long v34, v34, v36

    cmp-long v4, v4, v34

    if-lez v4, :cond_98a

    .line 454
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 455
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 458
    :cond_98a
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 459
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 460
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 462
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "View Msg"

    invoke-static {v4, v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 465
    .end local v12    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "date":Ljava/util/Date;
    .end local v21    # "intNotificationId":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v27    # "notificationManager":Landroid/app/NotificationManager;
    .end local v29    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_9ad
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "dashboard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 466
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 467
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/bzbs/data/UserLogin;->AppendMessageGCM(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 468
    invoke-static {v7}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 469
    iget-object v4, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v4}, Lcom/bzbs/event/NotiEvents;->onNotiReceived(Ljava/lang/String;)V

    .line 471
    invoke-static/range {p1 .. p1}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_85

    .line 472
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_85

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    .line 475
    .restart local v21    # "intNotificationId":I
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .restart local v22    # "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string/jumbo v4, "dashboard_key"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 483
    .restart local v11    # "activity":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    .restart local v12    # "builder":Landroid/app/Notification$Builder;
    const v4, 0x7f0202a0

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 485
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 486
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 487
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 488
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 490
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 491
    .restart local v16    # "date":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v34, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v36, 0xea60

    add-long v34, v34, v36

    cmp-long v4, v4, v34

    if-lez v4, :cond_a80

    .line 492
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 493
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 496
    :cond_a80
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 497
    .restart local v27    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v26

    .line 498
    .restart local v26    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 500
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "View Dashboard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v5, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_abd
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_abd} :catch_67

    goto/16 :goto_85
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 619
    const-string/jumbo v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRecoverableError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p1, p2}, Lcom/bzbs/data/UserLogin;->SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 59
    invoke-static {p1}, Lcom/bzbs/util/GCMUtil;->callUpdateDeviceNoti(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
