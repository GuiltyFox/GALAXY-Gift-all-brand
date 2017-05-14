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
    .line 46
    const-class v0, Lcom/samsung/privilege/GCMIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    .line 48
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 710
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 52
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

    .line 53
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V
    .registers 2

    .prologue
    .line 713
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 714
    return-void
.end method

.method public static clearGCMMessageListener()V
    .registers 1

    .prologue
    .line 721
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 722
    return-void
.end method

.method public static onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V
    .registers 3

    .prologue
    .line 725
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

    .line 726
    invoke-interface {v0, p0}, Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    goto :goto_6

    .line 728
    :cond_16
    return-void
.end method

.method private processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    .prologue
    .line 599
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 601
    invoke-static {p1, p3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 602
    invoke-static {p3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 603
    iget-object v2, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 605
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f0

    .line 606
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_f0

    .line 610
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v3, v2

    .line 621
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
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

    .line 624
    const-string/jumbo v4, "campaign_id"

    invoke-static/range {p5 .. p5}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 625
    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    const-string/jumbo v4, "from_noti_type"

    iget-object v5, p3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string/jumbo v4, "from_noti_alert"

    iget-object v5, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const/4 v4, 0x0

    invoke-static {p1, p2, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 631
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 632
    const v5, 0x7f0202aa

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 633
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 634
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 635
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 636
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 638
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 639
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_bb

    .line 640
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 641
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sput-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 644
    :cond_bb
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 645
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 646
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 648
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

    .line 696
    :cond_f0
    :goto_f0
    return-void

    .line 651
    :cond_f1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v3, v2

    .line 653
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
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

    .line 655
    new-instance v4, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v4}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 656
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 657
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 658
    const-string/jumbo v6, "ItemMarketPlace"

    invoke-static {v4}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 659
    iget-object v4, p3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "ads"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1da

    .line 660
    const-string/jumbo v4, "ItemMarketPlace::Ads::Ins"

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 664
    :goto_143
    const-string/jumbo v4, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    const-string/jumbo v4, "from_noti_type"

    iget-object v6, p3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string/jumbo v4, "from_noti_alert"

    iget-object v6, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 668
    const/4 v4, 0x0

    invoke-static {p1, p2, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 671
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 672
    const v5, 0x7f0202aa

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 673
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 674
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 675
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 676
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 678
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 679
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_1a3

    .line 680
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 681
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sput-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 684
    :cond_1a3
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 685
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 686
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 688
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

    .line 662
    :cond_1da
    const-string/jumbo v4, "ItemMarketPlace::Ads::Ins"

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_143
.end method

.method public static removeGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V
    .registers 2

    .prologue
    .line 717
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->mGCMMessageListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 718
    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 700
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

    .line 701
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .prologue
    const/16 v11, 0xb

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 71
    :try_start_4
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_7d

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 73
    sget-object v0, Lcom/samsung/privilege/GCMIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMessage"

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 76
    new-instance v3, Lcom/bzbs/bean/MessageGCM;

    invoke-direct {v3}, Lcom/bzbs/bean/MessageGCM;-><init>()V

    .line 77
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

    .line 78
    if-eqz v0, :cond_2c

    .line 79
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
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

    .line 81
    const-string/jumbo v7, "collapse_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 82
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->collapse_key:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5e} :catch_5f

    goto :goto_2c

    .line 593
    :catch_5f
    move-exception v0

    .line 594
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

    .line 596
    :cond_7d
    :goto_7d
    return-void

    .line 83
    :cond_7e
    :try_start_7e
    const-string/jumbo v7, "from"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 84
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->from:Ljava/lang/String;

    goto :goto_2c

    .line 85
    :cond_8a
    const-string/jumbo v7, "type"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 86
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    goto :goto_2c

    .line 87
    :cond_96
    const-string/jumbo v7, "alert"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 88
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    goto :goto_2c

    .line 89
    :cond_a2
    const-string/jumbo v7, "object_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 90
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    goto/16 :goto_2c

    .line 91
    :cond_af
    const-string/jumbo v7, "subject"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 92
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    goto/16 :goto_2c

    .line 93
    :cond_bc
    const-string/jumbo v7, "agency_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 94
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    goto/16 :goto_2c

    .line 95
    :cond_c9
    const-string/jumbo v7, "url"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 96
    iput-object v6, v3, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    goto/16 :goto_2c

    .line 101
    :cond_d6
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->S(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 103
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b10

    .line 104
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

    .line 117
    :goto_fc
    if-nez v0, :cond_7d

    .line 118
    const v0, 0x7f09043a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "campaign"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 120
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    if-eqz v0, :cond_121

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    .line 121
    iget-object v4, v3, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    .line 125
    :cond_121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v2, v6

    .line 126
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

    .line 127
    :cond_13c
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v0, :cond_173

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_173

    .line 128
    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/GCMIntentService;->processNotiCampaign(Landroid/content/Context;ILcom/bzbs/bean/MessageGCM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    :cond_156
    move v2, v5

    .line 107
    :goto_157
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b10

    .line 108
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 109
    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    move v0, v1

    .line 111
    goto :goto_fc

    .line 107
    :cond_16f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_157

    .line 130
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

    .line 131
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

    .line 132
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 133
    invoke-virtual {v1, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 134
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 136
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 137
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/GCMIntentService$1;

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/samsung/privilege/GCMIntentService$1;-><init>(Lcom/samsung/privilege/GCMIntentService;Lcom/bzbs/bean/MessageGCM;Landroid/content/Context;I)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_7d

    .line 165
    :cond_1d7
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "badge"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 166
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 167
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 168
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 169
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
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

    .line 177
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 178
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 184
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 186
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 187
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 188
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 189
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 191
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 192
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_28e

    .line 193
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 194
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 197
    :cond_28e
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 198
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 201
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Badge Blink"

    iget-object v2, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 204
    :cond_2ab
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "comment"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3db

    .line 205
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 206
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 207
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 208
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 215
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 216
    const/4 v5, -0x1

    if-le v0, v5, :cond_3b2

    .line 217
    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    const-string/jumbo v6, "f-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_37c

    .line 219
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/samsung/privilege/activity/ReplyActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
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

    .line 221
    const-string/jumbo v6, "ReplyKeyBuzz"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v0, "ReplyIsRequestHelp"

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    const/4 v0, 0x0

    invoke-static {p1, v2, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 243
    :goto_32b
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 245
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 246
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 247
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 248
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 250
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 251
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_36a

    .line 252
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 253
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 256
    :cond_36a
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 257
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_7d

    .line 227
    :cond_37c
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/samsung/privilege/activity/ReplyActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
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

    .line 229
    const-string/jumbo v6, "ReplyKeyBuzz"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v0, "ReplyIsRequestHelp"

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    const/4 v0, 0x0

    invoke-static {p1, v2, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_32b

    .line 236
    :cond_3b2
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
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

    .line 238
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_32b

    .line 261
    :cond_3db
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "link"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b3

    .line 262
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 263
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 264
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 265
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 267
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
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

    .line 273
    const-string/jumbo v5, "url"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v5, "message"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 280
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 282
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 283
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 284
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 285
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 287
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 288
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_496

    .line 289
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 290
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 293
    :cond_496
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 294
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 297
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Link"

    iget-object v2, v3, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 300
    :cond_4b3
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v6, "cat"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68a

    .line 301
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 302
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 303
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 304
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 306
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 308
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    if-eqz v0, :cond_5c2

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c2

    .line 309
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5bf

    move v0, v1

    .line 318
    :goto_4f8
    if-ne v0, v1, :cond_5c5

    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
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

    .line 324
    const-string/jumbo v5, "category_noti"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 330
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 332
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 333
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 334
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 335
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 337
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 338
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_588

    .line 339
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 340
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 343
    :cond_588
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 344
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 347
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

    :cond_5bf
    move v0, v5

    .line 312
    goto/16 :goto_4f8

    :cond_5c2
    move v0, v1

    .line 315
    goto/16 :goto_4f8

    .line 350
    :cond_5c5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
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

    .line 355
    const-string/jumbo v5, "catId"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 361
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 363
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 364
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 365
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 366
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 368
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 369
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_653

    .line 370
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 371
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 374
    :cond_653
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 375
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 376
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 378
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

    .line 382
    :cond_68a
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ewallet_pay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a0

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "ewallet_refund"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_799

    .line 383
    :cond_6a0
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 384
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 385
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 386
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 388
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_773

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_773

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
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

    .line 395
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 396
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 401
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 403
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 404
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 405
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 406
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 408
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 409
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_746

    .line 410
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 411
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 414
    :cond_746
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 415
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 418
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77b

    .line 420
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Payment Success"

    const-string/jumbo v2, ""

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 428
    :cond_773
    :goto_773
    const-string/jumbo v0, "payment success"

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 421
    :cond_77b
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_773

    .line 423
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Refund Success"

    const-string/jumbo v2, ""

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_773

    .line 429
    :cond_799
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "message"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87b

    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    const-string/jumbo v5, "Your queue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87b

    .line 430
    const-string/jumbo v0, "queue"

    iput-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    .line 432
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 433
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 434
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 435
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 437
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
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

    .line 443
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 444
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 450
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 452
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 453
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 454
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 455
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 457
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 458
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_860

    .line 459
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 460
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 463
    :cond_860
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 464
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 467
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Msg"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 470
    :cond_87b
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "message"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94d

    .line 471
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 472
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 473
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 474
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 476
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 477
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
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

    .line 482
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 483
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 489
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 491
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 492
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 493
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 494
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 496
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 497
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_932

    .line 498
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 499
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 502
    :cond_932
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 503
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 504
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 506
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Msg"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 509
    :cond_94d
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "dashboard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a37

    .line 510
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 511
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 512
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 513
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 515
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 516
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_7d

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 519
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
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

    .line 521
    const-string/jumbo v5, "dashboard_key"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 527
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 529
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 530
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 531
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 532
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 534
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 535
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_a00

    .line 536
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 537
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 540
    :cond_a00
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 541
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 542
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 544
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

    goto/16 :goto_7d

    .line 547
    :cond_a37
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "resume"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 548
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 549
    invoke-static {p1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Lcom/bzbs/bean/MessageGCM;)V

    .line 550
    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->onGCMMessage(Lcom/bzbs/bean/MessageGCM;)V

    .line 551
    iget-object v0, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Ljava/lang/String;)V

    .line 553
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->z(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_b07

    .line 554
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_b07

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
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

    .line 559
    const-string/jumbo v5, "messageGCM"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 560
    const-string/jumbo v5, "notificationId"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 562
    const-string/jumbo v5, "from_noti_type"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const-string/jumbo v5, "from_noti_alert"

    iget-object v6, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 566
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    const v5, 0x7f0202aa

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 568
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 569
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 570
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 571
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 573
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 574
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_aee

    .line 575
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 576
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/GCMIntentService;->gLastTimePlaySound:J

    .line 579
    :cond_aee
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 580
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 581
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 583
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "View Msg"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_b07
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;ZZ)V
    :try_end_b0e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b0e} :catch_5f

    goto/16 :goto_7d

    :cond_b10
    move v0, v5

    goto/16 :goto_fc
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 705
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

    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 57
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

    .line 58
    invoke-static {p1, p2}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;Ljava/lang/String;)Z

    .line 60
    invoke-static {p1}, Lcom/bzbs/util/GCMUtil;->c(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 65
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

    .line 66
    return-void
.end method
