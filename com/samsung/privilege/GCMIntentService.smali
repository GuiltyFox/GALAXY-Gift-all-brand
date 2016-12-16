.class public Lcom/samsung/privilege/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


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

    .line 668
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

    sget-object v2, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APP_NOTIFICATION_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V
    .registers 2

    .prologue
    .line 671
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method public static clearGCMMessageListener()V
    .registers 1

    .prologue
    .line 679
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 680
    return-void
.end method

.method public static onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V
    .registers 3

    .prologue
    .line 683
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;

    .line 684
    invoke-interface {v0, p0}, Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    goto :goto_6

    .line 686
    :cond_16
    return-void
.end method

.method private processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    .prologue
    .line 557
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 559
    invoke-static {p1, p3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 560
    invoke-static {p3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 561
    iget-object v2, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 563
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f0

    .line 564
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_f0

    .line 568
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v3, v2

    .line 579
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string/jumbo v4, "campaign_id"

    invoke-static/range {p5 .. p5}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 583
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, p3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const/4 v4, 0x0

    invoke-static {p1, p2, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 589
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 590
    const v5, 0x7f0202a5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 591
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 592
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 593
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 594
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 596
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 597
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_bb

    .line 598
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 599
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sput-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 602
    :cond_bb
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 603
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 604
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 606
    const-string/jumbo v2, "Push Notification"

    const-string/jumbo v3, "View Campaign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_f0
    :goto_f0
    return-void

    .line 609
    :cond_f1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v3, v2

    .line 611
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.privilege.service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    new-instance v4, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v4}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 614
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 615
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 616
    const-string/jumbo v6, "ItemMarketPlace"

    invoke-static {v4}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 617
    iget-object v4, p3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "ads"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1da

    .line 618
    const-string/jumbo v4, "ItemMarketPlace::Ads::Ins"

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    :goto_143
    const-string/jumbo v4, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    const-string/jumbo v4, "from_noti_type"

    iget-object v6, p3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string/jumbo v4, "from_noti_alert"

    iget-object v6, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 626
    const/4 v4, 0x0

    invoke-static {p1, p2, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 629
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 630
    const v5, 0x7f0202a5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 631
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 632
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 633
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 634
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 636
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 637
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_1a3

    .line 638
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 639
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sput-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 642
    :cond_1a3
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 643
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 644
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 646
    const-string/jumbo v2, "Push Notification"

    const-string/jumbo v3, "View Bzbs Campaign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f0

    .line 620
    :cond_1da
    const-string/jumbo v4, "ItemMarketPlace::Ads::Ins"

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_143
.end method

.method public static removeGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V
    .registers 2

    .prologue
    .line 675
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 658
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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .prologue
    const/16 v11, 0xb

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 70
    :try_start_4
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_7d

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 72
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMessage"

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 75
    new-instance v3, Lcom/bzbs/bean/MessageGCM;

    invoke-direct {v3}, Lcom/bzbs/bean/MessageGCM;-><init>()V

    .line 76
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    if-eqz v0, :cond_2c

    .line 78
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    sget-object v7, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "  onMessage: %s=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v7, "collapse_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 81
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->collapse_key:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5e} :catch_5f

    goto :goto_2c

    .line 551
    :catch_5f
    move-exception v0

    .line 552
    sget-object v1, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMessage:Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_7d
    :goto_7d
    return-void

    .line 82
    :cond_7e
    :try_start_7e
    const-string/jumbo v7, "from"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 83
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->from:Ljava/lang/String;

    goto :goto_2c

    .line 84
    :cond_8a
    const-string/jumbo v7, "type"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 85
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    goto :goto_2c

    .line 86
    :cond_96
    const-string/jumbo v7, "alert"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 87
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    goto :goto_2c

    .line 88
    :cond_a2
    const-string/jumbo v7, "object_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 89
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    goto/16 :goto_2c

    .line 90
    :cond_af
    const-string/jumbo v7, "subject"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 91
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    goto/16 :goto_2c

    .line 92
    :cond_bc
    const-string/jumbo v7, "agency_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 93
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    goto/16 :goto_2c

    .line 94
    :cond_c9
    const-string/jumbo v7, "url"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 95
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    goto/16 :goto_2c

    .line 100
    :cond_d6
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->P(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 102
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a35

    .line 103
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "dashboard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    :cond_fb
    move v0, v5

    .line 116
    :goto_fc
    if-nez v0, :cond_7d

    .line 117
    const v0, 0x7f09040b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "campaign"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 119
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    if-eqz v0, :cond_121

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    .line 120
    iget-object v4, v3, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    .line 124
    :cond_121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v2, v6

    .line 125
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "campaign"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13c

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "ads"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 126
    :cond_13c
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v0, :cond_173

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_173

    .line 127
    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    :cond_156
    move v2, v5

    .line 106
    :goto_157
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a35

    .line 107
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 108
    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    move v0, v1

    .line 110
    goto :goto_fc

    .line 106
    :cond_16f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_157

    .line 129
    :cond_173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 132
    invoke-virtual {v1, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 133
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 135
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 136
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/GCMIntentService$1;

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/samsung/privilege/GCMIntentService$1;-><init>(Lcom/samsung/privilege/GCMIntentService;Lcom/bzbs/bean/MessageGCM;Landroid/content/Context;I)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_7d

    .line 164
    :cond_1d7
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "badge"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    .line 165
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 166
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 167
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 168
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 183
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 185
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 186
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 187
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 188
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 190
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 191
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_28e

    .line 192
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 193
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 196
    :cond_28e
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 197
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Badge"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 203
    :cond_2a9
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "comment"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d9

    .line 204
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 205
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 206
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 207
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 214
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 215
    const/4 v5, -0x1

    if-le v0, v5, :cond_3b0

    .line 216
    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v6, "f-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_37a

    .line 218
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/samsung/privilege/activity/ReplyActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "com.samsung.privilege.service"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v6, "ReplyKeyBuzz"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v0, "ReplyIsRequestHelp"

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const/4 v0, 0x0

    invoke-static {p1, v2, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 242
    :goto_329
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 244
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 245
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 246
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 247
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 249
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 250
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_368

    .line 251
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 252
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 255
    :cond_368
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 256
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_7d

    .line 226
    :cond_37a
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/samsung/privilege/activity/ReplyActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "com.samsung.privilege.service"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v6, "ReplyKeyBuzz"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string/jumbo v0, "ReplyIsRequestHelp"

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    const/4 v0, 0x0

    invoke-static {p1, v2, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_329

    .line 235
    :cond_3b0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_329

    .line 260
    :cond_3d9
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "link"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b1

    .line 261
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 262
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 263
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 264
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 266
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v5, "url"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v5, "message"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 279
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 281
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 282
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 283
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 284
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 286
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 287
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_494

    .line 288
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 289
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 292
    :cond_494
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 293
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 296
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Link"

    iget-object v2, v3, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 299
    :cond_4b1
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "cat"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_688

    .line 300
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 301
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 302
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 303
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 305
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 307
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v0, :cond_5c0

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c0

    .line 308
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5bd

    move v0, v1

    .line 317
    :goto_4f6
    if-ne v0, v1, :cond_5c3

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v5, "category_noti"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 329
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 331
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 332
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 333
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 334
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 336
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 337
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_586

    .line 338
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 339
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 342
    :cond_586
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 343
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 346
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Category"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    :cond_5bd
    move v0, v5

    .line 311
    goto/16 :goto_4f6

    :cond_5c0
    move v0, v1

    .line 314
    goto/16 :goto_4f6

    .line 349
    :cond_5c3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v5, "catId"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 360
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 362
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 363
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 364
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 365
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 367
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 368
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_651

    .line 369
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 370
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 373
    :cond_651
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 374
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 377
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Bzbs Category"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 381
    :cond_688
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ewallet_pay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69e

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ewallet_refund"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_797

    .line 382
    :cond_69e
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 383
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 384
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 385
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 387
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_771

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_771

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 395
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 400
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 402
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 403
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 404
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 405
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 407
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 408
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_744

    .line 409
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 410
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 413
    :cond_744
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 414
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 417
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_779

    .line 419
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Payment Success"

    const-string/jumbo v2, ""

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    :cond_771
    :goto_771
    const-string/jumbo v0, "payment success"

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 420
    :cond_779
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_771

    .line 422
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Refund Success"

    const-string/jumbo v2, ""

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_771

    .line 428
    :cond_797
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "message"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_879

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    const-string/jumbo v5, "Your queue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_879

    .line 429
    const-string/jumbo v0, "queue"

    iput-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    .line 431
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 432
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 433
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 434
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 449
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 451
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 452
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 453
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 454
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 456
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 457
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_85e

    .line 458
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 459
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 462
    :cond_85e
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 463
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 466
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Msg"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 469
    :cond_879
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "message"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94b

    .line 470
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 471
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 472
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 473
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 475
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 488
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 490
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 491
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 492
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 493
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 495
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 496
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_930

    .line 497
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 498
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 501
    :cond_930
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 502
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 503
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 505
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Msg"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 508
    :cond_94b
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "dashboard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 509
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 510
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 511
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 512
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 514
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.samsung.privilege.service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string/jumbo v5, "dashboard_key"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 526
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    const v5, 0x7f0202a5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 528
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 529
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 530
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 531
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 533
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 534
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_9fe

    .line 535
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 536
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 539
    :cond_9fe
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 540
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 543
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a33
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_a33} :catch_5f

    goto/16 :goto_7d

    :cond_a35
    move v0, v5

    goto/16 :goto_fc
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 663
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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p1, p2}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 59
    invoke-static {p1}, Lcom/bzbs/util/GCMUtil;->c(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
