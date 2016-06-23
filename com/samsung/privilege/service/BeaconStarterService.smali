.class public Lcom/samsung/privilege/service/BeaconStarterService;
.super Landroid/app/Service;
.source "BeaconStarterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/service/BeaconStarterService$NotificationReceiver;,
        Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;,
        Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconStarterService"

.field private static gLastTimePlaySound:J


# instance fields
.field private beaconManager:Lcom/jaalee/sdk/BeaconManager;

.field private gHandler:Landroid/os/Handler;

.field private listBeacon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/BeaconBzbs;",
            ">;"
        }
    .end annotation
.end field

.field private listRegion:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jaalee/sdk/Region;",
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

    sput-wide v0, Lcom/samsung/privilege/service/BeaconStarterService;->gLastTimePlaySound:J

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

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listRegion:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/service/BeaconStarterService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/service/BeaconStarterService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/service/BeaconStarterService;->processJsonBeacon(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/privilege/service/BeaconStarterService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/service/BeaconStarterService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->startServiceMonitoring()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/service/BeaconStarterService;
    .param p1, "x1"    # Lcom/jaalee/sdk/Region;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/service/BeaconStarterService;->cominRadiusBeacon(Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/bzbs/bean/MessageGCM;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/service/BeaconStarterService;
    .param p1, "x1"    # Lcom/bzbs/bean/MessageGCM;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/privilege/service/BeaconStarterService;->pushNotiCampaign(Lcom/bzbs/bean/MessageGCM;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/bzbs/bean/MessageGCM;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/service/BeaconStarterService;
    .param p1, "x1"    # Lcom/bzbs/bean/MessageGCM;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/privilege/service/BeaconStarterService;->pushNotiMessage(Lcom/bzbs/bean/MessageGCM;)V

    return-void
.end method

.method private checkActiveNotificationsXXX()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 380
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.kpbird.nlsexample.NOTIFICATION_LISTENER_SERVICE_EXAMPLE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "command"

    const-string/jumbo v7, "list"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/service/BeaconStarterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_58

    .line 385
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 386
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v4}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 387
    .local v5, "notifications":[Landroid/service/notification/StatusBarNotification;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    array-length v6, v5

    if-ge v1, v6, :cond_58

    .line 388
    aget-object v3, v5, v1

    .line 389
    .local v3, "notification":Landroid/service/notification/StatusBarNotification;
    const-string/jumbo v6, "BeaconStarterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_57

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 394
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notification":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "notifications":[Landroid/service/notification/StatusBarNotification;
    :catch_57
    move-exception v0

    .line 395
    :cond_58
    return v9
.end method

.method private cominRadiusBeacon(Lcom/jaalee/sdk/Region;Ljava/lang/Boolean;)V
    .registers 15
    .param p1, "region"    # Lcom/jaalee/sdk/Region;
    .param p2, "is_step_in"    # Ljava/lang/Boolean;

    .prologue
    .line 258
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cominRadiusBeacon:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getMajor()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getMinor()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_79

    .line 261
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "STEP_IN:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_6c
    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    if-eqz v8, :cond_78

    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_98

    .line 328
    :cond_78
    :goto_78
    return-void

    .line 263
    :cond_79
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "STEP_OUT:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 268
    :cond_98
    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v8}, Lcom/jaalee/sdk/BeaconManager;->hasBluetooth()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 271
    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v8}, Lcom/jaalee/sdk/BeaconManager;->isBluetoothEnabled()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 276
    const/4 v3, 0x0

    .line 277
    .local v3, "objBeaconBzbs":Lcom/bzbs/bean/BeaconBzbs;
    iget-object v8, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_af
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/bean/BeaconBzbs;

    .line 278
    .local v2, "itemBeaconBzbs":Lcom/bzbs/bean/BeaconBzbs;
    iget-object v9, v2, Lcom/bzbs/bean/BeaconBzbs;->Identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_af

    iget v9, v2, Lcom/bzbs/bean/BeaconBzbs;->Major:I

    .line 279
    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getMajor()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_af

    iget v9, v2, Lcom/bzbs/bean/BeaconBzbs;->Minor:I

    .line 280
    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getMinor()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_af

    .line 282
    move-object v3, v2

    .line 287
    .end local v2    # "itemBeaconBzbs":Lcom/bzbs/bean/BeaconBzbs;
    :cond_e0
    if-eqz v3, :cond_78

    .line 288
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1cd

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_IN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/data/UserLogin;->GetBeaconLastActionTime(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    .line 291
    .local v4, "lastActionTime":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 292
    .local v1, "dateNow":Ljava/util/Date;
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_123

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iget v10, v3, Lcom/bzbs/bean/BeaconBzbs;->StepIn_TimeOut:I

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_1ac

    .line 293
    :cond_123
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->playSound()V

    .line 294
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DO_STEP_IN:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_IN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/bzbs/data/UserLogin;->SetBeaconLastActionTime(Ljava/lang/String;Landroid/content/Context;J)Z

    .line 297
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "api/nfc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "url":Ljava/lang/String;
    new-instance v6, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v6}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 299
    .local v6, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v8, "token"

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v8, "nfc_token"

    iget-object v9, v3, Lcom/bzbs/bean/BeaconBzbs;->NFCToken_StepIn:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 303
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    invoke-virtual {v0, v8, v7, v6, v9}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_78

    .line 305
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v6    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v7    # "url":Ljava/lang/String;
    :cond_1ac
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SKIP_STEP_IN:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_78

    .line 308
    .end local v1    # "dateNow":Ljava/util/Date;
    .end local v4    # "lastActionTime":J
    :cond_1cd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_OUT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/data/UserLogin;->GetBeaconLastActionTime(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    .line 310
    .restart local v4    # "lastActionTime":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 311
    .restart local v1    # "dateNow":Ljava/util/Date;
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_208

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iget v10, v3, Lcom/bzbs/bean/BeaconBzbs;->StepOut_TimeOut:I

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_291

    .line 312
    :cond_208
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->playSound()V

    .line 313
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DO_STEP_OUT:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_OUT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/bzbs/data/UserLogin;->SetBeaconLastActionTime(Ljava/lang/String;Landroid/content/Context;J)Z

    .line 316
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "api/nfc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 317
    .restart local v7    # "url":Ljava/lang/String;
    new-instance v6, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v6}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 318
    .restart local v6    # "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v8, "token"

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v8, "nfc_token"

    iget-object v9, v3, Lcom/bzbs/bean/BeaconBzbs;->NFCToken_StepOut:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 322
    .restart local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/service/BeaconStarterService$NFCListener;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    invoke-virtual {v0, v8, v7, v6, v9}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_78

    .line 324
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v6    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v7    # "url":Ljava/lang/String;
    :cond_291
    const-string/jumbo v8, "BeaconStarterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SKIP_STEP_OUT:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_78
.end method

.method private connectToService()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listRegion:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 195
    :goto_8
    return-void

    .line 189
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/service/BeaconStarterService$1;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    invoke-virtual {v0, v1}, Lcom/jaalee/sdk/BeaconManager;->connect(Lcom/jaalee/sdk/ServiceReadyCallback;)V

    goto :goto_8
.end method

.method private initBeacon(Ljava/util/ArrayList;)V
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
    .local p1, "pListBeacon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/BeaconBzbs;>;"
    const/4 v8, 0x0

    .line 219
    if-eqz p1, :cond_83

    .line 220
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 221
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "init Beacon"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

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

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jaalee/sdk/BeaconManager;->setBackgroundScanPeriod(JJ)V

    .line 229
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

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
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

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/service/BeaconStarterService$2;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    invoke-virtual {v0, v1}, Lcom/jaalee/sdk/BeaconManager;->setMonitoringListener(Lcom/jaalee/sdk/MonitoringListener;)V

    .line 245
    :cond_83
    return-void
.end method

.method private loadListBeacon()V
    .registers 7

    .prologue
    .line 118
    const-string/jumbo v3, "ListBeacon"

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "catch_data":Ljava/lang/String;
    if-eqz v0, :cond_1a

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 120
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/samsung/privilege/service/BeaconStarterService;->processJsonBeacon(Ljava/lang/String;Z)V

    .line 123
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/beacon?device_app_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "BeaconStarterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(loadListBeacon)url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 126
    .local v1, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/samsung/privilege/service/BeaconStarterService$1;)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 127
    return-void
.end method

.method private playSound()V
    .registers 5

    .prologue
    .line 249
    const/4 v3, 0x2

    :try_start_1
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 250
    .local v1, "notification":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 251
    .local v2, "r":Landroid/media/Ringtone;
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 255
    .end local v1    # "notification":Landroid/net/Uri;
    .end local v2    # "r":Landroid/media/Ringtone;
    :goto_10
    return-void

    .line 252
    :catch_11
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method private processJsonBeacon(Ljava/lang/String;Z)V
    .registers 13
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "is_from_cache"    # Z

    .prologue
    .line 154
    :try_start_0
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 155
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 156
    .local v4, "jsonRoot":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_22

    move-result v5

    if-ge v1, v5, :cond_23

    .line 158
    :try_start_11
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 159
    .local v3, "jsonItem":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    new-instance v6, Lcom/bzbs/bean/BeaconBzbs;

    invoke-direct {v6, v3}, Lcom/bzbs/bean/BeaconBzbs;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_84

    .line 156
    .end local v3    # "jsonItem":Lorg/json/JSONObject;
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 164
    .end local v1    # "i":I
    .end local v4    # "jsonRoot":Lorg/json/JSONArray;
    :catch_22
    move-exception v5

    .line 168
    :cond_23
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listRegion:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_83

    .line 170
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/samsung/privilege/service/BeaconStarterService;->initBeacon(Ljava/util/ArrayList;)V

    .line 171
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->stopServiceMonitoring()V

    .line 173
    iget-object v5, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listBeacon:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/BeaconBzbs;

    .line 176
    .local v0, "beaconBzbs":Lcom/bzbs/bean/BeaconBzbs;
    new-instance v2, Lcom/jaalee/sdk/Region;

    iget-object v6, v0, Lcom/bzbs/bean/BeaconBzbs;->Identifier:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, v0, Lcom/bzbs/bean/BeaconBzbs;->Major:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lcom/bzbs/bean/BeaconBzbs;->Minor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/jaalee/sdk/Region;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 177
    .local v2, "itemRegion":Lcom/jaalee/sdk/Region;
    iget-object v6, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listRegion:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string/jumbo v6, "BeaconStarterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "listRegion.add(itemRegion);"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/bzbs/bean/BeaconBzbs;->Identifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 181
    .end local v0    # "beaconBzbs":Lcom/bzbs/bean/BeaconBzbs;
    .end local v2    # "itemRegion":Lcom/jaalee/sdk/Region;
    :cond_80
    invoke-direct {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->connectToService()V

    .line 183
    :cond_83
    return-void

    .line 160
    .restart local v1    # "i":I
    .restart local v4    # "jsonRoot":Lorg/json/JSONArray;
    :catch_84
    move-exception v5

    goto :goto_1f
.end method

.method private pushNotiCampaign(Lcom/bzbs/bean/MessageGCM;)V
    .registers 20
    .param p1, "messageGCM"    # Lcom/bzbs/bean/MessageGCM;

    .prologue
    .line 401
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_10d

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v6, v12

    .line 404
    .local v6, "intNotificationId":I
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/bzbs/bean/MessageGCM;->agency_id:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10e

    .line 405
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v11, 0x40000000

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 407
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

    .line 408
    const-string/jumbo v11, "campaign_id"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-static {v12}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 409
    const-string/jumbo v11, "from_noti"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    const-string/jumbo v11, "from_noti_type"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string/jumbo v11, "from_noti_alert"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v6, v7, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 415
    .local v2, "activity":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    .local v3, "builder":Landroid/app/Notification$Builder;
    const v11, 0x7f0202a1

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-string/jumbo v12, "Galaxy Gift"

    .line 417
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 418
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    .line 419
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 420
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 422
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 423
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-wide v14, Lcom/samsung/privilege/service/BeaconStarterService;->gLastTimePlaySound:J

    const-wide/32 v16, 0xea60

    add-long v14, v14, v16

    cmp-long v11, v12, v14

    if-lez v11, :cond_c3

    .line 424
    const/4 v11, 0x2

    invoke-static {v11}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 425
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sput-wide v12, Lcom/samsung/privilege/service/BeaconStarterService;->gLastTimePlaySound:J

    .line 428
    :cond_c3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 429
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 430
    .local v9, "notification":Landroid/app/Notification;
    invoke-virtual {v10, v6, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 432
    const-string/jumbo v11, "Push Notification"

    const-string/jumbo v12, "View Campaign Beacon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_100
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-ge v11, v12, :cond_10d

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/samsung/privilege/service/BeaconStarterService;->showDialogBeacon(Lcom/bzbs/bean/MessageGCM;I)V

    .line 476
    .end local v2    # "activity":Landroid/app/PendingIntent;
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "intNotificationId":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_10d
    return-void

    .line 434
    .restart local v6    # "intNotificationId":I
    :cond_10e
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
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

    .line 436
    new-instance v8, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v8}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 437
    .local v8, "model":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 438
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 439
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "ItemMarketPlace"

    invoke-static {v8}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 440
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v12, "ads"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_212

    .line 441
    const-string/jumbo v11, "ItemMarketPlace::Ads::Ins"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    :goto_163
    const-string/jumbo v11, "from_noti"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    const-string/jumbo v11, "from_noti_type"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string/jumbo v11, "from_noti_alert"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {v7, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v6, v7, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 452
    .restart local v2    # "activity":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    .restart local v3    # "builder":Landroid/app/Notification$Builder;
    const v11, 0x7f0202a1

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-string/jumbo v12, "Galaxy Gift"

    .line 454
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 455
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    .line 456
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 457
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 459
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 460
    .restart local v5    # "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-wide v14, Lcom/samsung/privilege/service/BeaconStarterService;->gLastTimePlaySound:J

    const-wide/32 v16, 0xea60

    add-long v14, v14, v16

    cmp-long v11, v12, v14

    if-lez v11, :cond_1d3

    .line 461
    const/4 v11, 0x2

    invoke-static {v11}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 462
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sput-wide v12, Lcom/samsung/privilege/service/BeaconStarterService;->gLastTimePlaySound:J

    .line 465
    :cond_1d3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 466
    .restart local v10    # "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 467
    .restart local v9    # "notification":Landroid/app/Notification;
    invoke-virtual {v10, v6, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 469
    const-string/jumbo v11, "Push Notification"

    const-string/jumbo v12, "View Bzbs Campaign Beacon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/bzbs/bean/MessageGCM;->object_id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_100

    .line 443
    .end local v2    # "activity":Landroid/app/PendingIntent;
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "date":Ljava/util/Date;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_212
    const-string/jumbo v11, "ItemMarketPlace::Ads::Ins"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_163
.end method

.method private pushNotiMessage(Lcom/bzbs/bean/MessageGCM;)V
    .registers 16
    .param p1, "messageGCM"    # Lcom/bzbs/bean/MessageGCM;

    .prologue
    const/4 v10, 0x1

    .line 480
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_c8

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v2, v8

    .line 483
    .local v2, "intNotificationId":I
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .local v3, "intent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.samsung.privilege.service"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string/jumbo v7, "messageGCM"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v7, "notificationId"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v7, "from_noti"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    const-string/jumbo v7, "from_noti_type"

    iget-object v8, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string/jumbo v7, "from_noti_alert"

    iget-object v8, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v2, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 492
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v0, "builder":Landroid/app/Notification$Builder;
    const v7, 0x7f0202a1

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string/jumbo v8, "Galaxy Gift"

    .line 494
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 495
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 496
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 497
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 499
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 500
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sget-wide v10, Lcom/samsung/privilege/service/BeaconStarterService;->gLastTimePlaySound:J

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-lez v7, :cond_a2

    .line 501
    const/4 v7, 0x2

    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 502
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sput-wide v8, Lcom/samsung/privilege/service/BeaconStarterService;->gLastTimePlaySound:J

    .line 505
    :cond_a2
    invoke-virtual {p0}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 506
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 507
    .local v4, "notification":Landroid/app/Notification;
    invoke-virtual {v5, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 509
    const-string/jumbo v7, "Push Notification"

    const-string/jumbo v8, "View Msg Beacon"

    invoke-static {v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_c8

    .line 512
    invoke-direct {p0, p1, v2}, Lcom/samsung/privilege/service/BeaconStarterService;->showDialogBeacon(Lcom/bzbs/bean/MessageGCM;I)V

    .line 515
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "intNotificationId":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_c8
    return-void
.end method

.method private showDialogBeacon(Lcom/bzbs/bean/MessageGCM;I)V
    .registers 14
    .param p1, "messageGCM"    # Lcom/bzbs/bean/MessageGCM;
    .param p2, "intNotificationId"    # I

    .prologue
    const v10, 0x7f100530

    const/4 v9, 0x4

    const v8, 0x7f100531

    const v7, 0x7f10052e

    const/4 v6, 0x0

    .line 518
    new-instance v0, Landroid/app/Dialog;

    const v4, 0x1030010

    invoke-direct {v0, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 519
    .local v0, "dialog":Landroid/app/Dialog;
    const v4, 0x7f0400fb

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 521
    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v5, "campaign_beacon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 522
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 523
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 524
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :goto_39
    const v4, 0x7f100152

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 532
    .local v3, "tvMessage":Landroid/widget/TextView;
    iget-object v4, p1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 535
    .local v1, "layoutButtonClose":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/service/BeaconStarterService$3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/privilege/service/BeaconStarterService$3;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 543
    .local v2, "layoutButtonView":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/service/BeaconStarterService$4;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/samsung/privilege/service/BeaconStarterService$4;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;Landroid/app/Dialog;Lcom/bzbs/bean/MessageGCM;I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 591
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x200000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 592
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 593
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 595
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 596
    return-void

    .line 526
    .end local v1    # "layoutButtonClose":Landroid/widget/RelativeLayout;
    .end local v2    # "layoutButtonView":Landroid/widget/RelativeLayout;
    .end local v3    # "tvMessage":Landroid/widget/TextView;
    :cond_8b
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 527
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 528
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39
.end method

.method private startServiceMonitoring()V
    .registers 6

    .prologue
    .line 198
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listRegion:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 206
    :cond_8
    return-void

    .line 200
    :cond_9
    const-string/jumbo v1, "BeaconStarterService"

    const-string/jumbo v2, "startServiceMonitoring"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listRegion:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/Region;

    .line 203
    .local v0, "item":Lcom/jaalee/sdk/Region;
    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v2, v0}, Lcom/jaalee/sdk/BeaconManager;->startMonitoring(Lcom/jaalee/sdk/Region;)V

    .line 204
    const-string/jumbo v2, "BeaconStarterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "beaconManager.startMonitoring(item);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jaalee/sdk/Region;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private stopServiceMonitoring()V
    .registers 4

    .prologue
    .line 209
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listRegion:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 216
    :cond_8
    return-void

    .line 211
    :cond_9
    const-string/jumbo v1, "BeaconStarterService"

    const-string/jumbo v2, "stopServiceMonitoring"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService;->listRegion:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/Region;

    .line 214
    .local v0, "item":Lcom/jaalee/sdk/Region;
    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v2, v0}, Lcom/jaalee/sdk/BeaconManager;->stopMonitoring(Lcom/jaalee/sdk/Region;)V

    goto :goto_18
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 111
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->disconnect()V

    .line 115
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startid"    # I

    .prologue
    .line 81
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->gHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/jaalee/sdk/BeaconManager;

    invoke-direct {v0, p0}, Lcom/jaalee/sdk/BeaconManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->hasBluetooth()Z

    move-result v0

    if-nez v0, :cond_29

    .line 94
    :cond_1f
    :goto_1f
    const-string/jumbo v0, "BeaconStarterService"

    const-string/jumbo v1, "ConnectToService"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 90
    :cond_29
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->beaconManager:Lcom/jaalee/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/jaalee/sdk/BeaconManager;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_1f
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/samsung/privilege/service/BeaconStarterService;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/service/BeaconStarterService$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/service/BeaconStarterService$5;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method
