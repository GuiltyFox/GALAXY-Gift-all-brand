.class public Lcom/samsung/privilege/service/BeaconStarterService;
.super Landroid/app/Service;
.source "BeaconStarterService.java"


# static fields
.field private static b:J


# instance fields
.field private a:Landroid/os/Handler;

.field private c:Lcom/jaalee/sdk/BeaconManager;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jaalee/sdk/Region;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/BeaconBzbs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/privilege/service/BeaconStarterService;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 122
    const-string/jumbo v0, "ListBeacon"

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 124
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Ljava/lang/String;Z)V

    .line 127
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/beacon?device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/beacon?device_app_id=1187390611336593"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "BeaconStarterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(loadListBeacon)url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 132
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 135
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/service/BeaconStarterService$1;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 156
    return-void
.end method

.method private a(Lcom/bzbs/bean/MessageGCM;)V
    .registers 12

    .prologue
    const-wide/32 v8, 0xea60

    .line 435
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f4

    .line 437
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 439
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.samsung.privilege.service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v2, "campaign_id"

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 444
    const-string/jumbo v2, "from_noti"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const-string/jumbo v2, "from_noti_type"

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string/jumbo v2, "from_noti_alert"

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 450
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v4, "Galaxy Gift"

    .line 452
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 453
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

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

    sget-wide v6, Lcom/samsung/privilege/service/BeaconStarterService;->b:J

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_b8

    .line 459
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 460
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/service/BeaconStarterService;->b:J

    .line 463
    :cond_b8
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 464
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 467
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v2, "View Campaign Beacon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_f1
    invoke-direct {p0, p1, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/bzbs/bean/MessageGCM;I)V

    .line 512
    :cond_f4
    :goto_f4
    return-void

    .line 469
    :cond_f5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.samsung.privilege.service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 472
    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 473
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 474
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v2}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 475
    iget-object v2, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v4, "ads"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ea

    .line 476
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    :goto_146
    const-string/jumbo v2, "from_noti"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 481
    const-string/jumbo v2, "from_noti_type"

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v2, "from_noti_alert"

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 487
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v4, "Galaxy Gift"

    .line 489
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 490
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 491
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 492
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 494
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 495
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/service/BeaconStarterService;->b:J

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_1ac

    .line 496
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 497
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/service/BeaconStarterService;->b:J

    .line 500
    :cond_1ac
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 501
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 502
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 504
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v2, "View Bzbs Campaign Beacon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 509
    :catch_1e7
    move-exception v0

    goto/16 :goto_f4

    .line 478
    :cond_1ea
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f1} :catch_1e7

    goto/16 :goto_146
.end method

.method private a(Lcom/bzbs/bean/MessageGCM;I)V
    .registers 12

    .prologue
    const v8, 0x7f10056c

    const/4 v7, 0x4

    const v6, 0x7f10056d

    const v4, 0x7f10056a

    const/4 v3, 0x0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 557
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetBeaconDialogString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_73

    .line 666
    :goto_72
    return-void

    .line 563
    :cond_73
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 564
    const v0, 0x7f040103

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 566
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "campaign_beacon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 567
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 568
    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 569
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 576
    :goto_a1
    const v0, 0x7f100169

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 577
    iget-object v1, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 580
    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$4;

    invoke-direct {v1, p0, v2, v5}, Lcom/samsung/privilege/service/BeaconStarterService$4;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 590
    new-instance v0, Lcom/samsung/privilege/service/BeaconStarterService$5;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/service/BeaconStarterService$5;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;Landroid/app/Dialog;Lcom/bzbs/bean/MessageGCM;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    new-instance v0, Lcom/samsung/privilege/service/BeaconStarterService$6;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/service/BeaconStarterService$6;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 646
    new-instance v0, Lcom/samsung/privilege/service/BeaconStarterService$7;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/service/BeaconStarterService$7;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 653
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_145

    .line 654
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 658
    :goto_ee
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 659
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 660
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 662
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 664
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->w(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_72

    .line 571
    :cond_12e
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 572
    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 573
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a1

    .line 656
    :cond_145
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_ee
.end method

.method private a(Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    .line 264
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cominRadiusBeacon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7b

    .line 274
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STEP_IN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_6e
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9a

    .line 357
    :cond_7a
    :goto_7a
    return-void

    .line 276
    :cond_7b
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STEP_OUT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 281
    :cond_9a
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->a()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 284
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->b()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 289
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/BeaconBzbs;

    .line 291
    iget-object v3, v0, Lcom/bzbs/bean/BeaconBzbs;->Identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, v0, Lcom/bzbs/bean/BeaconBzbs;->Major:I

    .line 292
    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->c()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_b1

    iget v3, v0, Lcom/bzbs/bean/BeaconBzbs;->Minor:I

    .line 293
    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_b1

    .line 300
    :goto_e1
    if-eqz v0, :cond_7a

    .line 301
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e8

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_IN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 304
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 305
    cmp-long v4, v2, v6

    if-eqz v4, :cond_122

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget v6, v0, Lcom/bzbs/bean/BeaconBzbs;->StepIn_TimeOut:I

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1c6

    .line 306
    :cond_122
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->e()V

    .line 307
    const-string/jumbo v4, "BeaconStarterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DO_STEP_IN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_IN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/bzbs/data/UserLogin;->a(Ljava/lang/String;Landroid/content/Context;J)Z

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/nfc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 314
    const-string/jumbo v3, "nfc_token"

    iget-object v0, v0, Lcom/bzbs/bean/BeaconBzbs;->NFCToken_StepIn:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 316
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 317
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 318
    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 322
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    .line 323
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_7a

    .line 326
    :cond_1c6
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SKIP_STEP_IN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 329
    :cond_1e8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 331
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 332
    cmp-long v4, v2, v6

    if-eqz v4, :cond_221

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget v6, v0, Lcom/bzbs/bean/BeaconBzbs;->StepOut_TimeOut:I

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2c5

    .line 333
    :cond_221
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->e()V

    .line 334
    const-string/jumbo v4, "BeaconStarterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DO_STEP_OUT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_OUT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/bzbs/data/UserLogin;->a(Ljava/lang/String;Landroid/content/Context;J)Z

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/nfc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 341
    const-string/jumbo v3, "nfc_token"

    iget-object v0, v0, Lcom/bzbs/bean/BeaconBzbs;->NFCToken_StepOut:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 343
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 344
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 345
    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 349
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    .line 350
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_7a

    .line 353
    :cond_2c5
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SKIP_STEP_OUT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    :cond_2e7
    move-object v0, v1

    goto/16 :goto_e1
.end method

.method static synthetic a(Lcom/samsung/privilege/service/BeaconStarterService;)V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/bzbs/bean/MessageGCM;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/bzbs/bean/MessageGCM;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/service/BeaconStarterService;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 10

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_22

    move-result v2

    if-ge v0, v2, :cond_23

    .line 164
    :try_start_11
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    new-instance v4, Lcom/bzbs/bean/BeaconBzbs;

    invoke-direct {v4, v2}, Lcom/bzbs/bean/BeaconBzbs;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_84

    .line 162
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 170
    :catch_22
    move-exception v0

    .line 174
    :cond_23
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 176
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Ljava/util/ArrayList;)V

    .line 177
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->d()V

    .line 179
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/BeaconBzbs;

    .line 182
    new-instance v2, Lcom/jaalee/sdk/Region;

    iget-object v3, v0, Lcom/bzbs/bean/BeaconBzbs;->Identifier:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, v0, Lcom/bzbs/bean/BeaconBzbs;->Major:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lcom/bzbs/bean/BeaconBzbs;->Minor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jaalee/sdk/Region;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 183
    iget-object v3, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const-string/jumbo v2, "BeaconStarterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listRegion.add(itemRegion);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/bzbs/bean/BeaconBzbs;->Identifier:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 187
    :cond_80
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->b()V

    .line 189
    :cond_83
    return-void

    .line 166
    :catch_84
    move-exception v2

    goto :goto_1f
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/BeaconBzbs;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 225
    if-eqz p1, :cond_83

    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 227
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "init Beacon"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/BeaconBzbs;

    iget v0, v0, Lcom/bzbs/bean/BeaconBzbs;->Beacon_Scanning:I

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/BeaconBzbs;

    iget v0, v0, Lcom/bzbs/bean/BeaconBzbs;->Beacon_Waiting:I

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jaalee/sdk/BeaconManager;->a(JJ)V

    .line 235
    const-string/jumbo v1, "BeaconStarterService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Beacon_Scanning="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/BeaconBzbs;

    iget v0, v0, Lcom/bzbs/bean/BeaconBzbs;->Beacon_Scanning:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v1, "BeaconStarterService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Beacon_Waiting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/BeaconBzbs;

    iget v0, v0, Lcom/bzbs/bean/BeaconBzbs;->Beacon_Waiting:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/service/BeaconStarterService$3;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    invoke-virtual {v0, v1}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/MonitoringListener;)V

    .line 251
    :cond_83
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 201
    :goto_8
    return-void

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/service/BeaconStarterService$2;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    invoke-virtual {v0, v1}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/ServiceReadyCallback;)V

    goto :goto_8
.end method

.method private b(Lcom/bzbs/bean/MessageGCM;)V
    .registers 12

    .prologue
    .line 516
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c8

    .line 518
    iget-object v0, p1, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.samsung.privilege.service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string/jumbo v2, "messageGCM"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v2, "notificationId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string/jumbo v2, "from_noti"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    const-string/jumbo v2, "from_noti_type"

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string/jumbo v2, "from_noti_alert"

    iget-object v3, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 529
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 530
    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v4, "Galaxy Gift"

    .line 531
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 532
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 533
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 534
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 536
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 537
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/privilege/service/BeaconStarterService;->b:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_a8

    .line 538
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 539
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/privilege/service/BeaconStarterService;->b:J

    .line 542
    :cond_a8
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 543
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 544
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 546
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v2, "View Msg Beacon"

    invoke-static {v0, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0, p1, v1}, Lcom/samsung/privilege/service/BeaconStarterService;->a(Lcom/bzbs/bean/MessageGCM;I)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c8} :catch_c9

    .line 553
    :cond_c8
    :goto_c8
    return-void

    .line 550
    :catch_c9
    move-exception v0

    goto :goto_c8
.end method

.method static synthetic b(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/bzbs/bean/MessageGCM;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/privilege/service/BeaconStarterService;->b(Lcom/bzbs/bean/MessageGCM;)V

    return-void
.end method

.method private c()V
    .registers 6

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 212
    :cond_8
    return-void

    .line 206
    :cond_9
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "startServiceMonitoring"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/Region;

    .line 209
    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v2, v0}, Lcom/jaalee/sdk/BeaconManager;->a(Lcom/jaalee/sdk/Region;)V

    .line 210
    const-string/jumbo v2, "BeaconStarterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "beaconManager.startMonitoring(item);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jaalee/sdk/Region;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private d()V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 222
    :cond_8
    return-void

    .line 217
    :cond_9
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "stopServiceMonitoring"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/Region;

    .line 220
    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v2, v0}, Lcom/jaalee/sdk/BeaconManager;->b(Lcom/jaalee/sdk/Region;)V

    goto :goto_18
.end method

.method private e()V
    .registers 3

    .prologue
    .line 255
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 261
    :goto_10
    return-void

    .line 258
    :catch_11
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method private f()Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 410
    :try_start_1
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v2, "checkActiveNotifications"

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.privilege.NOTIFICATION_LISTENER_SERVICE_EXAMPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    const-string/jumbo v2, "command"

    const-string/jumbo v3, "list"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/service/BeaconStarterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_85

    .line 417
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v2, "android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M"

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 419
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 420
    const-string/jumbo v0, "BeaconStarterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifications.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 421
    :goto_5a
    array-length v3, v2

    if-ge v0, v3, :cond_85

    .line 422
    aget-object v3, v2, v0

    .line 423
    const-string/jumbo v4, "BeaconStarterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notification="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_81} :catch_84

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 428
    :catch_84
    move-exception v0

    .line 429
    :cond_85
    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 115
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->d()V

    .line 119
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    .prologue
    .line 81
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->a:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/jaalee/sdk/BeaconManager;

    invoke-direct {v0, p0}, Lcom/jaalee/sdk/BeaconManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->a()Z

    move-result v0

    if-nez v0, :cond_31

    .line 94
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->H(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 95
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->a()V

    .line 105
    :goto_2d
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->f()Z

    .line 106
    return-void

    .line 90
    :cond_31
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->c:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_1f

    .line 97
    :cond_3a
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "Beacon is disable from server."

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method
