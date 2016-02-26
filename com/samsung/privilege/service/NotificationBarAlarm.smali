.class public Lcom/samsung/privilege/service/NotificationBarAlarm;
.super Landroid/content/BroadcastReceiver;
.source "NotificationBarAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/service/NotificationBarAlarm$GetBuzzebeesNotificationListener;,
        Lcom/samsung/privilege/service/NotificationBarAlarm$PullNotificationBarTask;
    }
.end annotation


# static fields
.field private static LOGCAT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static gContext:Landroid/content/Context;

.field private static gNotifyManager:Landroid/app/NotificationManager;

.field private static gRequestID:I

.field private static strTokenBuzzeBees:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/privilege/service/NotificationBarAlarm;->gRequestID:I

    .line 25
    const-string v0, "NotificationBarAlarm"

    sput-object v0, Lcom/samsung/privilege/service/NotificationBarAlarm;->LOGCAT:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/samsung/privilege/service/NotificationBarAlarm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/service/NotificationBarAlarm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/privilege/service/NotificationBarAlarm;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method private static createNotification(Lcom/samsung/privilege/bean/BuzzebeesNotification;)V
    .registers 14
    .param p0, "pbNoti"    # Lcom/samsung/privilege/bean/BuzzebeesNotification;

    .prologue
    .line 123
    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->gContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d6

    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->gContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d6

    sget-object v10, Lcom/facebook/android/Utility;->currentNotifications:Ljava/util/Hashtable;

    if-eqz v10, :cond_d6

    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->strTokenBuzzeBees:Ljava/lang/String;

    if-eqz v10, :cond_d6

    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->strTokenBuzzeBees:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d6

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v5, v10

    .line 126
    .local v5, "intNumberNotification":I
    const/4 v1, 0x0

    .line 128
    .local v1, "IsAlreadyCreteNotification":Z
    const-string v0, ""

    .line 130
    .local v0, "ApplicationName":Ljava/lang/String;
    :try_start_30
    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->gContext:Landroid/content/Context;

    const v11, 0x7f09001d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_d7

    move-result-object v0

    .line 135
    :goto_39
    const-string v7, ""

    .line 136
    .local v7, "strMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->RowKey:Ljava/lang/String;

    .line 137
    .local v9, "strRowKey":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->IsRead:Z

    .line 138
    .local v2, "IsRead":Z
    iget-object v8, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->ObjectType:Ljava/lang/String;

    .line 140
    .local v8, "strObjectType":Ljava/lang/String;
    const-string v10, "campaign"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 141
    iget-object v10, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->campaignObject:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v10, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    .line 148
    :cond_4d
    :goto_4d
    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->gContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/privilege/service/NotificationBarUtil;->getSharedPreferencesPermission(Landroid/content/Context;)V

    .line 150
    sget-object v10, Lcom/facebook/android/Utility;->currentNotifications:Ljava/util/Hashtable;

    invoke-virtual {v10, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_10e

    .line 151
    const/4 v1, 0x0

    .line 152
    sget-object v10, Lcom/facebook/android/Utility;->currentNotifications:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->gContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/privilege/service/NotificationBarUtil;->SavePreferencesFromCurrentNotifications(Landroid/content/Context;)V

    .line 157
    :goto_69
    const-string v10, "NotificationAlarm"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "createNotification|intNumberNotification:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|IsAlreadyCreteNotification:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-nez v1, :cond_d6

    if-nez v2, :cond_d6

    .line 160
    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->gContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    sput-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->gNotifyManager:Landroid/app/NotificationManager;

    .line 173
    const v4, 0x7f0202f4

    .line 178
    .local v4, "icon":I
    new-instance v6, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v4, v0, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 179
    .local v6, "notif":Landroid/app/Notification;
    iget v10, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 185
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "android.resource://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/samsung/privilege/service/NotificationBarAlarm;->gContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f060001

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 187
    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->gNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v10, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 190
    .end local v0    # "ApplicationName":Ljava/lang/String;
    .end local v1    # "IsAlreadyCreteNotification":Z
    .end local v2    # "IsRead":Z
    .end local v4    # "icon":I
    .end local v5    # "intNumberNotification":I
    .end local v6    # "notif":Landroid/app/Notification;
    .end local v7    # "strMessage":Ljava/lang/String;
    .end local v8    # "strObjectType":Ljava/lang/String;
    .end local v9    # "strRowKey":Ljava/lang/String;
    :cond_d6
    return-void

    .line 131
    .restart local v0    # "ApplicationName":Ljava/lang/String;
    .restart local v1    # "IsAlreadyCreteNotification":Z
    .restart local v5    # "intNumberNotification":I
    :catch_d7
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/samsung/privilege/service/NotificationBarAlarm;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "createNotification|Exception := "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_39

    .line 142
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "IsRead":Z
    .restart local v7    # "strMessage":Ljava/lang/String;
    .restart local v8    # "strObjectType":Ljava/lang/String;
    .restart local v9    # "strRowKey":Ljava/lang/String;
    :cond_f2
    const-string v10, "badge"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_100

    .line 143
    iget-object v10, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->badgeObject:Lcom/samsung/privilege/bean/BadgeNotification;

    iget-object v7, v10, Lcom/samsung/privilege/bean/BadgeNotification;->name:Ljava/lang/String;

    .line 144
    goto/16 :goto_4d

    :cond_100
    const-string v10, "message"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 145
    iget-object v10, p0, Lcom/samsung/privilege/bean/BuzzebeesNotification;->messageObject:Lcom/samsung/privilege/bean/MessageNotification;

    iget-object v7, v10, Lcom/samsung/privilege/bean/MessageNotification;->message:Ljava/lang/String;

    goto/16 :goto_4d

    .line 155
    :cond_10e
    const/4 v1, 0x1

    goto/16 :goto_69
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    sput-object p1, Lcom/samsung/privilege/service/NotificationBarAlarm;->gContext:Landroid/content/Context;

    .line 39
    :try_start_2
    invoke-static {p1}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/service/NotificationBarAlarm;->strTokenBuzzeBees:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_30

    .line 43
    :goto_8
    sget-object v1, Lcom/samsung/privilege/service/NotificationBarAlarm;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strTokenBuzzeBees "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/service/NotificationBarAlarm;->strTokenBuzzeBees:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/samsung/privilege/service/NotificationBarAlarm$PullNotificationBarTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/privilege/service/NotificationBarAlarm$PullNotificationBarTask;-><init>(Lcom/samsung/privilege/service/NotificationBarAlarm$PullNotificationBarTask;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/service/NotificationBarAlarm$PullNotificationBarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void

    .line 40
    :catch_30
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    sput-object v1, Lcom/samsung/privilege/service/NotificationBarAlarm;->strTokenBuzzeBees:Ljava/lang/String;

    goto :goto_8
.end method
