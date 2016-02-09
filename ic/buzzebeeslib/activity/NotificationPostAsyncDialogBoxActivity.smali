.class public Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;
.super Landroid/app/Activity;
.source "NotificationPostAsyncDialogBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;,
        Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;,
        Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;
    }
.end annotation


# static fields
.field private static LOGCAT:Ljava/lang/String;

.field private static gActivity:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

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

    sput-object v0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;

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
    iput-boolean v0, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 31
    iput-boolean v0, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    .line 24
    return-void
.end method

.method private static CancelNotification()V
    .registers 6

    .prologue
    .line 251
    new-instance v1, Ljava/io/File;

    sget-object v3, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
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

    .line 253
    .local v0, "IntNotification_posting_number":I
    sget-object v3, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 254
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 256
    return-void
.end method

.method private static DeleteFileAndPhoto(Ljava/lang/String;)V
    .registers 6
    .param p0, "pFilepath"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v2, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1.DeleteFileAndPhoto -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 82
    sget-object v2, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v3, "2.DeleteFileAndPhoto -> if (file.exists()) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_52

    .line 92
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

    .line 93
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 94
    sget-object v2, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v3, "3.DeleteFileAndPhoto -> if (file_photo.exists()) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_51} :catch_6c

    .line 102
    .end local v1    # "file":Ljava/io/File;
    :cond_51
    :goto_51
    return-void

    .line 85
    :catch_52
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|DeleteFileAndPhoto|1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6c
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|DeleteFileAndPhoto|2"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method private static DeleteFileLog(Ljava/lang/String;)V
    .registers 6
    .param p0, "pFilepath"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v2, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1.DeleteFileLog -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
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

    .line 109
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 110
    sget-object v2, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v3, "2.DeleteFileLog -> if (file.exists()) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    .line 118
    .end local v1    # "file":Ljava/io/File;
    :cond_3c
    :goto_3c
    return-void

    .line 113
    :catch_3d
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|DeleteFileAndPhoto|3"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private static MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pFilepath"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "IsMoveFile":Z
    :try_start_1
    sget-object v7, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "1.MoveFileAndPhoto -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v6, Ljava/io/File;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v6, "folder_Async_Queue":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_27

    .line 162
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_27
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
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

    .line 167
    .local v5, "fileSourcePicture":Ljava/io/File;
    sget-object v7, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

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

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

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

    .line 172
    .local v2, "fileDest":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

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

    .line 174
    .local v3, "fileDestPicture":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f5

    .line 175
    sget-object v7, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v8, "3.MoveFileAndPhoto -> if (fileSource.exists()) {"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v4, v2}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 178
    sget-object v7, Lic/buzzebeeslib/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
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

    invoke-static {p0, v7, v8}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 180
    sget-object v7, Lic/buzzebeeslib/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 181
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

    invoke-static {p0, v7, v8}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 184
    :cond_f5
    if-eqz v0, :cond_152

    .line 185
    sget-object v7, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v8, "4.MoveFileAndPhoto -> if (IsMoveFile) {"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_152

    .line 187
    sget-object v7, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    const-string v8, "5.MoveFileAndPhoto -> if (fileSourcePicture.exists()) {"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v5, v3}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 190
    sget-object v7, Lic/buzzebeeslib/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
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

    invoke-static {p0, v7, v8}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 192
    sget-object v7, Lic/buzzebeeslib/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 193
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

    invoke-static {p0, v7, v8}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_152} :catch_153

    .line 201
    .end local v2    # "fileDest":Ljava/io/File;
    .end local v3    # "fileDestPicture":Ljava/io/File;
    .end local v4    # "fileSource":Ljava/io/File;
    .end local v5    # "fileSourcePicture":Ljava/io/File;
    .end local v6    # "folder_Async_Queue":Ljava/io/File;
    :cond_152
    :goto_152
    return-void

    .line 196
    :catch_153
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception|DeleteFileAndPhoto|1"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_152
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 155
    invoke-static {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3()Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 76
    invoke-static {p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->DeleteFileAndPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 104
    invoke-static {p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->DeleteFileLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->showDialogConfirmRetryOrCancel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7()V
    .registers 0

    .prologue
    .line 248
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->CancelNotification()V

    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 125
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_37
    .catchall {:try_start_3 .. :try_end_d} :catchall_45

    .line 126
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

    .line 128
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x400

    :try_start_1a
    new-array v4, v7, [B

    .line 129
    .local v4, "buf":[B
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 132
    :cond_1f
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 133
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_61
    .catchall {:try_start_1a .. :try_end_25} :catchall_5a

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1f

    .line 138
    if-eqz v1, :cond_2e

    .line 139
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 140
    :cond_2e
    if-eqz v3, :cond_33

    .line 141
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_53

    .line 147
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

    .line 134
    :catch_37
    move-exception v5

    .line 138
    .local v5, "e":Ljava/io/IOException;
    :goto_38
    if-eqz v0, :cond_3d

    .line 139
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 140
    :cond_3d
    if-eqz v2, :cond_36

    .line 141
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_36

    .line 142
    :catch_43
    move-exception v5

    .line 143
    goto :goto_36

    .line 136
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_45
    move-exception v7

    .line 138
    :goto_46
    if-eqz v0, :cond_4b

    .line 139
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 140
    :cond_4b
    if-eqz v2, :cond_50

    .line 141
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_51

    .line 145
    :cond_50
    throw v7

    .line 142
    :catch_51
    move-exception v5

    .line 143
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_36

    .line 142
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

    .line 143
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_36

    .line 136
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

    .line 134
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

    .line 52
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 54
    .local v2, "intent":Landroid/content/Intent;
    :try_start_6
    const-string v3, "file_fail"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_27

    .line 58
    :goto_e
    const-string v3, "command"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "command":Ljava/lang/String;
    if-eqz v0, :cond_42

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "retry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 61
    iput-boolean v5, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 62
    iput-boolean v6, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    .line 74
    :goto_26
    return-void

    .line 55
    .end local v0    # "command":Ljava/lang/String;
    :catch_27
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sput-object v3, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;

    goto :goto_e

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "command":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cancel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 64
    iput-boolean v6, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 65
    iput-boolean v5, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    goto :goto_26

    .line 67
    :cond_3d
    iput-boolean v5, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 68
    iput-boolean v5, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    goto :goto_26

    .line 71
    :cond_42
    iput-boolean v5, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    .line 72
    iput-boolean v5, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    goto :goto_26
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 152
    invoke-static {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->copyFile(Ljava/io/File;Ljava/io/File;)Z

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
    .line 205
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    sget v3, Lic/buzzebeeslib/R$drawable;->bz_icon:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    iget-boolean v3, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanRetry:Z

    if-eqz v3, :cond_1e

    .line 210
    const-string v3, "Retry"

    new-instance v4, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$2;-><init>(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    :cond_1e
    iget-boolean v3, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gCanCancel:Z

    if-eqz v3, :cond_2c

    .line 222
    const-string v3, "Cancel"

    new-instance v4, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$3;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$3;-><init>(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    :cond_2c
    const-string v3, "Close"

    new-instance v4, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$4;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$4;-><init>(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 242
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 246
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_3d
    return-void

    .line 243
    :catch_3e
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception|showDialogConfirmRetryOrCancel :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lic/buzzebeeslib/R$layout;->bz_notification_post_async_dialogbox:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->setContentView(I)V

    .line 40
    sput-object p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    .line 42
    invoke-direct {p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->initialParam()V

    .line 44
    new-instance v0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$1;-><init>(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 356
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 357
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 351
    return-void
.end method
