.class public Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;
.super Landroid/app/Activity;
.source "NotificationPostAsyncDialogBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;,
        Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;,
        Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;
    }
.end annotation


# static fields
.field private static LOGCAT:Ljava/lang/String;

.field private static gActivity:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

.field private static gFileFail:Ljava/lang/String;


# instance fields
.field private gCanCancel:Z

.field private gCanRetry:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "buzzebees.post.async"

    sput-object v0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 31
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    .line 24
    return-void
.end method

.method private static CancelNotification()V
    .registers 6

    .prologue
    .line 263
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 265
    .local v0, "IntNotification_posting_number":I
    sget-object v3, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 266
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 268
    return-void
.end method

.method private static DeleteFileAndPhoto(Ljava/lang/String;)V
    .registers 6
    .param p0, "pFilepath"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v2, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1.DeleteFileAndPhoto -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 84
    sget-object v2, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v3, "2.DeleteFileAndPhoto -> if (file.exists()) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_52

    .line 94
    .end local v1    # "file":Ljava/io/File;
    :cond_29
    :goto_29
    :try_start_29
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_photo.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 96
    sget-object v2, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v3, "3.DeleteFileAndPhoto -> if (file_photo.exists()) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_51} :catch_6c

    .line 104
    .end local v1    # "file":Ljava/io/File;
    :cond_51
    :goto_51
    return-void

    .line 87
    :catch_52
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|DeleteFileAndPhoto|1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6c
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|DeleteFileAndPhoto|2"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method private static DeleteFileLog(Ljava/lang/String;)V
    .registers 6
    .param p0, "pFilepath"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v2, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1.DeleteFileLog -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :try_start_14
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 112
    sget-object v2, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v3, "2.DeleteFileLog -> if (file.exists()) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    .line 120
    .end local v1    # "file":Ljava/io/File;
    :cond_3c
    :goto_3c
    return-void

    .line 115
    :catch_3d
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|DeleteFileAndPhoto|3"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private MoveFileAndPhoto(Ljava/lang/String;)V
    .registers 12
    .param p1, "pFilepath"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "IsMoveFile":Z
    :try_start_1
    sget-object v7, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "1.MoveFileAndPhoto -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v6, "folder_Async_Queue":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2b

    .line 163
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_2b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, "fileSource":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_photo.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v5, "fileSourcePicture":Ljava/io/File;
    sget-object v7, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "2.MoveFileAndPhoto -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_photo.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, "fileDest":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_photo.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, "fileDestPicture":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_101

    .line 174
    sget-object v7, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v8, "3.MoveFileAndPhoto -> if (fileSource.exists()) {"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {v4, v2}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 177
    sget-object v7, Lcom/samsung/privilege/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "save-put:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 179
    sget-object v7, Lcom/samsung/privilege/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "save-enq:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 183
    :cond_101
    if-eqz v0, :cond_15e

    .line 184
    sget-object v7, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v8, "4.MoveFileAndPhoto -> if (IsMoveFile) {"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_15e

    .line 186
    sget-object v7, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v8, "5.MoveFileAndPhoto -> if (fileSourcePicture.exists()) {"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {v5, v3}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 189
    sget-object v7, Lcom/samsung/privilege/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "save-put:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 191
    sget-object v7, Lcom/samsung/privilege/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "save-enq:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15e} :catch_15f

    .line 200
    .end local v2    # "fileDest":Ljava/io/File;
    .end local v3    # "fileDestPicture":Ljava/io/File;
    .end local v4    # "fileSource":Ljava/io/File;
    .end local v5    # "fileSourcePicture":Ljava/io/File;
    .end local v6    # "folder_Async_Queue":Ljava/io/File;
    :cond_15e
    :goto_15e
    return-void

    .line 195
    :catch_15f
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception|DeleteFileAndPhoto|1"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15e
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->MoveFileAndPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3()Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 78
    invoke-static {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->DeleteFileAndPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 106
    invoke-static {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->DeleteFileLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->showDialogConfirmRetryOrCancel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7()V
    .registers 0

    .prologue
    .line 260
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->CancelNotification()V

    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 127
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_37
    .catchall {:try_start_3 .. :try_end_d} :catchall_45

    .line 128
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_d
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_5e
    .catchall {:try_start_d .. :try_end_18} :catchall_57

    .line 130
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x400

    :try_start_1a
    new-array v4, v7, [B

    .line 131
    .local v4, "buf":[B
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 134
    :cond_1f
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 135
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_61
    .catchall {:try_start_1a .. :try_end_25} :catchall_5a

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1f

    .line 140
    if-eqz v1, :cond_2e

    .line 141
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 142
    :cond_2e
    if-eqz v3, :cond_33

    .line 143
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_53

    .line 149
    :cond_33
    const/4 v6, 0x1

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buf":[B
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_36
    :goto_36
    return v6

    .line 136
    :catch_37
    move-exception v5

    .line 140
    .local v5, "e":Ljava/io/IOException;
    :goto_38
    if-eqz v0, :cond_3d

    .line 141
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 142
    :cond_3d
    if-eqz v2, :cond_36

    .line 143
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_36

    .line 144
    :catch_43
    move-exception v5

    .line 145
    goto :goto_36

    .line 138
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_45
    move-exception v7

    .line 140
    :goto_46
    if-eqz v0, :cond_4b

    .line 141
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 142
    :cond_4b
    if-eqz v2, :cond_50

    .line 143
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_51

    .line 147
    :cond_50
    throw v7

    .line 144
    :catch_51
    move-exception v5

    .line 145
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_36

    .line 144
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buf":[B
    :catch_53
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 145
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_36

    .line 138
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buf":[B
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_57
    move-exception v7

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_46

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_5a
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_46

    .line 136
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_5e
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_38

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :catch_61
    move-exception v5

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_38
.end method

.method private initialParam()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 54
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 56
    .local v2, "intent":Landroid/content/Intent;
    :try_start_6
    const-string v3, "file_fail"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_27

    .line 60
    :goto_e
    const-string v3, "command"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "command":Ljava/lang/String;
    if-eqz v0, :cond_42

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "retry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 63
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 64
    iput-boolean v6, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    .line 76
    :goto_26
    return-void

    .line 57
    .end local v0    # "command":Ljava/lang/String;
    :catch_27
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;

    goto :goto_e

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "command":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cancel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 66
    iput-boolean v6, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 67
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    goto :goto_26

    .line 69
    :cond_3d
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 70
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    goto :goto_26

    .line 73
    :cond_42
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 74
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    goto :goto_26
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private showDialogConfirmRetryOrCancel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 214
    :try_start_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    const v3, 0x7f0202bb

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    iget-boolean v3, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    if-eqz v3, :cond_25

    .line 219
    const-string v3, "Retry"

    new-instance v4, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$2;-><init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    :cond_25
    iget-boolean v3, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    if-eqz v3, :cond_33

    .line 231
    const-string v3, "Cancel"

    new-instance v4, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$3;-><init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    :cond_33
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 251
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_3b

    .line 258
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3a
    :goto_3a
    return-void

    .line 252
    :catch_3b
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception|showDialogConfirmRetryOrCancel :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030108

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 41
    sput-object p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    .line 43
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->initialParam()V

    .line 45
    new-instance v0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$1;-><init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 367
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 361
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    return-void
.end method
