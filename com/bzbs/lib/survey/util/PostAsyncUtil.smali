.class public Lcom/bzbs/lib/survey/util/PostAsyncUtil;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;,
        Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;
    }
.end annotation


# static fields
.field private static final ENUM_POSTASYNC_PROCESS_FAIL:I = 0x2

.field private static final ENUM_POSTASYNC_PROCESS_QUEUE:I = 0x0

.field private static final ENUM_POSTASYNC_PROCESS_SUCCESS:I = 0x1

.field private static final LOGCAT:Ljava/lang/String; = "buzzebees.postasyn"

.field public static LOG_POST_ASYNC:Ljava/lang/String;

.field public static MAP_POSTASYN:Ljava/util/HashMap;

.field private static POSTASYNC_PROCESS:I

.field public static QUEUE_POSTASYNC:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static TASK_CHECKFILE_WORKING:Z

.field private static TASK_POSTASYNC_WORKING:Z

.field private static gCheckFileTask:Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;

.field private static gHandler:Landroid/os/Handler;

.field public static final gIS_SHOW_MESSAGE_FAIL_SIMPLE:Z

.field public static final gIS_SHOW_NOTIFICATION_SUCCESS:Z

.field private static gIntRequestID:I

.field private static gSrtMessageFailSimple:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gSrtMessageFailSimple:Ljava/lang/String;

    .line 90
    sput-boolean v1, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    .line 91
    sput-boolean v1, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TASK_POSTASYNC_WORKING:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gIntRequestID:I

    .line 96
    const-class v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOG_POST_ASYNC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DeleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pFilepath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 218
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DeleteFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 219
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    .line 226
    .end local v1    # "file":Ljava/io/File;
    :cond_27
    :goto_27
    return-void

    .line 223
    :catch_28
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DeleteFile:error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_27
.end method

.method public static LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "stamp_date"    # Z

    .prologue
    .line 116
    return-void
.end method

.method private static MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 16
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pFilepath"    # Ljava/lang/String;
    .param p2, "pPostAsyncProcess"    # I

    .prologue
    const/4 v12, 0x1

    .line 159
    const/4 v0, 0x0

    .line 163
    .local v0, "IsMoveFile":Z
    const/4 v2, 0x0

    .line 164
    .local v2, "fileDest":Ljava/io/File;
    const/4 v4, 0x0

    .line 167
    .local v4, "fileDestPicture":Ljava/io/File;
    :try_start_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, "fileSource":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_photo.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v7, "fileSourcePicture":Ljava/io/File;
    const/4 v10, 0x2

    if-ne p2, v10, :cond_f9

    .line 171
    new-instance v8, Ljava/io/File;

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v8, "folderFail":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_37

    .line 173
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 176
    :cond_37
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_55} :catch_179

    .line 177
    .end local v2    # "fileDest":Ljava/io/File;
    .local v3, "fileDest":Ljava/io/File;
    :try_start_55
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_photo.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_7a} :catch_1c1

    .end local v4    # "fileDestPicture":Ljava/io/File;
    .local v5, "fileDestPicture":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fileDestPicture":Ljava/io/File;
    .restart local v4    # "fileDestPicture":Ljava/io/File;
    move-object v2, v3

    .line 188
    .end local v3    # "fileDest":Ljava/io/File;
    .end local v8    # "folderFail":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 189
    invoke-static {v6, v2}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 190
    if-ne v0, v12, :cond_154

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SUCCESS moveFile:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 196
    :cond_ab
    :goto_ab
    if-ne v0, v12, :cond_d9

    .line 197
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d9

    .line 198
    invoke-static {v7, v4}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveFile:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_d9} :catch_179

    .line 203
    :cond_d9
    if-ne v0, v12, :cond_f8

    .line 205
    :try_start_db
    sget-object v10, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MAP_POSTASYN.remove:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_f8} :catch_197

    .line 214
    .end local v6    # "fileSource":Ljava/io/File;
    .end local v7    # "fileSourcePicture":Ljava/io/File;
    :cond_f8
    :goto_f8
    return-void

    .line 178
    .restart local v6    # "fileSource":Ljava/io/File;
    .restart local v7    # "fileSourcePicture":Ljava/io/File;
    :cond_f9
    if-ne p2, v12, :cond_7c

    .line 179
    :try_start_fb
    new-instance v9, Ljava/io/File;

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v9, "folderSuccess":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_10d

    .line 181
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 184
    :cond_10d
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_12b} :catch_179

    .line 185
    .end local v2    # "fileDest":Ljava/io/File;
    .restart local v3    # "fileDest":Ljava/io/File;
    :try_start_12b
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_photo.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_150} :catch_1c1

    .end local v4    # "fileDestPicture":Ljava/io/File;
    .restart local v5    # "fileDestPicture":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fileDestPicture":Ljava/io/File;
    .restart local v4    # "fileDestPicture":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "fileDest":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    goto/16 :goto_7c

    .line 193
    .end local v9    # "folderSuccess":Ljava/io/File;
    :cond_154
    :try_start_154
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FAIL moveFile:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_177} :catch_179

    goto/16 :goto_ab

    .line 211
    .end local v6    # "fileSource":Ljava/io/File;
    .end local v7    # "fileSourcePicture":Ljava/io/File;
    :catch_179
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    :goto_17a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(Exception|DeleteFileAndPhoto|1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10, v12}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_f8

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "fileSource":Ljava/io/File;
    .restart local v7    # "fileSourcePicture":Ljava/io/File;
    :catch_197
    move-exception v1

    .line 208
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(Exception)MAP_POSTASYN.remove:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1bf} :catch_179

    goto/16 :goto_f8

    .line 211
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fileDest":Ljava/io/File;
    .restart local v3    # "fileDest":Ljava/io/File;
    :catch_1c1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileDest":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    goto :goto_17a
.end method

.method public static PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "pathQueue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/PostAsync/Fail/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "pathQueue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/PostAsync/Queue/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "pathQueue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/PostAsync/Success/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static StartCheckFileTaskXXX(Landroid/content/Context;)V
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 493
    sget-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 494
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    .line 497
    :cond_c
    sget-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gCheckFileTask:Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;

    if-nez v0, :cond_30

    .line 498
    if-eqz p0, :cond_1a

    .line 500
    sget v0, Lcom/bzbs/lib/survey/R$string;->message_post_error_simple:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gSrtMessageFailSimple:Ljava/lang/String;

    .line 502
    :cond_1a
    new-instance v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;

    invoke-direct {v0, p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gCheckFileTask:Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;

    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_31

    .line 506
    sget-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gCheckFileTask:Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 511
    :cond_30
    :goto_30
    return-void

    .line 508
    :cond_31
    sget-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gCheckFileTask:Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_30
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->posting(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/app/NotificationManager;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static/range {p0 .. p6}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->notificationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method public static convertFileToBundle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 15
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrText"    # Ljava/lang/String;
    .param p2, "pFilepath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 420
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v5, "params":Landroid/os/Bundle;
    const-string/jumbo v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 422
    .local v7, "separated":[Ljava/lang/String;
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "picture"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 423
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 424
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_3b
    return-object v5

    .line 426
    :cond_3c
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_photo.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v3, "file_picture":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_98

    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, "data":[B
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 431
    .local v4, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 432
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 433
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_73} :catch_7b

    move-result-object v1

    .line 437
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "myBitmap":Landroid/graphics/Bitmap;
    :goto_74
    const-string/jumbo v8, "picture"

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3b

    .line 434
    :catch_7b
    move-exception v2

    .line 435
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception|convertFileToBundle|1):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_74

    .line 439
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_98
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 441
    .local v6, "selectedImage":Landroid/net/Uri;
    :try_start_a2
    const-string/jumbo v8, "picture"

    invoke-static {p0, v6}, Lcom/bzbs/lib/survey/util/image/Utils;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ac} :catch_ad

    goto :goto_3b

    .line 442
    :catch_ad
    move-exception v2

    .line 443
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception|convertFileToBundle|2):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_3b

    .line 448
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file_picture":Ljava/io/File;
    .end local v6    # "selectedImage":Landroid/net/Uri;
    :cond_cb
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b
.end method

.method public static convertFileToRequestParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;
    .registers 15
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrText"    # Ljava/lang/String;
    .param p2, "pFilepath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 455
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 456
    .local v5, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, "separated":[Ljava/lang/String;
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "picture"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 458
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 459
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :goto_3b
    return-object v5

    .line 461
    :cond_3c
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_photo.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v3, "file_picture":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 463
    const/4 v1, 0x0

    .line 465
    .local v1, "data":[B
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 466
    .local v4, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 468
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_73} :catch_80

    move-result-object v1

    .line 472
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "myBitmap":Landroid/graphics/Bitmap;
    :goto_74
    const-string/jumbo v8, "source"

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_3b

    .line 469
    :catch_80
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception|convertFileToRequestParams|1):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_74

    .line 474
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9d
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 475
    .local v6, "selectedImage":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 477
    .restart local v1    # "data":[B
    :try_start_a8
    invoke-static {p0, v6}, Lcom/bzbs/lib/survey/util/image/Utils;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v1

    .line 478
    const-string/jumbo v8, "source"

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b7} :catch_b8

    goto :goto_3b

    .line 479
    :catch_b8
    move-exception v2

    .line 480
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception|convertFileToRequestParams|2):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_3b

    .line 485
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file_picture":Ljava/io/File;
    .end local v6    # "selectedImage":Landroid/net/Uri;
    :cond_d6
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 123
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_3b
    .catchall {:try_start_3 .. :try_end_d} :catchall_49

    .line 124
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

    .line 126
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x400

    :try_start_1a
    new-array v4, v7, [B

    .line 127
    .local v4, "buf":[B
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 130
    :cond_1f
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 131
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_61
    .catchall {:try_start_1a .. :try_end_25} :catchall_5a

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1f

    .line 136
    if-eqz v1, :cond_2e

    .line 137
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 138
    :cond_2e
    if-eqz v3, :cond_33

    .line 139
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_37

    .line 145
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

    .line 140
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buf":[B
    :catch_37
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 141
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_36

    .line 132
    .end local v4    # "buf":[B
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3b
    move-exception v5

    .line 136
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_3c
    if-eqz v0, :cond_41

    .line 137
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 138
    :cond_41
    if-eqz v2, :cond_36

    .line 139
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_46} :catch_47

    goto :goto_36

    .line 140
    :catch_47
    move-exception v5

    .line 141
    goto :goto_36

    .line 135
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v7

    .line 136
    :goto_4a
    if-eqz v0, :cond_4f

    .line 137
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 138
    :cond_4f
    if-eqz v2, :cond_54

    .line 139
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_54} :catch_55

    .line 141
    :cond_54
    throw v7

    .line 140
    :catch_55
    move-exception v5

    .line 141
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_36

    .line 135
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_57
    move-exception v7

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4a

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
    goto :goto_4a

    .line 132
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_5e
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3c

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
    goto :goto_3c
.end method

.method public static getFileType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 398
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "file":Ljava/io/File;
    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 403
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_50

    .line 404
    const-string/jumbo v4, "{type}=Bundle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 405
    const-string/jumbo v4, "Bundle"

    .line 416
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :goto_21
    return-object v4

    .line 406
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_22
    const-string/jumbo v4, "{type}=RequestParams"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 407
    const-string/jumbo v4, "RequestParams"

    goto :goto_21

    .line 409
    :cond_2f
    const-string/jumbo v4, ""
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_32} :catch_33

    goto :goto_21

    .line 412
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_33
    move-exception v1

    .line 413
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(IOException|getFileType):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 416
    .end local v1    # "e":Ljava/io/IOException;
    :cond_50
    const-string/jumbo v4, ""

    goto :goto_21
.end method

.method private static final grabAsSingleString(Ljava/io/File;)Ljava/lang/String;
    .registers 11
    .param p0, "fileToUse"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 591
    const/4 v4, 0x0

    .line 592
    .local v4, "theReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 595
    .local v2, "returnString":Ljava/lang/String;
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_42
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_49
    .catchall {:try_start_2 .. :try_end_c} :catchall_44

    .line 596
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .local v5, "theReader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 598
    .local v0, "charArray":[C
    :try_start_d
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_25

    .line 599
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "The file is larger than int max = 2147483647"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_20} :catch_61
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_20} :catch_5e
    .catchall {:try_start_d .. :try_end_20} :catchall_5b

    .line 614
    :goto_20
    :try_start_20
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_3c

    move-object v4, v5

    .line 620
    .end local v0    # "charArray":[C
    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    :goto_24
    return-object v2

    .line 601
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v0    # "charArray":[C
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [C

    .line 604
    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/BufferedReader;->read([CII)I

    .line 605
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_3a} :catch_61
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3a} :catch_5e
    .catchall {:try_start_25 .. :try_end_3a} :catchall_5b

    .end local v2    # "returnString":Ljava/lang/String;
    .local v3, "returnString":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "returnString":Ljava/lang/String;
    .restart local v2    # "returnString":Ljava/lang/String;
    goto :goto_20

    .line 615
    :catch_3c
    move-exception v1

    .line 616
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 618
    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_24

    .line 608
    .end local v0    # "charArray":[C
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_42
    move-exception v1

    .line 609
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_43
    :try_start_43
    throw v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 613
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catchall_44
    move-exception v6

    .line 614
    :goto_45
    :try_start_45
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_56

    .line 617
    :goto_48
    throw v6

    .line 610
    :catch_49
    move-exception v1

    .line 611
    .local v1, "ex":Ljava/io/IOException;
    :goto_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_44

    .line 614
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_24

    .line 615
    :catch_51
    move-exception v1

    .line 616
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 615
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_56
    move-exception v1

    .line 616
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 613
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v0    # "charArray":[C
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catchall_5b
    move-exception v6

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_45

    .line 610
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catch_5e
    move-exception v1

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 608
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catch_61
    move-exception v1

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_43
.end method

.method private static isSDMounted()Z
    .registers 2

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

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

.method private static notificationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 19
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrPageHeader"    # Ljava/lang/String;
    .param p2, "pStrMessage"    # Ljava/lang/String;
    .param p3, "pIntPAGE_MODE"    # I
    .param p4, "pIntNotification_posting_number"    # I
    .param p5, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p6, "pfilepath"    # Ljava/lang/String;

    .prologue
    .line 1054
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v4, "file":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1057
    .local v5, "fileFail":Ljava/lang/String;
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1058
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cancel Notification number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1061
    const-string/jumbo v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "pNotificationManager":Landroid/app/NotificationManager;
    check-cast p5, Landroid/app/NotificationManager;

    .line 1063
    .restart local p5    # "pNotificationManager":Landroid/app/NotificationManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcom/bzbs/lib/survey/R$string;->my_app_buzzebee:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": fail !"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1065
    .local v8, "tickerText":Ljava/lang/String;
    sget v6, Lcom/bzbs/lib/survey/R$drawable;->bz_icon_noti:I

    .line 1067
    .local v6, "icon":I
    new-instance v7, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v6, v8, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1068
    .local v7, "notification":Landroid/app/Notification;
    iget v9, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v7, Landroid/app/Notification;->flags:I

    .line 1069
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "create Notification:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1080
    iget v9, v7, Landroid/app/Notification;->number:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Landroid/app/Notification;->number:I

    .line 1085
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1088
    .local v2, "IntNotification_posting_number":I
    :try_start_ac
    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1089
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify Notification number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c9} :catch_ca

    .line 1093
    :goto_c9
    return-void

    .line 1090
    :catch_ca
    move-exception v3

    .line 1091
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v9, "error:pNotificationManager.notify(IntNotification_posting_number, notification);"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_c9
.end method

.method private static notificationSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 15
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrPageHeader"    # Ljava/lang/String;
    .param p2, "pStrMessage"    # Ljava/lang/String;
    .param p3, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p4, "pfilepath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 1020
    const-string/jumbo v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "pNotificationManager":Landroid/app/NotificationManager;
    check-cast p3, Landroid/app/NotificationManager;

    .line 1022
    .restart local p3    # "pNotificationManager":Landroid/app/NotificationManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/bzbs/lib/survey/R$string;->my_app_buzzebee:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":successfully"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1024
    .local v5, "tickerText":Ljava/lang/String;
    sget v3, Lcom/bzbs/lib/survey/R$drawable;->bz_icon_noti:I

    .line 1026
    .local v3, "icon":I
    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1027
    .local v4, "notification":Landroid/app/Notification;
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 1028
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create Notification:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1039
    iget v6, v4, Landroid/app/Notification;->number:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/Notification;->number:I

    .line 1043
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1046
    .local v0, "IntNotification_posting_number":I
    :try_start_70
    invoke-virtual {p3, v0, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notify Notification number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_8b} :catch_8c

    .line 1051
    :goto_8b
    return-void

    .line 1048
    :catch_8c
    move-exception v1

    .line 1049
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "error:pNotificationManager.notify(IntNotification_posting_number, notification);"

    invoke-static {p0, v6, v9}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_8b
.end method

.method private static posting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 38
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "posting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 626
    const-string/jumbo v6, ""

    .line 627
    .local v6, "StrPageHeaderPost":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 628
    .local v7, "StrMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 629
    .local v8, "IntPAGE_MODE":I
    const/4 v9, 0x0

    .line 631
    .local v9, "IntNotification_posting_number":I
    const/4 v10, 0x0

    .line 633
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v27, ""

    .line 634
    .local v27, "strLine":Ljava/lang/String;
    const-string/jumbo v29, ""

    .line 635
    .local v29, "strText":Ljava/lang/String;
    const-string/jumbo v30, ""

    .line 636
    .local v30, "strType":Ljava/lang/String;
    const-string/jumbo v31, ""

    .line 638
    .local v31, "strURL":Ljava/lang/String;
    const/16 v20, 0x0

    .line 639
    .local v20, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    .local v17, "file":Ljava/io/File;
    const-string/jumbo v28, ""

    .line 644
    .local v28, "strSumLine":Ljava/lang/String;
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 645
    .local v23, "paramsBundle":Landroid/os/Bundle;
    new-instance v24, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v24 .. v24}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 648
    .local v24, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    :try_start_49
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 650
    .local v13, "br":Ljava/io/BufferedReader;
    :cond_55
    :goto_55
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_346

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 654
    const-string/jumbo v4, "VAT_POST_VAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "strLine "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string/jumbo v4, "VAT_POST_VAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "strSumLine "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string/jumbo v4, "@@@@"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_55

    .line 659
    const-string/jumbo v4, "@@@@"

    const-string/jumbo v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 664
    const-string/jumbo v4, "="

    const/4 v5, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 666
    .local v26, "separated":[Ljava/lang/String;
    const-string/jumbo v4, "VAT_POST_VAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "separated[0].trim() "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x0

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v4, "VAT_POST_VAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "separated[1].trim() "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x1

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string/jumbo v28, ""
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_116} :catch_327

    .line 671
    const/4 v4, 0x0

    :try_start_117
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{type}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 672
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_12c} :catch_561
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_12c} :catch_327

    move-result-object v30

    .line 679
    :cond_12d
    :goto_12d
    const/4 v4, 0x0

    :try_start_12e
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{url}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 680
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_143} :catch_581
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_143} :catch_327

    move-result-object v31

    .line 687
    :cond_144
    :goto_144
    const/4 v4, 0x0

    :try_start_145
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{header}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 688
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_15a} :catch_5a1
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_15a} :catch_327

    move-result-object v6

    .line 695
    :cond_15b
    :goto_15b
    const/4 v4, 0x0

    :try_start_15c
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{message}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_188

    .line 696
    const/4 v4, 0x1

    aget-object v7, v26, v4

    .line 697
    const-string/jumbo v4, "VAT_POST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StrMessage "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_188} :catch_5c1
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_188} :catch_327

    .line 704
    :cond_188
    :goto_188
    const/4 v4, 0x0

    :try_start_189
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{pagemode}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    .line 705
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b7

    .line 706
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/lib/survey/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1b6} :catch_5e1
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_1b6} :catch_327

    move-result v8

    .line 714
    :cond_1b7
    :goto_1b7
    :try_start_1b7
    const-string/jumbo v4, "Bundle"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27c

    .line 715
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "picture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e2

    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d2

    .line 716
    :cond_1e2
    new-instance v18, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_photo.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    .local v18, "file_picture":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 718
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_643

    .line 719
    const-string/jumbo v4, "case:camera"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_233} :catch_622
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_233} :catch_327

    .line 720
    const/4 v14, 0x0

    .line 722
    .local v14, "data":[B
    :try_start_234
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 723
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 724
    .local v12, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 725
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_24d} :catch_601
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_24d} :catch_327

    move-result-object v14

    .line 729
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_24e
    const/4 v4, 0x0

    :try_start_24f
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "paramsBundle.putByteArray:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_27c} :catch_622
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_27c} :catch_327

    .line 766
    .end local v14    # "data":[B
    .end local v18    # "file_picture":Ljava/io/File;
    :cond_27c
    :goto_27c
    :try_start_27c
    const-string/jumbo v4, "RequestParams"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 767
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "source"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76b

    .line 768
    new-instance v18, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_photo.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .restart local v18    # "file_picture":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_27c .. :try_end_2b7} :catch_306
    .catch Ljava/io/IOException; {:try_start_27c .. :try_end_2b7} :catch_327

    move-result v4

    if-eqz v4, :cond_55

    .line 770
    const/4 v14, 0x0

    .line 772
    .restart local v14    # "data":[B
    :try_start_2bb
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 773
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 774
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 775
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2d4} :catch_74a
    .catch Ljava/io/IOException; {:try_start_2bb .. :try_end_2d4} :catch_327

    move-result-object v14

    .line 779
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_2d5
    :try_start_2d5
    const-string/jumbo v4, "source"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "paramsRequestParams.put:source["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_304
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_304} :catch_306
    .catch Ljava/io/IOException; {:try_start_2d5 .. :try_end_304} :catch_327

    goto/16 :goto_55

    .line 795
    .end local v14    # "data":[B
    .end local v18    # "file_picture":Ljava/io/File;
    :catch_306
    move-exception v15

    .line 796
    .local v15, "e":Ljava/lang/Exception;
    :try_start_307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error-5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_325
    .catch Ljava/io/IOException; {:try_start_307 .. :try_end_325} :catch_327

    goto/16 :goto_55

    .line 802
    .end local v13    # "br":Ljava/io/BufferedReader;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v26    # "separated":[Ljava/lang/String;
    :catch_327
    move-exception v15

    .line 803
    .local v15, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error-6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 807
    .end local v15    # "e":Ljava/io/IOException;
    :cond_346
    :try_start_346
    sget v19, Lcom/bzbs/lib/survey/R$drawable;->bz_icon_noti:I

    .line 808
    .local v19, "icon":I
    new-instance v22, Landroid/app/Notification;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/bzbs/lib/survey/R$string;->my_app_buzzebee:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-wide/from16 v2, v34

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 810
    .local v22, "notificationOngoing":Landroid/app/Notification;
    move-object/from16 v0, v22

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v22

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 811
    const-string/jumbo v4, "create Notification:FLAG_ONGOING_EVENT"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 817
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set Notification number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 821
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v11, Lcom/bzbs/lib/survey/R$layout;->bz_post_async_notification:I

    invoke-direct {v4, v5, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    iput-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 823
    if-eqz v20, :cond_816

    .line 824
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/bzbs/lib/survey/R$id;->imgThumb:I

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 826
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/bzbs/lib/survey/R$id;->imgThumb:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v33, Lcom/bzbs/lib/survey/R$drawable;->bz_icon_post_status_no_photo:I

    move/from16 v0, v33

    invoke-static {v11, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set Notification image:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 832
    :goto_438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 833
    .local v32, "title":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/bzbs/lib/survey/R$id;->tvTitle:I

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set Notification title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 836
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/bzbs/lib/survey/R$id;->imgBuzzeBees:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, v19

    invoke-static {v11, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 837
    const-string/jumbo v4, "set notificationOngoing.contentView.setImageViewBitmap"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 839
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/NotificationManager;

    move-object v10, v0

    .line 840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IntNotification_posting_number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_4ba
    .catch Ljava/lang/Exception; {:try_start_346 .. :try_end_4ba} :catch_823

    .line 842
    :try_start_4ba
    move-object/from16 v0, v22

    invoke-virtual {v10, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notify Notification number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_4d9
    .catch Ljava/lang/Exception; {:try_start_4ba .. :try_end_4d9} :catch_850

    .line 851
    .end local v19    # "icon":I
    .end local v22    # "notificationOngoing":Landroid/app/Notification;
    .end local v32    # "title":Ljava/lang/String;
    :goto_4d9
    invoke-static {}, Lcom/bzbs/lib/survey/util/async/PostEvents;->onPostBegin()V

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LibEnum.ENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 855
    const/16 v4, 0x18

    if-ne v8, v4, :cond_535

    .line 856
    new-instance v21, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct/range {v21 .. v21}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 857
    .local v21, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v4, 0x1d4c0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 858
    new-instance v4, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    move-object/from16 v5, p0

    move-object/from16 v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 859
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "myClient.post:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 862
    .end local v21    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_535
    :goto_535
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_85c

    .line 864
    const-wide/16 v4, 0x3e8

    :try_start_53d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_540
    .catch Ljava/lang/Exception; {:try_start_53d .. :try_end_540} :catch_541

    goto :goto_535

    .line 865
    :catch_541
    move-exception v15

    .line 866
    .local v15, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error-7:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_535

    .line 674
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v13    # "br":Ljava/io/BufferedReader;
    .restart local v26    # "separated":[Ljava/lang/String;
    :catch_561
    move-exception v15

    .line 675
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error:not found {type}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_12d

    .line 682
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_581
    move-exception v15

    .line 683
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error:not found {url}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_144

    .line 690
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_5a1
    move-exception v15

    .line 691
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error:not found {header}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_15b

    .line 699
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_5c1
    move-exception v15

    .line 700
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error:not found {message}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_188

    .line 709
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_5e1
    move-exception v15

    .line 710
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error:not found {pagemode}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_5ff
    .catch Ljava/io/IOException; {:try_start_562 .. :try_end_5ff} :catch_327

    goto/16 :goto_1b7

    .line 726
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v14    # "data":[B
    .restart local v18    # "file_picture":Ljava/io/File;
    :catch_601
    move-exception v15

    .line 727
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error-1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_620
    .catch Ljava/lang/Exception; {:try_start_602 .. :try_end_620} :catch_622
    .catch Ljava/io/IOException; {:try_start_602 .. :try_end_620} :catch_327

    goto/16 :goto_24e

    .line 761
    .end local v14    # "data":[B
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "file_picture":Ljava/io/File;
    :catch_622
    move-exception v15

    .line 762
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error-3:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_641
    .catch Ljava/io/IOException; {:try_start_623 .. :try_end_641} :catch_327

    goto/16 :goto_27c

    .line 732
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v18    # "file_picture":Ljava/io/File;
    :cond_643
    :try_start_643
    const-string/jumbo v4, "case:browse"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 733
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27c

    .line 734
    const/4 v4, 0x1

    aget-object v4, v26, v4

    if-eqz v4, :cond_27c

    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27c

    .line 735
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_671
    .catch Ljava/lang/Exception; {:try_start_643 .. :try_end_671} :catch_622
    .catch Ljava/io/IOException; {:try_start_643 .. :try_end_671} :catch_327

    move-result-object v25

    .line 737
    .local v25, "selectedImage":Landroid/net/Uri;
    const/4 v14, 0x0

    .line 738
    .restart local v14    # "data":[B
    :try_start_673
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/image/Utils;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v14

    .line 739
    const/4 v4, 0x0

    array-length v5, v14

    invoke-static {v14, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 740
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "paramsBundle.putByteArray:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_6af
    .catch Ljava/lang/Exception; {:try_start_673 .. :try_end_6af} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_673 .. :try_end_6af} :catch_327

    goto/16 :goto_27c

    .line 742
    :catch_6b1
    move-exception v15

    .line 743
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_6b2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error-2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_27c

    .line 749
    .end local v14    # "data":[B
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "file_picture":Ljava/io/File;
    .end local v25    # "selectedImage":Landroid/net/Uri;
    :cond_6d2
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27c

    .line 750
    const/4 v4, 0x0

    aget-object v4, v26, v4

    if-eqz v4, :cond_27c

    const/4 v4, 0x1

    aget-object v4, v26, v4

    if-eqz v4, :cond_27c

    .line 751
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27c

    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27c

    .line 753
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v26, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "paramsBundle.putString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v26, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_748
    .catch Ljava/lang/Exception; {:try_start_6b2 .. :try_end_748} :catch_622
    .catch Ljava/io/IOException; {:try_start_6b2 .. :try_end_748} :catch_327

    goto/16 :goto_27c

    .line 776
    .restart local v14    # "data":[B
    .restart local v18    # "file_picture":Ljava/io/File;
    :catch_74a
    move-exception v15

    .line 777
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_74b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error-4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2d5

    .line 783
    .end local v14    # "data":[B
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "file_picture":Ljava/io/File;
    :cond_76b
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    .line 784
    const/4 v4, 0x0

    aget-object v4, v26, v4

    if-eqz v4, :cond_55

    const/4 v4, 0x1

    aget-object v4, v26, v4

    if-eqz v4, :cond_55

    .line 785
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 787
    const-string/jumbo v4, "VAT_POST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "separated[0].trim() "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x0

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " separated[1].trim() "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x1

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v26, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "paramsRequestParams.put:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v26, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_814
    .catch Ljava/lang/Exception; {:try_start_74b .. :try_end_814} :catch_306
    .catch Ljava/io/IOException; {:try_start_74b .. :try_end_814} :catch_327

    goto/16 :goto_55

    .line 829
    .end local v13    # "br":Ljava/io/BufferedReader;
    .end local v26    # "separated":[Ljava/lang/String;
    .restart local v19    # "icon":I
    .restart local v22    # "notificationOngoing":Landroid/app/Notification;
    :cond_816
    :try_start_816
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/bzbs/lib/survey/R$id;->imgThumb:I

    const/16 v11, 0x8

    invoke-virtual {v4, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_821
    .catch Ljava/lang/Exception; {:try_start_816 .. :try_end_821} :catch_823

    goto/16 :goto_438

    .line 847
    .end local v19    # "icon":I
    .end local v22    # "notificationOngoing":Landroid/app/Notification;
    :catch_823
    move-exception v15

    .line 848
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error-7:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_4d9

    .line 844
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v19    # "icon":I
    .restart local v22    # "notificationOngoing":Landroid/app/Notification;
    .restart local v32    # "title":Ljava/lang/String;
    :catch_850
    move-exception v16

    .line 845
    .local v16, "ex":Ljava/lang/Exception;
    :try_start_851
    const-string/jumbo v4, "error:notificationManager.notify(IntNotification_posting_number, notificationOngoing);"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_85a
    .catch Ljava/lang/Exception; {:try_start_851 .. :try_end_85a} :catch_823

    goto/16 :goto_4d9

    .line 869
    .end local v16    # "ex":Ljava/lang/Exception;
    .end local v19    # "icon":I
    .end local v22    # "notificationOngoing":Landroid/app/Notification;
    .end local v32    # "title":Ljava/lang/String;
    :cond_85c
    return-void
.end method

.method public static saveMessageErrorToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "messageError"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveMessageErrorToFile:filepath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",messageError="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 384
    const/4 v1, 0x0

    .line 386
    .local v1, "fileDestLog":Ljava/io/File;
    :try_start_24
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v3, "fileSource":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4e} :catch_5f

    .line 388
    .end local v1    # "fileDestLog":Ljava/io/File;
    .local v2, "fileDestLog":Ljava/io/File;
    :try_start_4e
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 389
    .local v4, "writer":Ljava/io/FileWriter;
    invoke-virtual {v4, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 390
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 391
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5d} :catch_7c

    move-object v1, v2

    .line 395
    .end local v2    # "fileDestLog":Ljava/io/File;
    .end local v3    # "fileSource":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "fileDestLog":Ljava/io/File;
    :goto_5e
    return-void

    .line 392
    :catch_5f
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    :goto_60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveMessageErrorToFile:Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_5e

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileDestLog":Ljava/io/File;
    .restart local v2    # "fileDestLog":Ljava/io/File;
    .restart local v3    # "fileSource":Ljava/io/File;
    :catch_7c
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileDestLog":Ljava/io/File;
    .restart local v1    # "fileDestLog":Ljava/io/File;
    goto :goto_60
.end method

.method public static saveParamsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 19
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pageHeader"    # Ljava/lang/String;
    .param p4, "filepath"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "pagemode"    # I
    .param p7, "params"    # Landroid/os/Bundle;

    .prologue
    .line 230
    :try_start_0
    const-string/jumbo v8, "PostAsyncUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "filepath "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v8, "PostAsyncUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, "folderQueue":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_48

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 238
    :cond_48
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v3, "gpxfile":Ljava/io/File;
    new-instance v7, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 241
    .local v7, "writer":Ljava/io/FileWriter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{type}="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{url}="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{header}="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{message}="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{pagemode}="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 247
    if-eqz p7, :cond_1a4

    .line 248
    invoke-virtual/range {p7 .. p7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 249
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11a
    :goto_11a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a4

    .line 250
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 251
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "value":Ljava/lang/String;
    if-eqz v5, :cond_11a

    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11a

    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 255
    const-string/jumbo v8, "VAT_saveParamsToFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "key : = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " value := "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_185} :catch_186

    goto :goto_11a

    .line 267
    .end local v2    # "folderQueue":Ljava/io/File;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "writer":Ljava/io/FileWriter;
    :catch_186
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception|saveParamsToFile):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 270
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a3
    return-void

    .line 260
    .restart local v2    # "folderQueue":Ljava/io/File;
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :cond_1a4
    :try_start_1a4
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V

    .line 261
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 263
    sget-object v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "save-put:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 265
    sget-object v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "save-enq:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1f8} :catch_186

    goto :goto_1a3
.end method

.method public static saveParamsToXMLSerializer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 20
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pageHeader"    # Ljava/lang/String;
    .param p4, "filepath"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "pagemode"    # I
    .param p7, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, "gpxfile":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 294
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 295
    .local v8, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 297
    .local v7, "writer":Ljava/io/StringWriter;
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 299
    const-string/jumbo v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 301
    const-string/jumbo v9, ""

    const-string/jumbo v10, "post"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    const-string/jumbo v9, ""

    const-string/jumbo v10, "type"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    invoke-interface {v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    const-string/jumbo v9, ""

    const-string/jumbo v10, "type"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    const-string/jumbo v9, ""

    const-string/jumbo v10, "url"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    invoke-interface {v8, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    const-string/jumbo v9, ""

    const-string/jumbo v10, "url"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const-string/jumbo v9, ""

    const-string/jumbo v10, "header"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    invoke-interface {v8, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    const-string/jumbo v9, ""

    const-string/jumbo v10, "header"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const-string/jumbo v9, ""

    const-string/jumbo v10, "message"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    move-object/from16 v0, p5

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string/jumbo v9, ""

    const-string/jumbo v10, "message"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    const-string/jumbo v9, ""

    const-string/jumbo v10, "pagemode"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/lib/survey/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    const-string/jumbo v9, ""

    const-string/jumbo v10, "pagemode"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    if-eqz p7, :cond_11a

    .line 336
    const-string/jumbo v9, ""

    const-string/jumbo v10, "params"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    invoke-virtual/range {p7 .. p7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 339
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c6
    :goto_c6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_111

    .line 340
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 341
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "value":Ljava/lang/String;
    if-eqz v5, :cond_c6

    const-string/jumbo v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c6

    .line 345
    const-string/jumbo v9, ""

    invoke-interface {v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    const-string/jumbo v9, ""

    invoke-interface {v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f2} :catch_f3

    goto :goto_c6

    .line 375
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "writer":Ljava/io/StringWriter;
    .end local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_f3
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(Exception|saveParamsToFile):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_110
    return-void

    .line 355
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "writer":Ljava/io/StringWriter;
    .restart local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_111
    :try_start_111
    const-string/jumbo v9, ""

    const-string/jumbo v10, "params"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11a
    const-string/jumbo v9, ""

    const-string/jumbo v10, "post"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 364
    const-string/jumbo v9, "VAT_POST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writer.toString() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 368
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 370
    sget-object v9, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "save-put:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 372
    sget-object v9, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "save-enq:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_19f} :catch_f3

    goto/16 :goto_110
.end method
