.class public Lic/buzzebeeslib/util/PostAsyncUtil;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;,
        Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;
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

.field private static gCheckFileTask:Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;

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

    .line 66
    const-string v0, ""

    sput-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gSrtMessageFailSimple:Ljava/lang/String;

    .line 93
    sput-boolean v1, Lic/buzzebeeslib/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    .line 94
    sput-boolean v1, Lic/buzzebeeslib/util/PostAsyncUtil;->TASK_POSTASYNC_WORKING:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gIntRequestID:I

    .line 99
    const-class v0, Lic/buzzebeeslib/util/PostAsyncUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    .line 101
    const-string v0, ""

    sput-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->LOG_POST_ASYNC:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DeleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pFilepath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 221
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeleteFile:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 222
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    .line 229
    .end local v1    # "file":Ljava/io/File;
    :cond_22
    :goto_22
    return-void

    .line 226
    :catch_23
    move-exception v0

    .line 227
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

    invoke-static {p0, v2, v4}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_22
.end method

.method public static LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "stamp_date"    # Z

    .prologue
    .line 119
    return-void
.end method

.method private static MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 16
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pFilepath"    # Ljava/lang/String;
    .param p2, "pPostAsyncProcess"    # I

    .prologue
    const/4 v12, 0x1

    .line 162
    const/4 v0, 0x0

    .line 166
    .local v0, "IsMoveFile":Z
    const/4 v2, 0x0

    .line 167
    .local v2, "fileDest":Ljava/io/File;
    const/4 v4, 0x0

    .line 170
    .local v4, "fileDestPicture":Ljava/io/File;
    :try_start_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v6, "fileSource":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_photo.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v7, "fileSourcePicture":Ljava/io/File;
    const/4 v10, 0x2

    if-ne p2, v10, :cond_e6

    .line 174
    new-instance v8, Ljava/io/File;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v8, "folderFail":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_36

    .line 176
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_36
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

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
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_15f

    .line 180
    .end local v2    # "fileDest":Ljava/io/File;
    .local v3, "fileDest":Ljava/io/File;
    :try_start_54
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

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
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_78} :catch_19c

    .end local v4    # "fileDestPicture":Ljava/io/File;
    .local v5, "fileDestPicture":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fileDestPicture":Ljava/io/File;
    .restart local v4    # "fileDestPicture":Ljava/io/File;
    move-object v2, v3

    .line 191
    .end local v3    # "fileDest":Ljava/io/File;
    .end local v8    # "folderFail":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    :cond_7a
    :goto_7a
    :try_start_7a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 192
    invoke-static {v6, v2}, Lic/buzzebeeslib/util/PostAsyncUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_140

    .line 194
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

    invoke-static {p0, v10, v11}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 199
    :cond_a3
    :goto_a3
    if-eqz v0, :cond_cb

    .line 200
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 201
    invoke-static {v7, v4}, Lic/buzzebeeslib/util/PostAsyncUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 202
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

    invoke-static {p0, v10, v11}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_cb} :catch_15f

    .line 206
    :cond_cb
    if-eqz v0, :cond_e5

    .line 208
    :try_start_cd
    sget-object v10, Lic/buzzebeeslib/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MAP_POSTASYN.remove:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e5} :catch_178

    .line 217
    .end local v6    # "fileSource":Ljava/io/File;
    .end local v7    # "fileSourcePicture":Ljava/io/File;
    :cond_e5
    :goto_e5
    return-void

    .line 181
    .restart local v6    # "fileSource":Ljava/io/File;
    .restart local v7    # "fileSourcePicture":Ljava/io/File;
    :cond_e6
    if-ne p2, v12, :cond_7a

    .line 182
    :try_start_e8
    new-instance v9, Ljava/io/File;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v9, "folderSuccess":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_fa

    .line 184
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_fa
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

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
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_118} :catch_15f

    .line 188
    .end local v2    # "fileDest":Ljava/io/File;
    .restart local v3    # "fileDest":Ljava/io/File;
    :try_start_118
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;

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
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_13c} :catch_19c

    .end local v4    # "fileDestPicture":Ljava/io/File;
    .restart local v5    # "fileDestPicture":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "fileDestPicture":Ljava/io/File;
    .restart local v4    # "fileDestPicture":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "fileDest":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    goto/16 :goto_7a

    .line 196
    .end local v9    # "folderSuccess":Ljava/io/File;
    :cond_140
    :try_start_140
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

    invoke-static {p0, v10, v11}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_15d} :catch_15f

    goto/16 :goto_a3

    .line 214
    .end local v6    # "fileSource":Ljava/io/File;
    .end local v7    # "fileSourcePicture":Ljava/io/File;
    :catch_15f
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    :goto_160
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(Exception|DeleteFileAndPhoto|1"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10, v12}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_e5

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "fileSource":Ljava/io/File;
    .restart local v7    # "fileSourcePicture":Ljava/io/File;
    :catch_178
    move-exception v1

    .line 211
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_179
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(Exception)MAP_POSTASYN.remove:["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {p0, v10, v11}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_19a} :catch_15f

    goto/16 :goto_e5

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fileDest":Ljava/io/File;
    .restart local v3    # "fileDest":Ljava/io/File;
    :catch_19c
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileDest":Ljava/io/File;
    .restart local v2    # "fileDest":Ljava/io/File;
    goto :goto_160
.end method

.method public static PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "pathQueue":Ljava/lang/String;
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
.end method

.method public static PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "pathQueue":Ljava/lang/String;
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
.end method

.method public static PATH_SUCCESS(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "pathQueue":Ljava/lang/String;
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
.end method

.method public static StartCheckFileTaskXXX(Landroid/content/Context;)V
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 496
    sget-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 497
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    .line 500
    :cond_c
    sget-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gCheckFileTask:Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;

    if-nez v0, :cond_30

    .line 501
    if-eqz p0, :cond_1a

    .line 503
    sget v0, Lic/buzzebeeslib/R$string;->message_post_error_simple:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gSrtMessageFailSimple:Ljava/lang/String;

    .line 505
    :cond_1a
    new-instance v0, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gCheckFileTask:Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_31

    .line 509
    sget-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gCheckFileTask:Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 514
    :cond_30
    :goto_30
    return-void

    .line 511
    :cond_31
    sget-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gCheckFileTask:Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_30
.end method

.method static synthetic access$0(Z)V
    .registers 1

    .prologue
    .line 93
    sput-boolean p0, Lic/buzzebeeslib/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    return-void
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 93
    sget-boolean v0, Lic/buzzebeeslib/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z

    return v0
.end method

.method static synthetic access$2(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 626
    invoke-static {p0, p1}, Lic/buzzebeeslib/util/PostAsyncUtil;->posting(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lic/buzzebeeslib/util/PostAsyncUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 219
    invoke-static {p0, p1}, Lic/buzzebeeslib/util/PostAsyncUtil;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lic/buzzebeeslib/util/PostAsyncUtil;->MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1053
    invoke-static/range {p0 .. p6}, Lic/buzzebeeslib/util/PostAsyncUtil;->notificationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

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

    .line 423
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v5, "params":Landroid/os/Bundle;
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "separated":[Ljava/lang/String;
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "picture"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 426
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 427
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_38
    return-object v5

    .line 429
    :cond_39
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_photo.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v3, "file_picture":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 431
    const/4 v1, 0x0

    .line 433
    .local v1, "data":[B
    :try_start_58
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 434
    .local v4, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 435
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 436
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6f} :catch_76

    move-result-object v1

    .line 440
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "myBitmap":Landroid/graphics/Bitmap;
    :goto_70
    const-string v8, "picture"

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_38

    .line 437
    :catch_76
    move-exception v2

    .line 438
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

    invoke-static {p0, v8, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_70

    .line 442
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8e
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 444
    .local v6, "selectedImage":Landroid/net/Uri;
    :try_start_98
    const-string v8, "picture"

    invoke-static {p0, v6}, Lic/buzzebeeslib/util/image/Utils;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a1} :catch_a2

    goto :goto_38

    .line 445
    :catch_a2
    move-exception v2

    .line 446
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

    invoke-static {p0, v8, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_38

    .line 451
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file_picture":Ljava/io/File;
    .end local v6    # "selectedImage":Landroid/net/Uri;
    :cond_bb
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38
.end method

.method public static convertFileToRequestParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;
    .registers 15
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrText"    # Ljava/lang/String;
    .param p2, "pFilepath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 458
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 459
    .local v5, "params":Lcom/loopj/android/http/RequestParams;
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 460
    .local v7, "separated":[Ljava/lang/String;
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "picture"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 461
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 462
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_38
    return-object v5

    .line 464
    :cond_39
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_photo.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v3, "file_picture":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_93

    .line 466
    const/4 v1, 0x0

    .line 468
    .local v1, "data":[B
    :try_start_58
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 469
    .local v4, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 470
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 471
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6f} :catch_7b

    move-result-object v1

    .line 475
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "myBitmap":Landroid/graphics/Bitmap;
    :goto_70
    const-string v8, "source"

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_38

    .line 472
    :catch_7b
    move-exception v2

    .line 473
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

    invoke-static {p0, v8, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_70

    .line 477
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_93
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 478
    .local v6, "selectedImage":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 480
    .restart local v1    # "data":[B
    :try_start_9e
    invoke-static {p0, v6}, Lic/buzzebeeslib/util/image/Utils;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v1

    .line 481
    const-string v8, "source"

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ac} :catch_ad

    goto :goto_38

    .line 482
    :catch_ad
    move-exception v2

    .line 483
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

    invoke-static {p0, v8, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_38

    .line 488
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file_picture":Ljava/io/File;
    .end local v6    # "selectedImage":Landroid/net/Uri;
    :cond_c6
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

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 126
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_37
    .catchall {:try_start_3 .. :try_end_d} :catchall_45

    .line 127
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

    .line 129
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x400

    :try_start_1a
    new-array v4, v7, [B

    .line 130
    .local v4, "buf":[B
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 133
    :cond_1f
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 134
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_61
    .catchall {:try_start_1a .. :try_end_25} :catchall_5a

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1f

    .line 139
    if-eqz v1, :cond_2e

    .line 140
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 141
    :cond_2e
    if-eqz v3, :cond_33

    .line 142
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_53

    .line 148
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

    .line 135
    :catch_37
    move-exception v5

    .line 139
    .local v5, "e":Ljava/io/IOException;
    :goto_38
    if-eqz v0, :cond_3d

    .line 140
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 141
    :cond_3d
    if-eqz v2, :cond_36

    .line 142
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_36

    .line 143
    :catch_43
    move-exception v5

    .line 144
    goto :goto_36

    .line 137
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_45
    move-exception v7

    .line 139
    :goto_46
    if-eqz v0, :cond_4b

    .line 140
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 141
    :cond_4b
    if-eqz v2, :cond_50

    .line 142
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_51

    .line 146
    :cond_50
    throw v7

    .line 143
    :catch_51
    move-exception v5

    .line 144
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_36

    .line 143
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

    .line 144
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_36

    .line 137
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

    .line 135
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

.method public static getFileType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 401
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v2, "file":Ljava/io/File;
    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 406
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 407
    const-string v4, "{type}=Bundle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_2e

    move-result v4

    if-eqz v4, :cond_20

    .line 408
    const-string v4, "Bundle"

    .line 419
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :goto_1f
    return-object v4

    .line 409
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

    .line 410
    const-string v4, "RequestParams"

    goto :goto_1f

    .line 412
    :cond_2b
    const-string v4, ""

    goto :goto_1f

    .line 415
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 416
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

    invoke-static {p0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 419
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
    .line 594
    const/4 v4, 0x0

    .line 595
    .local v4, "theReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 598
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

    .line 599
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .local v5, "theReader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 601
    .local v0, "charArray":[C
    :try_start_d
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_24

    .line 602
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "The file is larger than int max = 2147483647"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_1f} :catch_60
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1f} :catch_5d
    .catchall {:try_start_d .. :try_end_1f} :catchall_5a

    .line 617
    :goto_1f
    :try_start_1f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_54

    move-object v4, v5

    .line 623
    .end local v0    # "charArray":[C
    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    :goto_23
    return-object v2

    .line 604
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v0    # "charArray":[C
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [C

    .line 607
    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/BufferedReader;->read([CII)I

    .line 608
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_39} :catch_60
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_39} :catch_5d
    .catchall {:try_start_24 .. :try_end_39} :catchall_5a

    .end local v2    # "returnString":Ljava/lang/String;
    .local v3, "returnString":Ljava/lang/String;
    move-object v2, v3

    .line 611
    .end local v3    # "returnString":Ljava/lang/String;
    .restart local v2    # "returnString":Ljava/lang/String;
    goto :goto_1f

    .end local v0    # "charArray":[C
    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    :catch_3b
    move-exception v1

    .line 612
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_3c
    :try_start_3c
    throw v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 615
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catchall_3d
    move-exception v6

    .line 617
    :goto_3e
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4f

    .line 621
    :goto_41
    throw v6

    .line 613
    :catch_42
    move-exception v1

    .line 614
    .local v1, "ex":Ljava/io/IOException;
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3d

    .line 617
    :try_start_46
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_23

    .line 618
    :catch_4a
    move-exception v1

    .line 619
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 618
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_4f
    move-exception v1

    .line 619
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .line 618
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v0    # "charArray":[C
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catch_54
    move-exception v1

    .line 619
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_23

    .line 615
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catchall_5a
    move-exception v6

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 613
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catch_5d
    move-exception v1

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_43

    .line 611
    .end local v4    # "theReader":Ljava/io/BufferedReader;
    .restart local v5    # "theReader":Ljava/io/BufferedReader;
    :catch_60
    move-exception v1

    move-object v4, v5

    .end local v5    # "theReader":Ljava/io/BufferedReader;
    .restart local v4    # "theReader":Ljava/io/BufferedReader;
    goto :goto_3c
.end method

.method private static isSDMounted()Z
    .registers 2

    .prologue
    .line 158
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
    .line 153
    invoke-static {p0, p1}, Lic/buzzebeeslib/util/PostAsyncUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

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
    .registers 23
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrPageHeader"    # Ljava/lang/String;
    .param p2, "pStrMessage"    # Ljava/lang/String;
    .param p3, "pIntPAGE_MODE"    # I
    .param p4, "pIntNotification_posting_number"    # I
    .param p5, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p6, "pfilepath"    # Ljava/lang/String;

    .prologue
    .line 1054
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v7, "file":Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

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

    .line 1057
    .local v8, "fileFail":Ljava/lang/String;
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1058
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "cancel Notification number="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1061
    const-string v13, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "pNotificationManager":Landroid/app/NotificationManager;
    check-cast p5, Landroid/app/NotificationManager;

    .line 1063
    .restart local p5    # "pNotificationManager":Landroid/app/NotificationManager;
    new-instance v13, Ljava/lang/StringBuilder;

    sget v14, Lic/buzzebeeslib/R$string;->app_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": fail !"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1065
    .local v12, "tickerText":Ljava/lang/String;
    sget v9, Lic/buzzebeeslib/R$drawable;->bz_icon_noti:I

    .line 1067
    .local v9, "icon":I
    new-instance v11, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v11, v9, v12, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1068
    .local v11, "notification":Landroid/app/Notification;
    iget v13, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v11, Landroid/app/Notification;->flags:I

    .line 1069
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "create Notification:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1071
    new-instance v10, Landroid/content/Intent;

    const-class v13, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1072
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v13, 0x14000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1073
    const-string v13, "file_fail"

    invoke-virtual {v10, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    sget v13, Lic/buzzebeeslib/util/PostAsyncUtil;->gIntRequestID:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v10, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1076
    .local v3, "activity":Landroid/app/PendingIntent;
    new-instance v13, Ljava/lang/StringBuilder;

    sget v14, Lic/buzzebeeslib/R$string;->app_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ": fail !"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1077
    .local v5, "contentTitle":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1078
    .local v4, "contentText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v5, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1080
    iget v13, v11, Landroid/app/Notification;->number:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v11, Landroid/app/Notification;->number:I

    .line 1085
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

    .line 1088
    .local v2, "IntNotification_posting_number":I
    :try_start_fd
    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1089
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "notify Notification number="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_117} :catch_118

    .line 1093
    :goto_117
    return-void

    .line 1090
    :catch_118
    move-exception v6

    .line 1091
    .local v6, "ex":Ljava/lang/Exception;
    const-string v13, "error:pNotificationManager.notify(IntNotification_posting_number, notification);"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_117
.end method

.method private static notificationSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 20
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pStrPageHeader"    # Ljava/lang/String;
    .param p2, "pStrMessage"    # Ljava/lang/String;
    .param p3, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p4, "pfilepath"    # Ljava/lang/String;

    .prologue
    .line 1020
    const-string v12, "notification"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "pNotificationManager":Landroid/app/NotificationManager;
    check-cast p3, Landroid/app/NotificationManager;

    .line 1022
    .restart local p3    # "pNotificationManager":Landroid/app/NotificationManager;
    new-instance v12, Ljava/lang/StringBuilder;

    sget v13, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":successfully"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1024
    .local v11, "tickerText":Ljava/lang/String;
    sget v8, Lic/buzzebeeslib/R$drawable;->bz_icon_noti:I

    .line 1026
    .local v8, "icon":I
    new-instance v10, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v10, v8, v11, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1027
    .local v10, "notification":Landroid/app/Notification;
    iget v12, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v10, Landroid/app/Notification;->flags:I

    .line 1028
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "create Notification:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1030
    new-instance v9, Landroid/content/Intent;

    const-class v12, Lic/buzzebeeslib/activity/MarketPlaceActivity;

    invoke-direct {v9, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1031
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v12, 0x14000000

    invoke-virtual {v9, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1033
    sget v12, Lic/buzzebeeslib/util/PostAsyncUtil;->gIntRequestID:I

    const/4 v13, 0x0

    invoke-static {p0, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1034
    .local v3, "activity":Landroid/app/PendingIntent;
    new-instance v12, Ljava/lang/StringBuilder;

    sget v13, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":successfully"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1035
    .local v5, "contentTitle":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1036
    .local v4, "contentText":Ljava/lang/String;
    invoke-virtual {v10, p0, v5, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1037
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "setLatestEventInfo:title="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",text="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1039
    iget v12, v10, Landroid/app/Notification;->number:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v10, Landroid/app/Notification;->number:I

    .line 1043
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1046
    .local v2, "IntNotification_posting_number":I
    :try_start_d0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1047
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "notify Notification number="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e8} :catch_e9

    .line 1051
    :goto_e8
    return-void

    .line 1048
    :catch_e9
    move-exception v6

    .line 1049
    .local v6, "ex":Ljava/lang/Exception;
    const-string v12, "error:pNotificationManager.notify(IntNotification_posting_number, notification);"

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_e8
.end method

.method private static posting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 38
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "posting:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 629
    const-string v6, ""

    .line 630
    .local v6, "StrPageHeaderPost":Ljava/lang/String;
    const-string v7, ""

    .line 631
    .local v7, "StrMessage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 632
    .local v8, "IntPAGE_MODE":I
    const/4 v9, 0x0

    .line 634
    .local v9, "IntNotification_posting_number":I
    const/4 v10, 0x0

    .line 636
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    const-string v27, ""

    .line 637
    .local v27, "strLine":Ljava/lang/String;
    const-string v29, ""

    .line 638
    .local v29, "strText":Ljava/lang/String;
    const-string v30, ""

    .line 639
    .local v30, "strType":Ljava/lang/String;
    const-string v31, ""

    .line 641
    .local v31, "strURL":Ljava/lang/String;
    const/16 v20, 0x0

    .line 642
    .local v20, "myBitmap":Landroid/graphics/Bitmap;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v17, "file":Ljava/io/File;
    const-string v28, ""

    .line 647
    .local v28, "strSumLine":Ljava/lang/String;
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v23, "paramsBundle":Landroid/os/Bundle;
    new-instance v24, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v24 .. v24}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 651
    .local v24, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    :try_start_3d
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 653
    .local v13, "br":Ljava/io/BufferedReader;
    :cond_49
    :goto_49
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4c} :catch_49c

    move-result-object v27

    if-nez v27, :cond_217

    .line 810
    .end local v13    # "br":Ljava/io/BufferedReader;
    :goto_4f
    :try_start_4f
    sget v19, Lic/buzzebeeslib/R$drawable;->bz_icon_noti:I

    .line 811
    .local v19, "icon":I
    new-instance v22, Landroid/app/Notification;

    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lic/buzzebeeslib/R$string;->app_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

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

    .line 813
    .local v22, "notificationOngoing":Landroid/app/Notification;
    move-object/from16 v0, v22

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v22

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 814
    const-string v4, "create Notification:FLAG_ONGOING_EVENT"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 820
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

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set Notification number:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 824
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v11, Lic/buzzebeeslib/R$layout;->bz_post_async_notification:I

    invoke-direct {v4, v5, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    iput-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 826
    if-eqz v20, :cond_721

    .line 827
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lic/buzzebeeslib/R$idPostAsyncNotification;->imgThumb:I

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 829
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lic/buzzebeeslib/R$idPostAsyncNotification;->imgThumb:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v33, Lic/buzzebeeslib/R$drawable;->bz_icon_post_status_no_photo:I

    move/from16 v0, v33

    invoke-static {v11, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set Notification image:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

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

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 835
    :goto_12f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 836
    .local v32, "title":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lic/buzzebeeslib/R$idPostAsyncNotification;->tvTitle:I

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set Notification title:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 839
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lic/buzzebeeslib/R$idPostAsyncNotification;->imgBuzzeBees:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, v19

    invoke-static {v11, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 840
    const-string v4, "set notificationOngoing.contentView.setImageViewBitmap"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 842
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/NotificationManager;

    move-object v10, v0

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IntNotification_posting_number="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_1a4} :catch_72e

    .line 845
    :try_start_1a4
    move-object/from16 v0, v22

    invoke-virtual {v10, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 846
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notify Notification number:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1be} :catch_756

    .line 854
    .end local v19    # "icon":I
    .end local v22    # "notificationOngoing":Landroid/app/Notification;
    .end local v32    # "title":Ljava/lang/String;
    :goto_1be
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->onPostBegin()V

    .line 856
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LibEnum.ENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 858
    const/16 v4, 0x18

    if-ne v8, v4, :cond_210

    .line 859
    new-instance v21, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct/range {v21 .. v21}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 860
    .local v21, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v4, 0x1d4c0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 861
    new-instance v4, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    move-object/from16 v5, p0

    move-object/from16 v11, p1

    invoke-direct/range {v4 .. v11}, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "myClient.post:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 865
    .end local v21    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_210
    :goto_210
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_761

    .line 872
    return-void

    .line 655
    .restart local v13    # "br":Ljava/io/BufferedReader;
    :cond_217
    :try_start_217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 657
    const-string v4, "VAT_POST_VAT"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "strLine "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v4, "VAT_POST_VAT"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "strSumLine "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v4, "@@@@"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_49

    .line 662
    const-string v4, "@@@@"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 667
    const-string v4, "="

    const/4 v5, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 669
    .local v26, "separated":[Ljava/lang/String;
    const-string v4, "VAT_POST_VAT"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "separated[0].trim() "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v4, "VAT_POST_VAT"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "separated[1].trim() "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v28, ""
    :try_end_2b2
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_2b2} :catch_49c

    .line 674
    const/4 v4, 0x0

    :try_start_2b3
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{type}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c8

    .line 675
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_2c7} :catch_4b8
    .catch Ljava/io/IOException; {:try_start_2b3 .. :try_end_2c7} :catch_49c

    move-result-object v30

    .line 682
    :cond_2c8
    :goto_2c8
    const/4 v4, 0x0

    :try_start_2c9
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{url}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2de

    .line 683
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2dd
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2dd} :catch_4d3
    .catch Ljava/io/IOException; {:try_start_2c9 .. :try_end_2dd} :catch_49c

    move-result-object v31

    .line 690
    :cond_2de
    :goto_2de
    const/4 v4, 0x0

    :try_start_2df
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{header}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f4

    .line 691
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_2f3} :catch_4ee
    .catch Ljava/io/IOException; {:try_start_2df .. :try_end_2f3} :catch_49c

    move-result-object v6

    .line 698
    :cond_2f4
    :goto_2f4
    const/4 v4, 0x0

    :try_start_2f5
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{message}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31a

    .line 699
    const/4 v4, 0x1

    aget-object v7, v26, v4

    .line 700
    const-string v4, "VAT_POST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "StrMessage "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_31a} :catch_509
    .catch Ljava/io/IOException; {:try_start_2f5 .. :try_end_31a} :catch_49c

    .line 707
    :cond_31a
    :goto_31a
    const/4 v4, 0x0

    :try_start_31b
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{pagemode}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_347

    .line 708
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_347

    .line 709
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_346
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_346} :catch_524
    .catch Ljava/io/IOException; {:try_start_31b .. :try_end_346} :catch_49c

    move-result v8

    .line 717
    :cond_347
    :goto_347
    :try_start_347
    const-string v4, "Bundle"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_400

    .line 718
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "picture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36f

    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f9

    .line 719
    :cond_36f
    new-instance v18, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_photo.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    .local v18, "file_picture":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

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

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 721
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_577

    .line 722
    const-string v4, "case:camera"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3bd
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_3bd} :catch_55b
    .catch Ljava/io/IOException; {:try_start_347 .. :try_end_3bd} :catch_49c

    .line 723
    const/4 v14, 0x0

    .line 725
    .local v14, "data":[B
    :try_start_3be
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 726
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 727
    .local v12, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 728
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3d7
    .catch Ljava/lang/Exception; {:try_start_3be .. :try_end_3d7} :catch_53f
    .catch Ljava/io/IOException; {:try_start_3be .. :try_end_3d7} :catch_49c

    move-result-object v14

    .line 732
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_3d8
    const/4 v4, 0x0

    :try_start_3d9
    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "paramsBundle.putByteArray:["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_400
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_400} :catch_55b
    .catch Ljava/io/IOException; {:try_start_3d9 .. :try_end_400} :catch_49c

    .line 769
    .end local v14    # "data":[B
    .end local v18    # "file_picture":Ljava/io/File;
    :cond_400
    :goto_400
    :try_start_400
    const-string v4, "RequestParams"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 770
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_685

    .line 771
    new-instance v18, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_photo.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v18    # "file_picture":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z
    :try_end_438
    .catch Ljava/lang/Exception; {:try_start_400 .. :try_end_438} :catch_480
    .catch Ljava/io/IOException; {:try_start_400 .. :try_end_438} :catch_49c

    move-result v4

    if-eqz v4, :cond_49

    .line 773
    const/4 v14, 0x0

    .line 775
    .restart local v14    # "data":[B
    :try_start_43c
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 776
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 777
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 778
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_455
    .catch Ljava/lang/Exception; {:try_start_43c .. :try_end_455} :catch_669
    .catch Ljava/io/IOException; {:try_start_43c .. :try_end_455} :catch_49c

    move-result-object v14

    .line 782
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_456
    :try_start_456
    const-string v4, "source"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "paramsRequestParams.put:source["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_47e
    .catch Ljava/lang/Exception; {:try_start_456 .. :try_end_47e} :catch_480
    .catch Ljava/io/IOException; {:try_start_456 .. :try_end_47e} :catch_49c

    goto/16 :goto_49

    .line 798
    .end local v14    # "data":[B
    .end local v18    # "file_picture":Ljava/io/File;
    :catch_480
    move-exception v15

    .line 799
    .local v15, "e":Ljava/lang/Exception;
    :try_start_481
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error-5:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_49a
    .catch Ljava/io/IOException; {:try_start_481 .. :try_end_49a} :catch_49c

    goto/16 :goto_49

    .line 805
    .end local v13    # "br":Ljava/io/BufferedReader;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v26    # "separated":[Ljava/lang/String;
    :catch_49c
    move-exception v15

    .line 806
    .local v15, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error-6:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_4f

    .line 677
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v13    # "br":Ljava/io/BufferedReader;
    .restart local v26    # "separated":[Ljava/lang/String;
    :catch_4b8
    move-exception v15

    .line 678
    .local v15, "e":Ljava/lang/Exception;
    :try_start_4b9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error:not found {type}:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2c8

    .line 685
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_4d3
    move-exception v15

    .line 686
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error:not found {url}:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2de

    .line 693
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_4ee
    move-exception v15

    .line 694
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error:not found {header}:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2f4

    .line 702
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_509
    move-exception v15

    .line 703
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error:not found {message}:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_31a

    .line 712
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_524
    move-exception v15

    .line 713
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error:not found {pagemode}:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_53d
    .catch Ljava/io/IOException; {:try_start_4b9 .. :try_end_53d} :catch_49c

    goto/16 :goto_347

    .line 729
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v14    # "data":[B
    .restart local v18    # "file_picture":Ljava/io/File;
    :catch_53f
    move-exception v15

    .line 730
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_540
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error-1:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_559
    .catch Ljava/lang/Exception; {:try_start_540 .. :try_end_559} :catch_55b
    .catch Ljava/io/IOException; {:try_start_540 .. :try_end_559} :catch_49c

    goto/16 :goto_3d8

    .line 764
    .end local v14    # "data":[B
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "file_picture":Ljava/io/File;
    :catch_55b
    move-exception v15

    .line 765
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_55c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error-3:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_575
    .catch Ljava/io/IOException; {:try_start_55c .. :try_end_575} :catch_49c

    goto/16 :goto_400

    .line 735
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v18    # "file_picture":Ljava/io/File;
    :cond_577
    :try_start_577
    const-string v4, "case:browse"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 736
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_400

    .line 737
    const/4 v4, 0x1

    aget-object v4, v26, v4

    if-eqz v4, :cond_400

    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_400

    .line 738
    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5a3
    .catch Ljava/lang/Exception; {:try_start_577 .. :try_end_5a3} :catch_55b
    .catch Ljava/io/IOException; {:try_start_577 .. :try_end_5a3} :catch_49c

    move-result-object v25

    .line 740
    .local v25, "selectedImage":Landroid/net/Uri;
    const/4 v14, 0x0

    .line 741
    .restart local v14    # "data":[B
    :try_start_5a5
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/image/Utils;->scaleImage(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v14

    .line 742
    const/4 v4, 0x0

    array-length v5, v14

    invoke-static {v14, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 743
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "paramsBundle.putByteArray:["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_5db
    .catch Ljava/lang/Exception; {:try_start_5a5 .. :try_end_5db} :catch_5dd
    .catch Ljava/io/IOException; {:try_start_5a5 .. :try_end_5db} :catch_49c

    goto/16 :goto_400

    .line 745
    :catch_5dd
    move-exception v15

    .line 746
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_5de
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error-2:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_400

    .line 752
    .end local v14    # "data":[B
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "file_picture":Ljava/io/File;
    .end local v25    # "selectedImage":Landroid/net/Uri;
    :cond_5f9
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_400

    .line 753
    const/4 v4, 0x0

    aget-object v4, v26, v4

    if-eqz v4, :cond_400

    const/4 v4, 0x1

    aget-object v4, v26, v4

    if-eqz v4, :cond_400

    .line 754
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_400

    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_400

    .line 756
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

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "paramsBundle.putString:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

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

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_667
    .catch Ljava/lang/Exception; {:try_start_5de .. :try_end_667} :catch_55b
    .catch Ljava/io/IOException; {:try_start_5de .. :try_end_667} :catch_49c

    goto/16 :goto_400

    .line 779
    .restart local v14    # "data":[B
    .restart local v18    # "file_picture":Ljava/io/File;
    :catch_669
    move-exception v15

    .line 780
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_66a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error-4:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_456

    .line 786
    .end local v14    # "data":[B
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "file_picture":Ljava/io/File;
    :cond_685
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    .line 787
    const/4 v4, 0x0

    aget-object v4, v26, v4

    if-eqz v4, :cond_49

    const/4 v4, 0x1

    aget-object v4, v26, v4

    if-eqz v4, :cond_49

    .line 788
    const/4 v4, 0x0

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    const/4 v4, 0x1

    aget-object v4, v26, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 790
    const-string v4, "VAT_POST"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "separated[0].trim() "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v26, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " separated[1].trim() "

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

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
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

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "paramsRequestParams.put:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v26, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

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

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_71f
    .catch Ljava/lang/Exception; {:try_start_66a .. :try_end_71f} :catch_480
    .catch Ljava/io/IOException; {:try_start_66a .. :try_end_71f} :catch_49c

    goto/16 :goto_49

    .line 832
    .end local v13    # "br":Ljava/io/BufferedReader;
    .end local v26    # "separated":[Ljava/lang/String;
    .restart local v19    # "icon":I
    .restart local v22    # "notificationOngoing":Landroid/app/Notification;
    :cond_721
    :try_start_721
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lic/buzzebeeslib/R$idPostAsyncNotification;->imgThumb:I

    const/16 v11, 0x8

    invoke-virtual {v4, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_72c
    .catch Ljava/lang/Exception; {:try_start_721 .. :try_end_72c} :catch_72e

    goto/16 :goto_12f

    .line 850
    .end local v19    # "icon":I
    .end local v22    # "notificationOngoing":Landroid/app/Notification;
    :catch_72e
    move-exception v15

    .line 851
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error-7:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1be

    .line 847
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v19    # "icon":I
    .restart local v22    # "notificationOngoing":Landroid/app/Notification;
    .restart local v32    # "title":Ljava/lang/String;
    :catch_756
    move-exception v16

    .line 848
    .local v16, "ex":Ljava/lang/Exception;
    :try_start_757
    const-string v4, "error:notificationManager.notify(IntNotification_posting_number, notificationOngoing);"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_75f
    .catch Ljava/lang/Exception; {:try_start_757 .. :try_end_75f} :catch_72e

    goto/16 :goto_1be

    .line 867
    .end local v16    # "ex":Ljava/lang/Exception;
    .end local v19    # "icon":I
    .end local v22    # "notificationOngoing":Landroid/app/Notification;
    .end local v32    # "title":Ljava/lang/String;
    :cond_761
    const-wide/16 v4, 0x3e8

    :try_start_763
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_766
    .catch Ljava/lang/Exception; {:try_start_763 .. :try_end_766} :catch_768

    goto/16 :goto_210

    .line 868
    :catch_768
    move-exception v15

    .line 869
    .restart local v15    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error-7:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_210
.end method

.method public static saveMessageErrorToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "messageError"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveMessageErrorToFile:filepath="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",messageError="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 387
    const/4 v1, 0x0

    .line 389
    .local v1, "fileDestLog":Ljava/io/File;
    :try_start_1e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v3, "fileSource":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_FAIL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_47} :catch_58

    .line 391
    .end local v1    # "fileDestLog":Ljava/io/File;
    .local v2, "fileDestLog":Ljava/io/File;
    :try_start_47
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 392
    .local v4, "writer":Ljava/io/FileWriter;
    invoke-virtual {v4, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 393
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 394
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_70

    move-object v1, v2

    .line 398
    .end local v2    # "fileDestLog":Ljava/io/File;
    .end local v3    # "fileSource":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "fileDestLog":Ljava/io/File;
    :goto_57
    return-void

    .line 395
    :catch_58
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    :goto_59
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveMessageErrorToFile:Exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_57

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileDestLog":Ljava/io/File;
    .restart local v2    # "fileDestLog":Ljava/io/File;
    .restart local v3    # "fileSource":Ljava/io/File;
    :catch_70
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileDestLog":Ljava/io/File;
    .restart local v1    # "fileDestLog":Ljava/io/File;
    goto :goto_59
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
    .line 233
    :try_start_0
    const-string v8, "PostAsyncUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "filepath "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v8, "PostAsyncUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "message "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, "folderQueue":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3c

    .line 238
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 241
    :cond_3c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v3, "gpxfile":Ljava/io/File;
    new-instance v7, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 244
    .local v7, "writer":Ljava/io/FileWriter;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{type}="

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

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{url}="

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

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{header}="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{message}="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "{pagemode}="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p6

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

    .line 250
    if-eqz p7, :cond_f1

    .line 251
    invoke-virtual/range {p7 .. p7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 252
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_eb
    :goto_eb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_13c

    .line 263
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f1
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V

    .line 264
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 266
    sget-object v8, Lic/buzzebeeslib/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
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

    invoke-static {p0, v8, v9}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 268
    sget-object v8, Lic/buzzebeeslib/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 269
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

    invoke-static {p0, v8, v9}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 273
    .end local v2    # "folderQueue":Ljava/io/File;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/FileWriter;
    :goto_13b
    return-void

    .line 253
    .restart local v2    # "folderQueue":Ljava/io/File;
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :cond_13c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 254
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "value":Ljava/lang/String;
    if-eqz v5, :cond_eb

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_eb

    .line 256
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

    .line 258
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

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_196} :catch_198

    goto/16 :goto_eb

    .line 270
    .end local v2    # "folderQueue":Ljava/io/File;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "writer":Ljava/io/FileWriter;
    :catch_198
    move-exception v1

    .line 271
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

    invoke-static {p0, v8, v9}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_13b
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
    .line 294
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, "gpxfile":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 297
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 298
    .local v8, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 300
    .local v7, "writer":Ljava/io/StringWriter;
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 302
    const-string v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 304
    const-string v9, ""

    const-string v10, "post"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    const-string v9, ""

    const-string v10, "type"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    invoke-interface {v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    const-string v9, ""

    const-string v10, "type"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    const-string v9, ""

    const-string v10, "url"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-interface {v8, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const-string v9, ""

    const-string v10, "url"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    const-string v9, ""

    const-string v10, "header"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    invoke-interface {v8, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const-string v9, ""

    const-string v10, "header"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string v9, ""

    const-string v10, "message"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    move-object/from16 v0, p5

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    const-string v9, ""

    const-string v10, "message"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    const-string v9, ""

    const-string v10, "pagemode"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    const-string v9, ""

    const-string v10, "pagemode"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    if-eqz p7, :cond_b7

    .line 339
    const-string v9, ""

    const-string v10, "params"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    invoke-virtual/range {p7 .. p7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 342
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_aa
    :goto_aa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_12b

    .line 358
    const-string v9, ""

    const-string v10, "params"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b7
    const-string v9, ""

    const-string v10, "post"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 367
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

    invoke-static {v9, v10}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 371
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 373
    sget-object v9, Lic/buzzebeeslib/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
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

    invoke-static {p0, v9, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 375
    sget-object v9, Lic/buzzebeeslib/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 376
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

    invoke-static {p0, v9, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 382
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/StringWriter;
    .end local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_12a
    return-void

    .line 343
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "writer":Ljava/io/StringWriter;
    .restart local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_12b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 344
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "value":Ljava/lang/String;
    if-eqz v5, :cond_aa

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_aa

    .line 348
    const-string v9, ""

    invoke-interface {v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    const-string v9, ""

    invoke-interface {v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14e} :catch_150

    goto/16 :goto_aa

    .line 378
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "writer":Ljava/io/StringWriter;
    .end local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_150
    move-exception v1

    .line 379
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

    invoke-static {p0, v9, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_12a
.end method
