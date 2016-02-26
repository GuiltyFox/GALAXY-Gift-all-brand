.class Lcom/samsung/privilege/util/NotificationService$PollTask;
.super Landroid/os/AsyncTask;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/util/NotificationService;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/util/NotificationService;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/privilege/util/NotificationService$PollTask;->this$0:Lcom/samsung/privilege/util/NotificationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/util/NotificationService;Lcom/samsung/privilege/util/NotificationService$PollTask;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/privilege/util/NotificationService$PollTask;-><init>(Lcom/samsung/privilege/util/NotificationService;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/NotificationService$PollTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 72
    # getter for: Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/NotificationService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PollTask|doInBackground"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x2

    .line 77
    .local v0, "a":I
    const/4 v1, 0x3

    .line 78
    .local v1, "b":I
    add-int v2, v0, v1

    .line 80
    .local v2, "c":I
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/NotificationService$PollTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 16
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 97
    # getter for: Lcom/samsung/privilege/util/NotificationService;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/NotificationService;->access$0()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PollTask|onPostExecute"

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v12, p0, Lcom/samsung/privilege/util/NotificationService$PollTask;->this$0:Lcom/samsung/privilege/util/NotificationService;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/util/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 103
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    const v5, 0x7f0202f4

    .line 105
    .local v5, "icon":I
    const-string v8, "Your notification from the service"

    .line 106
    .local v8, "notiText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 108
    .local v6, "meow":J
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9, v5, v8, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 110
    .local v9, "notification":Landroid/app/Notification;
    iget-object v12, p0, Lcom/samsung/privilege/util/NotificationService$PollTask;->this$0:Lcom/samsung/privilege/util/NotificationService;

    invoke-virtual {v12}, Lcom/samsung/privilege/util/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 111
    .local v4, "context":Landroid/content/Context;
    const-string v3, "Your notification"

    .line 112
    .local v3, "contentTitle":Ljava/lang/CharSequence;
    const-string v2, "Some data has arrived!"

    .line 113
    .local v2, "contentText":Ljava/lang/CharSequence;
    new-instance v10, Landroid/content/Intent;

    const-class v12, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v10, v4, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v10, "notificationIntent":Landroid/content/Intent;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v12, v10, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 116
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v9, v4, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 118
    const/4 v0, 0x1

    .line 119
    .local v0, "SERVER_DATA_RECEIVED":I
    invoke-virtual {v11, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 121
    iget-object v12, p0, Lcom/samsung/privilege/util/NotificationService$PollTask;->this$0:Lcom/samsung/privilege/util/NotificationService;

    invoke-virtual {v12}, Lcom/samsung/privilege/util/NotificationService;->stopSelf()V

    .line 122
    return-void
.end method
