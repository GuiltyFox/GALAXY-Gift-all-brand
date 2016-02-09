.class public Lcom/samsung/privilege/util/PostAsyncUtil;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;,
        Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;,
        Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;,
        Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;,
        Lcom/samsung/privilege/util/PostAsyncUtil$StatusPostListener;
    }
.end annotation


# static fields
.field private static final ENUM_POSTASYNC_PROCESS_FAIL:I = 0x2

.field private static final ENUM_POSTASYNC_PROCESS_QUEUE:I = 0x0

.field private static final ENUM_POSTASYNC_PROCESS_SUCCESS:I = 0x1

.field private static final LOGCAT:Ljava/lang/String; = "gift.postasyn"

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

.field private static gCheckFileTask:Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;

.field private static gContext:Landroid/content/Context;

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

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/samsung/privilege/util/PostAsyncUtil;->gSrtMessageFailSimple:Ljava/lang/String;

    .line 139
    sput-boolean v1, Lcom/samsung/privilege/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    .line 140
    sput-boolean v1, Lcom/samsung/privilege/util/PostAsyncUtil;->TASK_POSTASYNC_WORKING:Z

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/privilege/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/privilege/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/privilege/util/PostAsyncUtil;->gIntRequestID:I

    .line 144
    const-class v0, Lcom/samsung/privilege/util/PostAsyncUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    .line 145
    const-string v0, ""

    sput-object v0, Lcom/samsung/privilege/util/PostAsyncUtil;->LOG_POST_ASYNC:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DeleteFile(Ljava/lang/String;)V
    .registers 6
    .param p0, "pFilepath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 268
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeleteFile:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 269
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 271
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    .line 276
    .end local v1    # "file":Ljava/io/File;
    :cond_22
    :goto_22
    return-void

    .line 273
    :catch_23
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeleteFile:error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_22
.end method

.method public static LOGCONSOLE(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "stamp_date"    # Z

    .prologue
    .line 158
    return-void
.end method

.method private static MoveFileAndPhoto(Ljava/lang/String;I)V
    .registers 15
    .param p0, "pFilepath"    # Ljava/lang/String;
    .param p1, "pPostAsyncProcess"    # I

    .prologue
    const/4 v12, 0x1

    .line 209
    const/4 v0, 0x0

    .line 213
    .local v0, "IsMoveFile":Z
    const/4 v2, 0x0

    .line 214
    .local v2, "fileDest":Ljava/io/File;
    const/4 v4, 0x0

    .line 217
    .local v4, "fileDestPicture":Ljava/io/File;
    :try_start_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v6, "fileSource":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_photo.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v7, "fileSourcePicture":Ljava/io/File;
    const/4 v10, 0x2

    if-ne p1, v10, :cond_ec

    .line 221
    new-instance v8, Ljava/io/File;

    sget-object v10, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v8, "folderFail":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_38

    .line 223
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 226
    :cond_38
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_58} :catch_16b

    .line 227
    .end local v2    # "fileDest":Ljava/io/File;
    .local v3, "fileDest":Ljava/io/File;
    :try_start_58
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_photo.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7e} :catch_1a8

    .end local v4    # "fileDestPicture":Ljava/io/File;
    .local v5, "fileDestPicture":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fileDestPicture":Ljava/io/File;
    .restart local v4    # "fileDestPicture":Ljava/io/File;
    move-object v2, v3

    .line 238
    .end local v3    # "fileDest":Ljava/io/File;
    .end local v8    # "folderFail":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    :cond_80
    :goto_80
    :try_start_80
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a9

    .line 239
    invoke-static {v6, v2}, Lcom/samsung/privilege/util/PostAsyncUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 240
    if-eqz v0, :cond_14c

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SUCCESS moveFile:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 246
    :cond_a9
    :goto_a9
    if-eqz v0, :cond_d1

    .line 247
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d1

    .line 248
    invoke-static {v7, v4}, Lcom/samsung/privilege/util/PostAsyncUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 249
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "moveFile:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_d1} :catch_16b

    .line 253
    :cond_d1
    if-eqz v0, :cond_eb

    .line 255
    :try_start_d3
    sget-object v10, Lcom/samsung/privilege/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v10, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MAP_POSTASYN.remove:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_eb} :catch_184

    .line 264
    .end local v6    # "fileSource":Ljava/io/File;
    .end local v7    # "fileSourcePicture":Ljava/io/File;
    :cond_eb
    :goto_eb
    return-void

    .line 228
    .restart local v6    # "fileSource":Ljava/io/File;
    .restart local v7    # "fileSourcePicture":Ljava/io/File;
    :cond_ec
    if-ne p1, v12, :cond_80

    .line 229
    :try_start_ee
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v9, "folderSuccess":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_102

    .line 231
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 234
    :cond_102
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_122} :catch_16b

    .line 235
    .end local v2    # "fileDest":Ljava/io/File;
    .restart local v3    # "fileDest":Ljava/io/File;
    :try_start_122
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_photo.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_148} :catch_1a8

    .end local v4    # "fileDestPicture":Ljava/io/File;
    .restart local v5    # "fileDestPicture":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fileDestPicture":Ljava/io/File;
    .restart local v4    # "fileDestPicture":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "fileDest":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    goto/16 :goto_80

    .line 243
    .end local v9    # "folderSuccess":Ljava/io/File;
    :cond_14c
    :try_start_14c
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "FAIL moveFile:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_169} :catch_16b

    goto/16 :goto_a9

    .line 261
    .end local v6    # "fileSource":Ljava/io/File;
    .end local v7    # "fileSourcePicture":Ljava/io/File;
    :catch_16b
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    :goto_16c
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(Exception|DeleteFileAndPhoto|1"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_eb

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "fileSource":Ljava/io/File;
    .restart local v7    # "fileSourcePicture":Ljava/io/File;
    :catch_184
    move-exception v1

    .line 258
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_185
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(Exception)MAP_POSTASYN.remove:["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1a6} :catch_16b

    goto/16 :goto_eb

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fileDest":Ljava/io/File;
    .restart local v3    # "fileDest":Ljava/io/File;
    :catch_1a8
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileDest":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    goto :goto_16c
.end method

.method public static PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_12
    invoke-static {p0}, Lcom/samsung/privilege/util/PostAsyncUtil;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "pathQueue":Ljava/lang/String;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/PostAsync/Fail/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    .end local v0    # "pathQueue":Ljava/lang/String;
    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_12
    invoke-static {p0}, Lcom/samsung/privilege/util/PostAsyncUtil;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "pathQueue":Ljava/lang/String;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/PostAsync/Queue/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 90
    .end local v0    # "pathQueue":Ljava/lang/String;
    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_12
    invoke-static {p0}, Lcom/samsung/privilege/util/PostAsyncUtil;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "pathQueue":Ljava/lang/String;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/PostAsync/Success/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    .end local v0    # "pathQueue":Ljava/lang/String;
    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static StartCheckFileTask(Landroid/content/Context;)V
    .registers 6
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 543
    sget-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    .line 544
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    .line 547
    :cond_c
    sget-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->gCheckFileTask:Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;

    if-nez v1, :cond_36

    .line 548
    if-eqz p0, :cond_1f

    .line 549
    sput-object p0, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    .line 552
    :try_start_14
    sget-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->gSrtMessageFailSimple:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_37

    .line 557
    :cond_1f
    :goto_1f
    new-instance v1, Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;-><init>(Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;)V

    sput-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->gCheckFileTask:Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;

    .line 560
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_51

    .line 561
    sget-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->gCheckFileTask:Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    :cond_36
    :goto_36
    return-void

    .line 553
    :catch_37
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartCheckFileTask|Exception := "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    sget-object v1, Lcom/samsung/privilege/util/PostAsyncUtil;->gCheckFileTask:Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_36
.end method

.method static synthetic access$0()Landroid/content/Context;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .registers 1

    .prologue
    .line 139
    sput-boolean p0, Lcom/samsung/privilege/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    return-void
.end method

.method static synthetic access$2()Z
    .registers 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/samsung/privilege/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    return v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1026
    invoke-static {p0}, Lcom/samsung/privilege/util/PostAsyncUtil;->posting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 266
    invoke-static {p0}, Lcom/samsung/privilege/util/PostAsyncUtil;->DeleteFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;I)V
    .registers 2

    .prologue
    .line 208
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2161
    invoke-static/range {p0 .. p5}, Lcom/samsung/privilege/util/PostAsyncUtil;->notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8()Ljava/lang/String;
    .registers 1

    .prologue
    .line 144
    sget-object v0, Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static convertFileToBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 14
    .param p0, "pStrText"    # Ljava/lang/String;
    .param p1, "pFilepath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 470
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v5, "params":Landroid/os/Bundle;
    const-string v8, "="

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, "separated":[Ljava/lang/String;
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "picture"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bd

    .line 473
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 474
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_38
    return-object v5

    .line 476
    :cond_39
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_photo.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v3, "file_picture":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 478
    const/4 v1, 0x0

    .line 480
    .local v1, "data":[B
    :try_start_58
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 481
    .local v4, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 482
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 483
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6f} :catch_76

    move-result-object v1

    .line 487
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "myBitmap":Landroid/graphics/Bitmap;
    :goto_70
    const-string v8, "picture"

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_38

    .line 484
    :catch_76
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception|convertFileToBundle|1):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_70

    .line 489
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8e
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 491
    .local v6, "selectedImage":Landroid/net/Uri;
    :try_start_98
    const-string v8, "picture"

    sget-object v9, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/facebook/android/Utility;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a3} :catch_a4

    goto :goto_38

    .line 492
    :catch_a4
    move-exception v2

    .line 493
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception|convertFileToBundle|2):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_38

    .line 498
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file_picture":Ljava/io/File;
    .end local v6    # "selectedImage":Landroid/net/Uri;
    :cond_bd
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38
.end method

.method public static convertFileToRequestParams(Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;
    .registers 14
    .param p0, "pStrText"    # Ljava/lang/String;
    .param p1, "pFilepath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 505
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 506
    .local v5, "params":Lcom/loopj/android/http/RequestParams;
    const-string v8, "="

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, "separated":[Ljava/lang/String;
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "picture"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 508
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 509
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :goto_38
    return-object v5

    .line 511
    :cond_39
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_photo.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v3, "file_picture":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_93

    .line 513
    const/4 v1, 0x0

    .line 515
    .local v1, "data":[B
    :try_start_58
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 516
    .local v4, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 517
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 518
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6f} :catch_7b

    move-result-object v1

    .line 522
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "myBitmap":Landroid/graphics/Bitmap;
    :goto_70
    const-string v8, "source"

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_38

    .line 519
    :catch_7b
    move-exception v2

    .line 520
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception|convertFileToRequestParams|1):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_70

    .line 524
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_93
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 525
    .local v6, "selectedImage":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 527
    .restart local v1    # "data":[B
    :try_start_9e
    sget-object v8, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/facebook/android/Utility;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v1

    .line 528
    const-string v8, "source"

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ae} :catch_af

    goto :goto_38

    .line 529
    :catch_af
    move-exception v2

    .line 530
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception|convertFileToRequestParams|2):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_38

    .line 535
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file_picture":Ljava/io/File;
    .end local v6    # "selectedImage":Landroid/net/Uri;
    :cond_c8
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 173
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_37
    .catchall {:try_start_3 .. :try_end_d} :catchall_45

    .line 174
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

    .line 176
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x400

    :try_start_1a
    new-array v4, v7, [B

    .line 177
    .local v4, "buf":[B
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 180
    :cond_1f
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 181
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_61
    .catchall {:try_start_1a .. :try_end_25} :catchall_5a

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1f

    .line 186
    if-eqz v1, :cond_2e

    .line 187
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 188
    :cond_2e
    if-eqz v3, :cond_33

    .line 189
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_53

    .line 195
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

    .line 182
    :catch_37
    move-exception v5

    .line 186
    .local v5, "e":Ljava/io/IOException;
    :goto_38
    if-eqz v0, :cond_3d

    .line 187
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 188
    :cond_3d
    if-eqz v2, :cond_36

    .line 189
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_36

    .line 190
    :catch_43
    move-exception v5

    .line 191
    goto :goto_36

    .line 184
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_45
    move-exception v7

    .line 186
    :goto_46
    if-eqz v0, :cond_4b

    .line 187
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 188
    :cond_4b
    if-eqz v2, :cond_50

    .line 189
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_51

    .line 193
    :cond_50
    throw v7

    .line 190
    :catch_51
    move-exception v5

    .line 191
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_36

    .line 190
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

    .line 191
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_36

    .line 184
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

    .line 182
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

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 132
    :goto_a
    return-object v1

    .line 131
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static getFileType(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 448
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, "file":Ljava/io/File;
    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 453
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 454
    const-string v4, "{type}=Bundle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_2e

    move-result v4

    if-eqz v4, :cond_20

    .line 455
    const-string v4, "Bundle"

    .line 466
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :goto_1f
    return-object v4

    .line 456
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_20
    :try_start_20
    const-string v4, "{type}=RequestParams"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_2e

    move-result v4

    if-eqz v4, :cond_2b

    .line 457
    const-string v4, "RequestParams"

    goto :goto_1f

    .line 459
    :cond_2b
    const-string v4, ""

    goto :goto_1f

    .line 462
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 463
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(IOException|getFileType):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 466
    .end local v1    # "e":Ljava/io/IOException;
    :cond_46
    const-string v4, ""

    goto :goto_1f
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
    .line 663
    const/4 v4, 0x0

    .line 664
    .local v4, "theReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 667
    .local v2, "returnString":Ljava/lang/String;
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_3b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_42
    .catchall {:try_start_2 .. :try_end_c} :catchall_3d

    .line 668
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .local v5, "theReader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 670
    .local v0, "charArray":[C
    :try_start_d
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_24

    .line 672
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "The file is larger than int max = 2147483647"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_1f} :catch_60
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1f} :catch_5d
    .catchall {:try_start_d .. :try_end_1f} :catchall_5a

    .line 687
    :goto_1f
    :try_start_1f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_54

    move-object v4, v5

    .line 693
    .end local v0    # "charArray":[C
    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    :goto_23
    return-object v2

    .line 674
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v0    # "charArray":[C
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [C

    .line 677
    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/BufferedReader;->read([CII)I

    .line 678
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_39} :catch_60
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_39} :catch_5d
    .catchall {:try_start_24 .. :try_end_39} :catchall_5a

    .end local v2    # "returnString":Ljava/lang/String;
    .local v3, "returnString":Ljava/lang/String;
    move-object v2, v3

    .line 681
    .end local v3    # "returnString":Ljava/lang/String;
    .restart local v2    # "returnString":Ljava/lang/String;
    goto :goto_1f

    .end local v0    # "charArray":[C
    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    :catch_3b
    move-exception v1

    .line 682
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_3c
    :try_start_3c
    throw v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 685
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catchall_3d
    move-exception v6

    .line 687
    :goto_3e
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4f

    .line 691
    :goto_41
    throw v6

    .line 683
    :catch_42
    move-exception v1

    .line 684
    .local v1, "ex":Ljava/io/IOException;
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3d

    .line 687
    :try_start_46
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_23

    .line 688
    :catch_4a
    move-exception v1

    .line 689
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 688
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_4f
    move-exception v1

    .line 689
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 688
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v0    # "charArray":[C
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catch_54
    move-exception v1

    .line 689
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_23

    .line 685
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catchall_5a
    move-exception v6

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 683
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catch_5d
    move-exception v1

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_43

    .line 681
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catch_60
    move-exception v1

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_3c
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 115
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private static isSDMounted()Z
    .registers 2

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 200
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

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

.method private static notificationFail(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 22
    .param p0, "pStrPageHeader"    # Ljava/lang/String;
    .param p1, "pStrMessage"    # Ljava/lang/String;
    .param p2, "pIntPAGE_MODE"    # I
    .param p3, "pIntNotification_posting_number"    # I
    .param p4, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p5, "pfilepath"    # Ljava/lang/String;

    .prologue
    .line 2162
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2163
    .local v7, "file":Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2165
    .local v8, "fileFail":Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2166
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "cancel Notification number="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 2169
    sget-object v13, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const-string v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "pNotificationManager":Landroid/app/NotificationManager;
    check-cast p4, Landroid/app/NotificationManager;

    .line 2171
    .restart local p4    # "pNotificationManager":Landroid/app/NotificationManager;
    const-string v12, ""

    .line 2173
    .local v12, "tickerText":Ljava/lang/String;
    :try_start_4a
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const v15, 0x7f0a001d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": fail !"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_65} :catch_128

    move-result-object v12

    .line 2178
    :goto_66
    const v9, 0x7f0202f2

    .line 2180
    .local v9, "icon":I
    new-instance v11, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v11, v9, v12, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2181
    .local v11, "notification":Landroid/app/Notification;
    iget v13, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v11, Landroid/app/Notification;->flags:I

    .line 2182
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "create Notification:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 2184
    new-instance v10, Landroid/content/Intent;

    sget-object v13, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const-class v14, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    invoke-direct {v10, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2185
    .local v10, "intent":Landroid/content/Intent;
    const/16 v13, 0x15

    move/from16 v0, p2

    if-ne v0, v13, :cond_143

    .line 2186
    const-string v13, "PAGE_MODE"

    const/16 v14, 0x15

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2190
    :cond_a1
    :goto_a1
    const/high16 v13, 0x14000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2191
    const-string v13, "file_fail"

    invoke-virtual {v10, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2193
    sget-object v13, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    sget v14, Lcom/samsung/privilege/util/PostAsyncUtil;->gIntRequestID:I

    const/4 v15, 0x0

    invoke-static {v13, v14, v10, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2195
    .local v3, "activity":Landroid/app/PendingIntent;
    const-string v5, ""

    .line 2197
    .local v5, "contentTitle":Ljava/lang/String;
    :try_start_b6
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const v15, 0x7f0a001d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": fail !"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d1} :catch_152

    move-result-object v5

    .line 2202
    :goto_d2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2203
    .local v4, "contentText":Ljava/lang/String;
    sget-object v13, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-virtual {v11, v13, v5, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2205
    iget v13, v11, Landroid/app/Notification;->number:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v11, Landroid/app/Notification;->number:I

    .line 2210
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2212
    .local v2, "IntNotification_posting_number":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2213
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "notify Notification number="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 2214
    return-void

    .line 2174
    .end local v2    # "IntNotification_posting_number":I
    .end local v3    # "activity":Landroid/app/PendingIntent;
    .end local v4    # "contentText":Ljava/lang/String;
    .end local v5    # "contentTitle":Ljava/lang/String;
    .end local v9    # "icon":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "notification":Landroid/app/Notification;
    :catch_128
    move-exception v6

    .line 2175
    .local v6, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "notificationFail|Exception := "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 2187
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "icon":I
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "notification":Landroid/app/Notification;
    :cond_143
    const/16 v13, 0x16

    move/from16 v0, p2

    if-ne v0, v13, :cond_a1

    .line 2188
    const-string v13, "PAGE_MODE"

    const/16 v14, 0x16

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_a1

    .line 2198
    .restart local v3    # "activity":Landroid/app/PendingIntent;
    .restart local v5    # "contentTitle":Ljava/lang/String;
    :catch_152
    move-exception v6

    .line 2199
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v13, Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "notificationFail|Exception := "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d2
.end method

.method private static notificationSuccess(Ljava/lang/String;Ljava/lang/String;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 11
    .param p0, "pStrPageHeader"    # Ljava/lang/String;
    .param p1, "pStrMessage"    # Ljava/lang/String;
    .param p2, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p3, "pfilepath"    # Ljava/lang/String;

    .prologue
    .line 2125
    sget-object v4, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "pNotificationManager":Landroid/app/NotificationManager;
    check-cast p2, Landroid/app/NotificationManager;

    .line 2127
    .restart local p2    # "pNotificationManager":Landroid/app/NotificationManager;
    const-string v3, ""

    .line 2129
    .local v3, "tickerText":Ljava/lang/String;
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const v6, 0x7f0a001d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":successfully"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_4e

    move-result-object v3

    .line 2134
    :goto_28
    const v1, 0x7f0202f2

    .line 2136
    .local v1, "icon":I
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2137
    .local v2, "notification":Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 2138
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create Notification:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 2159
    return-void

    .line 2130
    .end local v1    # "icon":I
    .end local v2    # "notification":Landroid/app/Notification;
    :catch_4e
    move-exception v0

    .line 2131
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "notificationSuccess|Exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method private static posting(Ljava/lang/String;)V
    .registers 34
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "posting:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1029
    const-string v3, ""

    .line 1030
    .local v3, "StrPageHeaderPost":Ljava/lang/String;
    const-string v4, ""

    .line 1031
    .local v4, "StrMessage":Ljava/lang/String;
    const/16 v5, 0x19

    .line 1032
    .local v5, "IntPAGE_MODE":I
    const/4 v6, 0x0

    .line 1034
    .local v6, "IntNotification_posting_number":I
    const/4 v7, 0x0

    .line 1036
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    const-string v28, ""

    .line 1037
    .local v28, "strLine":Ljava/lang/String;
    const-string v29, ""

    .line 1038
    .local v29, "strSumLine":Ljava/lang/String;
    const-string v30, ""

    .line 1039
    .local v30, "strText":Ljava/lang/String;
    const-string v31, ""

    .line 1040
    .local v31, "strType":Ljava/lang/String;
    const-string v9, ""

    .line 1042
    .local v9, "strURL":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1043
    .local v21, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v18, "file":Ljava/io/File;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1047
    .local v10, "paramsBundle":Landroid/os/Bundle;
    new-instance v24, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v24 .. v24}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1050
    .local v24, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    :try_start_3c
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1052
    .local v15, "br":Ljava/io/BufferedReader;
    :cond_48
    :goto_48
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4b} :catch_48e

    move-result-object v28

    if-nez v28, :cond_20b

    .line 1207
    .end local v15    # "br":Ljava/io/BufferedReader;
    :goto_4e
    const v20, 0x7f0202f2

    .line 1208
    .local v20, "icon":I
    const-string v27, ""

    .line 1210
    .local v27, "strApp_name":Ljava/lang/String;
    :try_start_53
    sget-object v2, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const v8, 0x7f0a001d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_6fc

    move-result-object v27

    .line 1214
    :goto_5c
    new-instance v23, Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-direct {v0, v1, v2, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1215
    .local v23, "notificationOngoing":Landroid/app/Notification;
    move-object/from16 v0, v23

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v23

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 1216
    const-string v2, "create Notification:FLAG_ONGOING_EVENT"

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "file:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1222
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "set Notification number:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1226
    new-instance v2, Landroid/widget/RemoteViews;

    sget-object v8, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f03010c

    invoke-direct {v2, v8, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1228
    if-eqz v21, :cond_717

    .line 1229
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v8, 0x7f370000

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1232
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v8, 0x7f370000

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02039f

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "set Notification image:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "x"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1238
    :goto_12c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1239
    .local v32, "title":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v8, 0x7f370002

    move-object/from16 v0, v32

    invoke-virtual {v2, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "set Notification title:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1242
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v8, 0x7f370001

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, v20

    invoke-static {v11, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1243
    const-string v2, "set notificationOngoing.contentView.setImageViewBitmap"

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1245
    sget-object v2, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    check-cast v7, Landroid/app/NotificationManager;

    .line 1246
    .restart local v7    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "IntNotification_posting_number="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1247
    move-object/from16 v0, v23

    invoke-virtual {v7, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "notify Notification number:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1250
    invoke-static {}, Lcom/facebook/android/PostEvents;->onPostBegin()V

    .line 1252
    const/16 v2, 0x15

    if-eq v5, v2, :cond_1c8

    const/16 v2, 0x16

    if-eq v5, v2, :cond_1c8

    const/16 v2, 0x19

    if-eq v5, v2, :cond_1c8

    const/16 v2, 0x1c

    if-ne v5, v2, :cond_724

    .line 1256
    :cond_1c8
    sget-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-nez v2, :cond_1e0

    .line 1257
    new-instance v2, Lcom/facebook/android/AsyncFacebookRunner;

    new-instance v8, Lcom/facebook/android/Facebook;

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v8}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 1260
    :cond_1e0
    sget-object v12, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v11, "POST"

    new-instance v2, Lcom/samsung/privilege/util/PostAsyncUtil$StatusPostListener;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil$StatusPostListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object v8, v12

    move-object v12, v2

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Utility.mAsyncRunner.request:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1284
    :cond_204
    :goto_204
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7b0

    .line 1291
    return-void

    .line 1054
    .end local v20    # "icon":I
    .end local v23    # "notificationOngoing":Landroid/app/Notification;
    .end local v27    # "strApp_name":Ljava/lang/String;
    .end local v32    # "title":Ljava/lang/String;
    .restart local v15    # "br":Ljava/io/BufferedReader;
    :cond_20b
    :try_start_20b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1056
    const-string v2, "VAT_POST_VAT"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "strLine "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v2, "VAT_POST_VAT"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "strSumLine "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v2, "@@@@"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_48

    .line 1061
    const-string v2, "@@@@"

    const-string v8, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 1066
    const-string v2, "="

    const/4 v8, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 1068
    .local v26, "separated":[Ljava/lang/String;
    const-string v2, "VAT_POST_VAT"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "separated[0].trim() "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v2, "VAT_POST_VAT"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "separated[1].trim() "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v29, ""
    :try_end_2a6
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_2a6} :catch_48e

    .line 1073
    const/4 v2, 0x0

    :try_start_2a7
    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{type}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    .line 1074
    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_2a7 .. :try_end_2bb} :catch_4a8
    .catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2bb} :catch_48e

    move-result-object v31

    .line 1081
    :cond_2bc
    :goto_2bc
    const/4 v2, 0x0

    :try_start_2bd
    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{url}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d2

    .line 1082
    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_2d1} :catch_4c1
    .catch Ljava/io/IOException; {:try_start_2bd .. :try_end_2d1} :catch_48e

    move-result-object v9

    .line 1089
    :cond_2d2
    :goto_2d2
    const/4 v2, 0x0

    :try_start_2d3
    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{header}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e8

    .line 1090
    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2e7
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_2e7} :catch_4da
    .catch Ljava/io/IOException; {:try_start_2d3 .. :try_end_2e7} :catch_48e

    move-result-object v3

    .line 1097
    :cond_2e8
    :goto_2e8
    const/4 v2, 0x0

    :try_start_2e9
    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{message}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30e

    .line 1098
    const/4 v2, 0x1

    aget-object v4, v26, v2

    .line 1099
    const-string v2, "VAT_POST"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "StrMessage "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30e
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_30e} :catch_4f3
    .catch Ljava/io/IOException; {:try_start_2e9 .. :try_end_30e} :catch_48e

    .line 1106
    :cond_30e
    :goto_30e
    const/4 v2, 0x0

    :try_start_30f
    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{pagemode}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33b

    .line 1107
    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33b

    .line 1108
    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_33a
    .catch Ljava/lang/Exception; {:try_start_30f .. :try_end_33a} :catch_50c
    .catch Ljava/io/IOException; {:try_start_30f .. :try_end_33a} :catch_48e

    move-result v5

    .line 1116
    :cond_33b
    :goto_33b
    :try_start_33b
    const-string v2, "Bundle"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f1

    .line 1117
    const/4 v2, 0x0

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "picture"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_363

    const/4 v2, 0x0

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "photo"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5dc

    .line 1118
    :cond_363
    new-instance v19, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_photo.jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v19, "file_picture":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v26, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1120
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_559

    .line 1121
    const-string v2, "case:camera"

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_3ad
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_3ad} :catch_53f
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_3ad} :catch_48e

    .line 1122
    const/16 v16, 0x0

    .line 1124
    .local v16, "data":[B
    :try_start_3af
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1125
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1126
    .local v14, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v8, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1127
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3c8
    .catch Ljava/lang/Exception; {:try_start_3af .. :try_end_3c8} :catch_525
    .catch Ljava/io/IOException; {:try_start_3af .. :try_end_3c8} :catch_48e

    move-result-object v16

    .line 1131
    .end local v14    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_3c9
    const/4 v2, 0x0

    :try_start_3ca
    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsBundle.putByteArray:["

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_3f1
    .catch Ljava/lang/Exception; {:try_start_3ca .. :try_end_3f1} :catch_53f
    .catch Ljava/io/IOException; {:try_start_3ca .. :try_end_3f1} :catch_48e

    .line 1168
    .end local v16    # "data":[B
    .end local v19    # "file_picture":Ljava/io/File;
    :cond_3f1
    :goto_3f1
    :try_start_3f1
    const-string v2, "RequestParams"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1169
    const/4 v2, 0x0

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "source"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_662

    .line 1170
    new-instance v19, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_photo.jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1171
    .restart local v19    # "file_picture":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_3f1 .. :try_end_429} :catch_474
    .catch Ljava/io/IOException; {:try_start_3f1 .. :try_end_429} :catch_48e

    move-result v2

    if-eqz v2, :cond_48

    .line 1172
    const/16 v16, 0x0

    .line 1174
    .restart local v16    # "data":[B
    :try_start_42e
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1175
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1176
    .restart local v14    # "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v8, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1177
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_447
    .catch Ljava/lang/Exception; {:try_start_42e .. :try_end_447} :catch_648
    .catch Ljava/io/IOException; {:try_start_42e .. :try_end_447} :catch_48e

    move-result-object v16

    .line 1181
    .end local v14    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_448
    :try_start_448
    const-string v2, "source"

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsRequestParams.put:source["

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_472
    .catch Ljava/lang/Exception; {:try_start_448 .. :try_end_472} :catch_474
    .catch Ljava/io/IOException; {:try_start_448 .. :try_end_472} :catch_48e

    goto/16 :goto_48

    .line 1197
    .end local v16    # "data":[B
    .end local v19    # "file_picture":Ljava/io/File;
    :catch_474
    move-exception v17

    .line 1198
    .local v17, "e":Ljava/lang/Exception;
    :try_start_475
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-5:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_48c
    .catch Ljava/io/IOException; {:try_start_475 .. :try_end_48c} :catch_48e

    goto/16 :goto_48

    .line 1203
    .end local v15    # "br":Ljava/io/BufferedReader;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v26    # "separated":[Ljava/lang/String;
    :catch_48e
    move-exception v17

    .line 1204
    .local v17, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-6:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_4e

    .line 1076
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v15    # "br":Ljava/io/BufferedReader;
    .restart local v26    # "separated":[Ljava/lang/String;
    :catch_4a8
    move-exception v17

    .line 1077
    .local v17, "e":Ljava/lang/Exception;
    :try_start_4a9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {type}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v26, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_2bc

    .line 1084
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_4c1
    move-exception v17

    .line 1085
    .restart local v17    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {url}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v26, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_2d2

    .line 1092
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_4da
    move-exception v17

    .line 1093
    .restart local v17    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {header}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v26, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_2e8

    .line 1101
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_4f3
    move-exception v17

    .line 1102
    .restart local v17    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {message}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v26, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_30e

    .line 1111
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_50c
    move-exception v17

    .line 1112
    .restart local v17    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {pagemode}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v26, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_523
    .catch Ljava/io/IOException; {:try_start_4a9 .. :try_end_523} :catch_48e

    goto/16 :goto_33b

    .line 1128
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v16    # "data":[B
    .restart local v19    # "file_picture":Ljava/io/File;
    :catch_525
    move-exception v17

    .line 1129
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_526
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-1:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_53d
    .catch Ljava/lang/Exception; {:try_start_526 .. :try_end_53d} :catch_53f
    .catch Ljava/io/IOException; {:try_start_526 .. :try_end_53d} :catch_48e

    goto/16 :goto_3c9

    .line 1163
    .end local v16    # "data":[B
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "file_picture":Ljava/io/File;
    :catch_53f
    move-exception v17

    .line 1164
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_540
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-3:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_557
    .catch Ljava/io/IOException; {:try_start_540 .. :try_end_557} :catch_48e

    goto/16 :goto_3f1

    .line 1134
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v19    # "file_picture":Ljava/io/File;
    :cond_559
    :try_start_559
    const-string v2, "case:browse"

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1135
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_3f1

    .line 1136
    const/4 v2, 0x1

    aget-object v2, v26, v2

    if-eqz v2, :cond_3f1

    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f1

    .line 1137
    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_583
    .catch Ljava/lang/Exception; {:try_start_559 .. :try_end_583} :catch_53f
    .catch Ljava/io/IOException; {:try_start_559 .. :try_end_583} :catch_48e

    move-result-object v25

    .line 1139
    .local v25, "selectedImage":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 1140
    .restart local v16    # "data":[B
    :try_start_586
    sget-object v2, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/facebook/android/Utility;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v16

    .line 1141
    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1142
    const/4 v2, 0x0

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsBundle.putByteArray:["

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_5c0
    .catch Ljava/lang/Exception; {:try_start_586 .. :try_end_5c0} :catch_5c2
    .catch Ljava/io/IOException; {:try_start_586 .. :try_end_5c0} :catch_48e

    goto/16 :goto_3f1

    .line 1144
    :catch_5c2
    move-exception v17

    .line 1145
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_5c3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-2:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_3f1

    .line 1151
    .end local v16    # "data":[B
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "file_picture":Ljava/io/File;
    .end local v25    # "selectedImage":Landroid/net/Uri;
    :cond_5dc
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_3f1

    .line 1152
    const/4 v2, 0x0

    aget-object v2, v26, v2

    if-eqz v2, :cond_3f1

    const/4 v2, 0x1

    aget-object v2, v26, v2

    if-eqz v2, :cond_3f1

    .line 1153
    const/4 v2, 0x0

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f1

    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f1

    .line 1155
    const/4 v2, 0x0

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v26, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsBundle.putString:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v26, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v26, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_646
    .catch Ljava/lang/Exception; {:try_start_5c3 .. :try_end_646} :catch_53f
    .catch Ljava/io/IOException; {:try_start_5c3 .. :try_end_646} :catch_48e

    goto/16 :goto_3f1

    .line 1178
    .restart local v16    # "data":[B
    .restart local v19    # "file_picture":Ljava/io/File;
    :catch_648
    move-exception v17

    .line 1179
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_649
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-4:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_448

    .line 1185
    .end local v16    # "data":[B
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "file_picture":Ljava/io/File;
    :cond_662
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_48

    .line 1186
    const/4 v2, 0x0

    aget-object v2, v26, v2

    if-eqz v2, :cond_48

    const/4 v2, 0x1

    aget-object v2, v26, v2

    if-eqz v2, :cond_48

    .line 1187
    const/4 v2, 0x0

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const/4 v2, 0x1

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 1189
    const-string v2, "VAT_POST"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "separated[0].trim() "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " separated[1].trim() "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v11, 0x1

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const/4 v2, 0x0

    aget-object v2, v26, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v26, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsRequestParams.put:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v26, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v26, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_6fa
    .catch Ljava/lang/Exception; {:try_start_649 .. :try_end_6fa} :catch_474
    .catch Ljava/io/IOException; {:try_start_649 .. :try_end_6fa} :catch_48e

    goto/16 :goto_48

    .line 1211
    .end local v15    # "br":Ljava/io/BufferedReader;
    .end local v26    # "separated":[Ljava/lang/String;
    .restart local v20    # "icon":I
    .restart local v27    # "strApp_name":Ljava/lang/String;
    :catch_6fc
    move-exception v17

    .line 1212
    .restart local v17    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Exception := "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 1235
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v23    # "notificationOngoing":Landroid/app/Notification;
    :cond_717
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v8, 0x7f370000

    const/16 v11, 0x8

    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_12c

    .line 1262
    .restart local v32    # "title":Ljava/lang/String;
    :cond_724
    const/16 v2, 0x1a

    if-ne v5, v2, :cond_749

    .line 1266
    const/4 v11, 0x0

    new-instance v2, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v9, v11, v2, v8}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "HttpCall.RQ_POST:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_204

    .line 1268
    :cond_749
    const/16 v2, 0x18

    if-eq v5, v2, :cond_751

    const/16 v2, 0x17

    if-ne v5, v2, :cond_781

    .line 1272
    :cond_751
    new-instance v22, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct/range {v22 .. v22}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1273
    .local v22, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v2, 0x1d4c0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 1274
    new-instance v2, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v9, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "myClient.post:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_204

    .line 1276
    .end local v22    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_781
    const/16 v2, 0x1b

    if-ne v5, v2, :cond_204

    .line 1277
    sget-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-nez v2, :cond_79d

    .line 1278
    new-instance v2, Lcom/facebook/android/AsyncFacebookRunner;

    new-instance v8, Lcom/facebook/android/Facebook;

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v8}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 1281
    :cond_79d
    sget-object v12, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v11, "POST"

    new-instance v2, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object v8, v12

    move-object v12, v2

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    goto/16 :goto_204

    .line 1286
    :cond_7b0
    const-wide/16 v11, 0x3e8

    :try_start_7b2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7b5
    .catch Ljava/lang/Exception; {:try_start_7b2 .. :try_end_7b5} :catch_7b7

    goto/16 :goto_204

    .line 1287
    :catch_7b7
    move-exception v17

    .line 1288
    .restart local v17    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-7:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_204
.end method

.method private static postingFromXML(Ljava/lang/String;)V
    .registers 37
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "posting:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 699
    const-string v3, ""

    .line 700
    .local v3, "StrPageHeaderPost":Ljava/lang/String;
    const-string v4, ""

    .line 701
    .local v4, "StrMessage":Ljava/lang/String;
    const/16 v5, 0x19

    .line 702
    .local v5, "IntPAGE_MODE":I
    const/4 v6, 0x0

    .line 704
    .local v6, "IntNotification_posting_number":I
    const/4 v7, 0x0

    .line 706
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    const-string v31, ""

    .line 707
    .local v31, "strLine":Ljava/lang/String;
    const-string v32, ""

    .line 708
    .local v32, "strText":Ljava/lang/String;
    const-string v33, ""

    .line 709
    .local v33, "strType":Ljava/lang/String;
    const-string v9, ""

    .line 711
    .local v9, "strURL":Ljava/lang/String;
    const/16 v22, 0x0

    .line 712
    .local v22, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    .local v19, "file":Ljava/io/File;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v10, "paramsBundle":Landroid/os/Bundle;
    new-instance v26, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v26 .. v26}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 721
    .local v26, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    :try_start_3a
    new-instance v27, Lcom/samsung/privilege/util/XMLParser;

    invoke-direct/range {v27 .. v27}, Lcom/samsung/privilege/util/XMLParser;-><init>()V

    .line 722
    .local v27, "parser":Lcom/samsung/privilege/util/XMLParser;
    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/PostAsyncUtil;->grabAsSingleString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v35

    .line 723
    .local v35, "xml":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/XMLParser;->getDomElement(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v17

    .line 725
    .local v17, "doc":Lorg/w3c/dom/Document;
    const-string v2, "post"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 785
    .local v24, "nl":Lorg/w3c/dom/NodeList;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 787
    .local v15, "br":Ljava/io/BufferedReader;
    :cond_5f
    :goto_5f
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_6f

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_6c} :catch_408
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_6c} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6c} :catch_46e

    move-result v2

    if-gtz v2, :cond_22c

    .line 938
    .end local v15    # "br":Ljava/io/BufferedReader;
    .end local v17    # "doc":Lorg/w3c/dom/Document;
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .end local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .end local v35    # "xml":Ljava/lang/String;
    :cond_6f
    :goto_6f
    const v21, 0x7f0202f2

    .line 939
    .local v21, "icon":I
    const-string v30, ""

    .line 941
    .local v30, "strApp_name":Ljava/lang/String;
    :try_start_74
    sget-object v2, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const v8, 0x7f0a001d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7c} :catch_70d

    move-result-object v30

    .line 946
    :goto_7d
    new-instance v25, Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-direct {v0, v1, v2, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 947
    .local v25, "notificationOngoing":Landroid/app/Notification;
    move-object/from16 v0, v25

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v25

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 948
    const-string v2, "create Notification:FLAG_ONGOING_EVENT"

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "file:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 954
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "set Notification number:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 958
    new-instance v2, Landroid/widget/RemoteViews;

    sget-object v8, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f03010c

    invoke-direct {v2, v8, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v25

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 960
    if-eqz v22, :cond_728

    .line 961
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v8, 0x7f370000

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 964
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v8, 0x7f370000

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02039f

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "set Notification image:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "x"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 970
    :goto_14d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 971
    .local v34, "title":Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v8, 0x7f370002

    move-object/from16 v0, v34

    invoke-virtual {v2, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "set Notification title:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 974
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v8, 0x7f370001

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, v21

    invoke-static {v11, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 975
    const-string v2, "set notificationOngoing.contentView.setImageViewBitmap"

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 977
    sget-object v2, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    check-cast v7, Landroid/app/NotificationManager;

    .line 978
    .restart local v7    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "IntNotification_posting_number="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 979
    move-object/from16 v0, v25

    invoke-virtual {v7, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "notify Notification number:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 982
    invoke-static {}, Lcom/facebook/android/PostEvents;->onPostBegin()V

    .line 984
    const/16 v2, 0x15

    if-eq v5, v2, :cond_1e9

    const/16 v2, 0x16

    if-eq v5, v2, :cond_1e9

    const/16 v2, 0x19

    if-eq v5, v2, :cond_1e9

    const/16 v2, 0x1c

    if-ne v5, v2, :cond_735

    .line 989
    :cond_1e9
    sget-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-nez v2, :cond_201

    .line 990
    new-instance v2, Lcom/facebook/android/AsyncFacebookRunner;

    new-instance v8, Lcom/facebook/android/Facebook;

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v8}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 993
    :cond_201
    sget-object v12, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v11, "POST"

    new-instance v2, Lcom/samsung/privilege/util/PostAsyncUtil$StatusPostListener;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil$StatusPostListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object v8, v12

    move-object v12, v2

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Utility.mAsyncRunner.request:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1017
    :cond_225
    :goto_225
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7c1

    .line 1024
    return-void

    .line 788
    .end local v21    # "icon":I
    .end local v25    # "notificationOngoing":Landroid/app/Notification;
    .end local v30    # "strApp_name":Ljava/lang/String;
    .end local v34    # "title":Ljava/lang/String;
    .restart local v15    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "doc":Lorg/w3c/dom/Document;
    .restart local v24    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .restart local v35    # "xml":Ljava/lang/String;
    :cond_22c
    :try_start_22c
    const-string v2, "="

    const/4 v8, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_234
    .catch Ljava/io/FileNotFoundException; {:try_start_22c .. :try_end_234} :catch_408
    .catch Ljava/io/IOException; {:try_start_22c .. :try_end_234} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_234} :catch_46e

    move-result-object v29

    .line 791
    .local v29, "separated":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_236
    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{type}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24b

    .line 792
    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_24a} :catch_422
    .catch Ljava/io/FileNotFoundException; {:try_start_236 .. :try_end_24a} :catch_408
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_24a} :catch_43b

    move-result-object v33

    .line 799
    :cond_24b
    :goto_24b
    const/4 v2, 0x0

    :try_start_24c
    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{url}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_261

    .line 800
    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_260} :catch_455
    .catch Ljava/io/FileNotFoundException; {:try_start_24c .. :try_end_260} :catch_408
    .catch Ljava/io/IOException; {:try_start_24c .. :try_end_260} :catch_43b

    move-result-object v9

    .line 807
    :cond_261
    :goto_261
    const/4 v2, 0x0

    :try_start_262
    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{header}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_277

    .line 808
    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_276} :catch_488
    .catch Ljava/io/FileNotFoundException; {:try_start_262 .. :try_end_276} :catch_408
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_276} :catch_43b

    move-result-object v3

    .line 815
    :cond_277
    :goto_277
    const/4 v2, 0x0

    :try_start_278
    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{message}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29d

    .line 816
    const/4 v2, 0x1

    aget-object v4, v29, v2

    .line 817
    const-string v2, "VAT_POST"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "StrMessage "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_29d} :catch_4a1
    .catch Ljava/io/FileNotFoundException; {:try_start_278 .. :try_end_29d} :catch_408
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_29d} :catch_43b

    .line 824
    :cond_29d
    :goto_29d
    const/4 v2, 0x0

    :try_start_29e
    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "{pagemode}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ca

    .line 825
    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ca

    .line 826
    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2c9} :catch_4ba
    .catch Ljava/io/FileNotFoundException; {:try_start_29e .. :try_end_2c9} :catch_408
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_2c9} :catch_43b

    move-result v5

    .line 834
    :cond_2ca
    :goto_2ca
    :try_start_2ca
    const-string v2, "Bundle"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36b

    .line 835
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "picture"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "photo"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_619

    .line 837
    :cond_2f2
    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "http"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d3

    .line 838
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_36b

    .line 839
    const/4 v2, 0x0

    aget-object v2, v29, v2

    if-eqz v2, :cond_36b

    const/4 v2, 0x1

    aget-object v2, v29, v2

    if-eqz v2, :cond_36b

    .line 840
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36b

    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36b

    .line 841
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsBundle.putString:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_36b
    .catch Ljava/lang/Exception; {:try_start_2ca .. :try_end_36b} :catch_563
    .catch Ljava/io/FileNotFoundException; {:try_start_2ca .. :try_end_36b} :catch_408
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_36b} :catch_43b

    .line 897
    :cond_36b
    :goto_36b
    :try_start_36b
    const-string v2, "RequestParams"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 898
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "source"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69f

    .line 899
    new-instance v20, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_photo.jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    .local v20, "file_picture":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z
    :try_end_3a3
    .catch Ljava/lang/Exception; {:try_start_36b .. :try_end_3a3} :catch_3ee
    .catch Ljava/io/FileNotFoundException; {:try_start_36b .. :try_end_3a3} :catch_408
    .catch Ljava/io/IOException; {:try_start_36b .. :try_end_3a3} :catch_43b

    move-result v2

    if-eqz v2, :cond_5f

    .line 901
    const/16 v16, 0x0

    .line 903
    .local v16, "data":[B
    :try_start_3a8
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 904
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 905
    .local v14, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 906
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3c1
    .catch Ljava/lang/Exception; {:try_start_3a8 .. :try_end_3c1} :catch_685
    .catch Ljava/io/FileNotFoundException; {:try_start_3a8 .. :try_end_3c1} :catch_408
    .catch Ljava/io/IOException; {:try_start_3a8 .. :try_end_3c1} :catch_43b

    move-result-object v16

    .line 910
    .end local v14    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_3c2
    :try_start_3c2
    const-string v2, "source"

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsRequestParams.put:source["

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_3ec
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_3ec} :catch_3ee
    .catch Ljava/io/FileNotFoundException; {:try_start_3c2 .. :try_end_3ec} :catch_408
    .catch Ljava/io/IOException; {:try_start_3c2 .. :try_end_3ec} :catch_43b

    goto/16 :goto_5f

    .line 924
    .end local v16    # "data":[B
    .end local v20    # "file_picture":Ljava/io/File;
    :catch_3ee
    move-exception v18

    .line 925
    .local v18, "e":Ljava/lang/Exception;
    :try_start_3ef
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-5:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_406
    .catch Ljava/io/FileNotFoundException; {:try_start_3ef .. :try_end_406} :catch_408
    .catch Ljava/io/IOException; {:try_start_3ef .. :try_end_406} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_3ef .. :try_end_406} :catch_46e

    goto/16 :goto_5f

    .line 930
    .end local v15    # "br":Ljava/io/BufferedReader;
    .end local v17    # "doc":Lorg/w3c/dom/Document;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .end local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .end local v29    # "separated":[Ljava/lang/String;
    .end local v35    # "xml":Ljava/lang/String;
    :catch_408
    move-exception v18

    .line 931
    .local v18, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-6:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_6f

    .line 794
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "doc":Lorg/w3c/dom/Document;
    .restart local v24    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .restart local v29    # "separated":[Ljava/lang/String;
    .restart local v35    # "xml":Ljava/lang/String;
    :catch_422
    move-exception v18

    .line 795
    .local v18, "e":Ljava/lang/Exception;
    :try_start_423
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {type}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_439
    .catch Ljava/io/FileNotFoundException; {:try_start_423 .. :try_end_439} :catch_408
    .catch Ljava/io/IOException; {:try_start_423 .. :try_end_439} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_423 .. :try_end_439} :catch_46e

    goto/16 :goto_24b

    .line 932
    .end local v15    # "br":Ljava/io/BufferedReader;
    .end local v17    # "doc":Lorg/w3c/dom/Document;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .end local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .end local v29    # "separated":[Ljava/lang/String;
    .end local v35    # "xml":Ljava/lang/String;
    :catch_43b
    move-exception v18

    .line 933
    .local v18, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-6:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_6f

    .line 802
    .end local v18    # "e":Ljava/io/IOException;
    .restart local v15    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "doc":Lorg/w3c/dom/Document;
    .restart local v24    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .restart local v29    # "separated":[Ljava/lang/String;
    .restart local v35    # "xml":Ljava/lang/String;
    :catch_455
    move-exception v18

    .line 803
    .local v18, "e":Ljava/lang/Exception;
    :try_start_456
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {url}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_46c
    .catch Ljava/io/FileNotFoundException; {:try_start_456 .. :try_end_46c} :catch_408
    .catch Ljava/io/IOException; {:try_start_456 .. :try_end_46c} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_456 .. :try_end_46c} :catch_46e

    goto/16 :goto_261

    .line 934
    .end local v15    # "br":Ljava/io/BufferedReader;
    .end local v17    # "doc":Lorg/w3c/dom/Document;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .end local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .end local v29    # "separated":[Ljava/lang/String;
    .end local v35    # "xml":Ljava/lang/String;
    :catch_46e
    move-exception v18

    .line 935
    .restart local v18    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-6:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_6f

    .line 810
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v15    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "doc":Lorg/w3c/dom/Document;
    .restart local v24    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .restart local v29    # "separated":[Ljava/lang/String;
    .restart local v35    # "xml":Ljava/lang/String;
    :catch_488
    move-exception v18

    .line 811
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_489
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {header}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_277

    .line 819
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_4a1
    move-exception v18

    .line 820
    .restart local v18    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {message}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_29d

    .line 829
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_4ba
    move-exception v18

    .line 830
    .restart local v18    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error:not found {pagemode}:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_4d1
    .catch Ljava/io/FileNotFoundException; {:try_start_489 .. :try_end_4d1} :catch_408
    .catch Ljava/io/IOException; {:try_start_489 .. :try_end_4d1} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_489 .. :try_end_4d1} :catch_46e

    goto/16 :goto_2ca

    .line 847
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_4d3
    :try_start_4d3
    new-instance v20, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "_photo.jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .restart local v20    # "file_picture":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 849
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_596

    .line 850
    const-string v2, "case:camera"

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_51d
    .catch Ljava/lang/Exception; {:try_start_4d3 .. :try_end_51d} :catch_563
    .catch Ljava/io/FileNotFoundException; {:try_start_4d3 .. :try_end_51d} :catch_408
    .catch Ljava/io/IOException; {:try_start_4d3 .. :try_end_51d} :catch_43b

    .line 851
    const/16 v16, 0x0

    .line 853
    .restart local v16    # "data":[B
    :try_start_51f
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 854
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 855
    .restart local v14    # "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 856
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_538
    .catch Ljava/lang/Exception; {:try_start_51f .. :try_end_538} :catch_57d
    .catch Ljava/io/FileNotFoundException; {:try_start_51f .. :try_end_538} :catch_408
    .catch Ljava/io/IOException; {:try_start_51f .. :try_end_538} :catch_43b

    move-result-object v16

    .line 860
    .end local v14    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_539
    const/4 v2, 0x0

    :try_start_53a
    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsBundle.putByteArray:["

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_561
    .catch Ljava/lang/Exception; {:try_start_53a .. :try_end_561} :catch_563
    .catch Ljava/io/FileNotFoundException; {:try_start_53a .. :try_end_561} :catch_408
    .catch Ljava/io/IOException; {:try_start_53a .. :try_end_561} :catch_43b

    goto/16 :goto_36b

    .line 892
    .end local v16    # "data":[B
    .end local v20    # "file_picture":Ljava/io/File;
    :catch_563
    move-exception v18

    .line 893
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-3:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_57b
    .catch Ljava/io/FileNotFoundException; {:try_start_564 .. :try_end_57b} :catch_408
    .catch Ljava/io/IOException; {:try_start_564 .. :try_end_57b} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_564 .. :try_end_57b} :catch_46e

    goto/16 :goto_36b

    .line 857
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v16    # "data":[B
    .restart local v20    # "file_picture":Ljava/io/File;
    :catch_57d
    move-exception v18

    .line 858
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_57e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-1:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_539

    .line 863
    .end local v16    # "data":[B
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_596
    const-string v2, "case:browse"

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 864
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_36b

    .line 865
    const/4 v2, 0x1

    aget-object v2, v29, v2

    if-eqz v2, :cond_36b

    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36b

    .line 866
    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5c0
    .catch Ljava/lang/Exception; {:try_start_57e .. :try_end_5c0} :catch_563
    .catch Ljava/io/FileNotFoundException; {:try_start_57e .. :try_end_5c0} :catch_408
    .catch Ljava/io/IOException; {:try_start_57e .. :try_end_5c0} :catch_43b

    move-result-object v28

    .line 868
    .local v28, "selectedImage":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 869
    .restart local v16    # "data":[B
    :try_start_5c3
    sget-object v2, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/facebook/android/Utility;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v16

    .line 870
    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 871
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsBundle.putByteArray:["

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_5fd
    .catch Ljava/lang/Exception; {:try_start_5c3 .. :try_end_5fd} :catch_5ff
    .catch Ljava/io/FileNotFoundException; {:try_start_5c3 .. :try_end_5fd} :catch_408
    .catch Ljava/io/IOException; {:try_start_5c3 .. :try_end_5fd} :catch_43b

    goto/16 :goto_36b

    .line 873
    :catch_5ff
    move-exception v18

    .line 874
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_600
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-2:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_36b

    .line 882
    .end local v16    # "data":[B
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v20    # "file_picture":Ljava/io/File;
    .end local v28    # "selectedImage":Landroid/net/Uri;
    :cond_619
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_36b

    .line 883
    const/4 v2, 0x0

    aget-object v2, v29, v2

    if-eqz v2, :cond_36b

    const/4 v2, 0x1

    aget-object v2, v29, v2

    if-eqz v2, :cond_36b

    .line 884
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36b

    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36b

    .line 885
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsBundle.putString:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_683
    .catch Ljava/lang/Exception; {:try_start_600 .. :try_end_683} :catch_563
    .catch Ljava/io/FileNotFoundException; {:try_start_600 .. :try_end_683} :catch_408
    .catch Ljava/io/IOException; {:try_start_600 .. :try_end_683} :catch_43b

    goto/16 :goto_36b

    .line 907
    .restart local v16    # "data":[B
    .restart local v20    # "file_picture":Ljava/io/File;
    :catch_685
    move-exception v18

    .line 908
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_686
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-4:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_3c2

    .line 914
    .end local v16    # "data":[B
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v20    # "file_picture":Ljava/io/File;
    :cond_69f
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_5f

    .line 915
    const/4 v2, 0x0

    aget-object v2, v29, v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x1

    aget-object v2, v29, v2

    if-eqz v2, :cond_5f

    .line 916
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const/4 v2, 0x1

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 917
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "paramsRequestParams.put:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v8, v29, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_70b
    .catch Ljava/lang/Exception; {:try_start_686 .. :try_end_70b} :catch_3ee
    .catch Ljava/io/FileNotFoundException; {:try_start_686 .. :try_end_70b} :catch_408
    .catch Ljava/io/IOException; {:try_start_686 .. :try_end_70b} :catch_43b

    goto/16 :goto_5f

    .line 942
    .end local v15    # "br":Ljava/io/BufferedReader;
    .end local v17    # "doc":Lorg/w3c/dom/Document;
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .end local v27    # "parser":Lcom/samsung/privilege/util/XMLParser;
    .end local v29    # "separated":[Ljava/lang/String;
    .end local v35    # "xml":Ljava/lang/String;
    .restart local v21    # "icon":I
    .restart local v30    # "strApp_name":Ljava/lang/String;
    :catch_70d
    move-exception v18

    .line 943
    .restart local v18    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Exception := "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 967
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v25    # "notificationOngoing":Landroid/app/Notification;
    :cond_728
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v8, 0x7f370000

    const/16 v11, 0x8

    invoke-virtual {v2, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_14d

    .line 995
    .restart local v34    # "title":Ljava/lang/String;
    :cond_735
    const/16 v2, 0x1a

    if-ne v5, v2, :cond_75a

    .line 999
    const/4 v11, 0x0

    new-instance v2, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil$InviteFriendListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v9, v11, v2, v8}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "HttpCall.RQ_POST:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_225

    .line 1001
    :cond_75a
    const/16 v2, 0x18

    if-eq v5, v2, :cond_762

    const/16 v2, 0x17

    if-ne v5, v2, :cond_792

    .line 1005
    :cond_762
    new-instance v23, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct/range {v23 .. v23}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1006
    .local v23, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v2, 0x1d4c0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 1007
    new-instance v2, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v9, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "myClient.post:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_225

    .line 1009
    .end local v23    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_792
    const/16 v2, 0x1b

    if-ne v5, v2, :cond_225

    .line 1010
    sget-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-nez v2, :cond_7ae

    .line 1011
    new-instance v2, Lcom/facebook/android/AsyncFacebookRunner;

    new-instance v8, Lcom/facebook/android/Facebook;

    sget-object v11, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v8}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v2, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 1014
    :cond_7ae
    sget-object v12, Lcom/facebook/android/Utility;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v11, "POST"

    new-instance v2, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object v8, v12

    move-object v12, v2

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    goto/16 :goto_225

    .line 1019
    :cond_7c1
    const-wide/16 v11, 0x3e8

    :try_start_7c3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7c6
    .catch Ljava/lang/Exception; {:try_start_7c3 .. :try_end_7c6} :catch_7c8

    goto/16 :goto_225

    .line 1020
    :catch_7c8
    move-exception v18

    .line 1021
    .restart local v18    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "error-7:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_225
.end method

.method public static saveMessageErrorToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "messageError"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveMessageErrorToFile:filepath="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",messageError="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 434
    const/4 v1, 0x0

    .line 436
    .local v1, "fileDestLog":Ljava/io/File;
    :try_start_1e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v3, "fileSource":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_49} :catch_5a

    .line 438
    .end local v1    # "fileDestLog":Ljava/io/File;
    .local v2, "fileDestLog":Ljava/io/File;
    :try_start_49
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 439
    .local v4, "writer":Ljava/io/FileWriter;
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 440
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 441
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_58} :catch_72

    move-object v1, v2

    .line 445
    .end local v2    # "fileDestLog":Ljava/io/File;
    .end local v3    # "fileSource":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "fileDestLog":Ljava/io/File;
    :goto_59
    return-void

    .line 442
    :catch_5a
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    :goto_5b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveMessageErrorToFile:Exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_59

    .line 442
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileDestLog":Ljava/io/File;
    .restart local v2    # "fileDestLog":Ljava/io/File;
    .restart local v3    # "fileSource":Ljava/io/File;
    :catch_72
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileDestLog":Ljava/io/File;
    .restart local v1    # "fileDestLog":Ljava/io/File;
    goto :goto_5b
.end method

.method public static saveParamsToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 18
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageHeader"    # Ljava/lang/String;
    .param p3, "filepath"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "pagemode"    # I
    .param p6, "params"    # Landroid/os/Bundle;

    .prologue
    .line 281
    :try_start_0
    const-string v8, "PostAsyncUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "filepath "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v8, "PostAsyncUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "message "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v2, Ljava/io/File;

    sget-object v8, Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v2, "folderQueue":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3c

    .line 286
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 289
    :cond_3c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, "gpxfile":Ljava/io/File;
    new-instance v7, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 292
    .local v7, "writer":Ljava/io/FileWriter;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{type}="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{url}="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{header}="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{message}="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 296
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{pagemode}="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 298
    if-eqz p6, :cond_ef

    .line 299
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 300
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e9
    :goto_e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_13a

    .line 311
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_ef
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V

    .line 312
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 314
    sget-object v8, Lcom/samsung/privilege/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "save-put:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 316
    sget-object v8, Lcom/samsung/privilege/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "save-enq:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 321
    .end local v2    # "folderQueue":Ljava/io/File;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/FileWriter;
    :goto_139
    return-void

    .line 301
    .restart local v2    # "folderQueue":Ljava/io/File;
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :cond_13a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 302
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "value":Ljava/lang/String;
    if-eqz v5, :cond_e9

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e9

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@@@@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 306
    const-string v8, "VAT_saveParamsToFile"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "key : = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " value := "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_194} :catch_196

    goto/16 :goto_e9

    .line 318
    .end local v2    # "folderQueue":Ljava/io/File;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "writer":Ljava/io/FileWriter;
    :catch_196
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception|saveParamsToFile):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_139
.end method

.method public static saveParamsToXMLSerializer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 19
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageHeader"    # Ljava/lang/String;
    .param p3, "filepath"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "pagemode"    # I
    .param p6, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, "gpxfile":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 345
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 346
    .local v8, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 348
    .local v7, "writer":Ljava/io/StringWriter;
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 350
    const-string v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 352
    const-string v9, ""

    const-string v10, "post"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    const-string v9, ""

    const-string v10, "type"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    invoke-interface {v8, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    const-string v9, ""

    const-string v10, "type"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    const-string v9, ""

    const-string v10, "url"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    invoke-interface {v8, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    const-string v9, ""

    const-string v10, "url"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string v9, ""

    const-string v10, "header"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    invoke-interface {v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    const-string v9, ""

    const-string v10, "header"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    const-string v9, ""

    const-string v10, "message"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    move-object/from16 v0, p4

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    const-string v9, ""

    const-string v10, "message"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    const-string v9, ""

    const-string v10, "pagemode"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    const-string v9, ""

    const-string v10, "pagemode"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    if-eqz p6, :cond_b7

    .line 387
    const-string v9, ""

    const-string v10, "params"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 390
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_aa
    :goto_aa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_12b

    .line 406
    const-string v9, ""

    const-string v10, "params"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b7
    const-string v9, ""

    const-string v10, "post"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 415
    const-string v9, "VAT_POST"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "writer.toString() "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 419
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 421
    sget-object v9, Lcom/samsung/privilege/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "save-put:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 423
    sget-object v9, Lcom/samsung/privilege/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "save-enq:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 429
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/StringWriter;
    .end local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_12a
    return-void

    .line 391
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "writer":Ljava/io/StringWriter;
    .restart local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_12b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 392
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "value":Ljava/lang/String;
    if-eqz v5, :cond_aa

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_aa

    .line 396
    const-string v9, ""

    invoke-interface {v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const-string v9, ""

    invoke-interface {v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14e} :catch_150

    goto/16 :goto_aa

    .line 426
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "writer":Ljava/io/StringWriter;
    .end local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_150
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|saveParamsToFile):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_12a
.end method
