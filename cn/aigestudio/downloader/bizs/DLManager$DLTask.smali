.class Lcn/aigestudio/downloader/bizs/DLManager$DLTask;
.super Ljava/lang/Object;
.source "DLManager.java"

# interfaces
.implements Lcn/aigestudio/downloader/interfaces/IDLThreadListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/aigestudio/downloader/bizs/DLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;
    }
.end annotation


# static fields
.field private static final LENGTH_PER_THREAD:I = 0x200000


# instance fields
.field private fileLength:I

.field private info:Lcn/aigestudio/downloader/entities/TaskInfo;

.field private isConnect:Z

.field private isExists:Z

.field private isResume:Z

.field private isStop:Z

.field private mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

.field private mThreadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/aigestudio/downloader/entities/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/aigestudio/downloader/bizs/DLManager;

.field private totalProgress:I

.field private totalProgressIn100:I


# direct methods
.method private constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager;Lcn/aigestudio/downloader/entities/TaskInfo;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V
    .registers 7
    .param p2, "info"    # Lcn/aigestudio/downloader/entities/TaskInfo;
    .param p3, "listener"    # Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    .prologue
    const/4 v2, 0x1

    .line 164
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isConnect:Z

    .line 165
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    .line 166
    iput-object p3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    .line 167
    iget v0, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->progress:I

    iput v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgress:I

    .line 168
    iget v0, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->length:I

    iput v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    .line 170
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->queryTaskInfoByUrl(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 171
    iget-object v0, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 172
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->deleteTaskInfo(Ljava/lang/String;)V

    .line 174
    :cond_31
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->queryThreadInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mThreadInfos:Ljava/util/List;

    .line 175
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mThreadInfos:Ljava/util/List;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mThreadInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 176
    iput-boolean v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isResume:Z

    .line 181
    :cond_4b
    :goto_4b
    return-void

    .line 178
    :cond_4c
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p2, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->deleteTaskInfo(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method synthetic constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager;Lcn/aigestudio/downloader/entities/TaskInfo;Lcn/aigestudio/downloader/interfaces/DLTaskListener;Lcn/aigestudio/downloader/bizs/DLManager$1;)V
    .registers 5
    .param p1, "x0"    # Lcn/aigestudio/downloader/bizs/DLManager;
    .param p2, "x1"    # Lcn/aigestudio/downloader/entities/TaskInfo;
    .param p3, "x2"    # Lcn/aigestudio/downloader/interfaces/DLTaskListener;
    .param p4, "x3"    # Lcn/aigestudio/downloader/bizs/DLManager$1;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;-><init>(Lcn/aigestudio/downloader/bizs/DLManager;Lcn/aigestudio/downloader/entities/TaskInfo;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V

    return-void
.end method

.method static synthetic access$600(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z
    .registers 2
    .param p0, "x0"    # Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isResume:Z

    return v0
.end method

.method static synthetic access$700(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z
    .registers 2
    .param p0, "x0"    # Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isStop:Z

    return v0
.end method


# virtual methods
.method public onThreadProgress(I)V
    .registers 8
    .param p1, "progress"    # I

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_1
    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgress:I

    add-int/2addr v1, p1

    iput v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgress:I

    .line 271
    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgress:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L

    mul-double/2addr v2, v4

    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 272
    .local v0, "tmp":I
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v1, :cond_23

    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgressIn100:I

    if-eq v0, v1, :cond_23

    .line 273
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    invoke-virtual {v1, v0}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->onProgress(I)V

    .line 274
    iput v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgressIn100:I

    .line 276
    :cond_23
    iget v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    iget v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgress:I

    if-ne v1, v2, :cond_4c

    .line 277
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/DBManager;->deleteTaskInfo(Ljava/lang/String;)V

    .line 278
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$100()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->onFinish(Ljava/io/File;)V

    .line 281
    :cond_4c
    iget-boolean v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isStop:Z

    if-eqz v1, :cond_6a

    .line 282
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgress:I

    iput v2, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->progress:I

    .line 283
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/DBManager;->updateTaskInfo(Lcn/aigestudio/downloader/entities/TaskInfo;)V

    .line 284
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$100()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v2, v2, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_6a
    monitor-exit p0

    .line 287
    return-void

    .line 286
    .end local v0    # "tmp":I
    :catchall_6c
    move-exception v1

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public run()V
    .registers 26

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->context:Landroid/content/Context;
    invoke-static {v5}, Lcn/aigestudio/downloader/bizs/DLManager;->access$500(Lcn/aigestudio/downloader/bizs/DLManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/aigestudio/downloader/utils/NetUtil;->getNetWorkType(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_6a

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v5, :cond_1f

    .line 191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    const/4 v6, 0x0

    const-string/jumbo v7, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v5, v6, v7}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->onConnect(ILjava/lang/String;)Z

    .line 192
    :cond_1f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isConnect:Z

    .line 197
    :cond_24
    :goto_24
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isConnect:Z

    if-eqz v5, :cond_1d9

    .line 198
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$100()Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v5, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isResume:Z

    if-eqz v5, :cond_90

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mThreadInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcn/aigestudio/downloader/entities/ThreadInfo;

    .line 201
    .local v20, "i":Lcn/aigestudio/downloader/entities/ThreadInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v5}, Lcn/aigestudio/downloader/bizs/DLManager;->access$400(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v6, v0, v1, v2}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;-><init>(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;Lcn/aigestudio/downloader/entities/ThreadInfo;Lcn/aigestudio/downloader/interfaces/IDLThreadListener;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 193
    .end local v20    # "i":Lcn/aigestudio/downloader/entities/ThreadInfo;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_6a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->context:Landroid/content/Context;
    invoke-static {v5}, Lcn/aigestudio/downloader/bizs/DLManager;->access$500(Lcn/aigestudio/downloader/bizs/DLManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/aigestudio/downloader/utils/NetUtil;->getNetWorkType(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_24

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v5, :cond_24

    .line 195
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    const/4 v6, 0x5

    const-string/jumbo v7, "\u6b63\u5728\u4f7f\u7528\u975eWIFI\u7f51\u7edc\u4e0b\u8f7d"

    invoke-virtual {v5, v6, v7}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->onConnect(ILjava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isConnect:Z

    goto :goto_24

    .line 204
    :cond_90
    const/16 v18, 0x0

    .line 206
    .local v18, "conn":Ljava/net/HttpURLConnection;
    :try_start_92
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->realUrl:Ljava/lang/String;

    invoke-static {v5}, Lcn/aigestudio/downloader/utils/NetUtil;->buildConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v18

    .line 207
    const-string/jumbo v5, "Range"

    const-string/jumbo v6, "bytes=0-2147483647"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xce

    if-ne v5, v6, :cond_185

    .line 209
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    .line 210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_fb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    int-to-long v12, v5

    cmp-long v5, v6, v12

    if-nez v5, :cond_fb

    .line 211
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isExists:Z

    .line 212
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$100()Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v5, :cond_fb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->onFinish(Ljava/io/File;)V

    .line 215
    :cond_fb
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isExists:Z

    if-nez v5, :cond_1d4

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    move-object/from16 v0, p0

    iget v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    iput v6, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->length:I

    .line 217
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    invoke-virtual {v5, v6}, Lcn/aigestudio/downloader/bizs/DBManager;->insertTaskInfo(Lcn/aigestudio/downloader/entities/TaskInfo;)V

    .line 219
    const/high16 v22, 0x200000

    .line 220
    .local v22, "length":I
    move-object/from16 v0, p0

    iget v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    const/high16 v6, 0x200000

    if-gt v5, v6, :cond_17c

    .line 221
    const/16 v24, 0x3

    .line 222
    .local v24, "threadSize":I
    move-object/from16 v0, p0

    iget v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    div-int v22, v5, v24

    .line 226
    :goto_128
    move-object/from16 v0, p0

    iget v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    rem-int v23, v5, v22

    .line 227
    .local v23, "remainder":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_130
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_1d4

    .line 228
    mul-int v8, v20, v22

    .line 229
    .local v8, "start":I
    add-int v5, v8, v22

    add-int/lit8 v9, v5, -0x1

    .line 230
    .local v9, "end":I
    add-int/lit8 v5, v24, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_146

    .line 231
    add-int v5, v8, v22

    add-int v9, v5, v23

    .line 233
    :cond_146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "id":Ljava/lang/String;
    new-instance v4, Lcn/aigestudio/downloader/entities/ThreadInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v7, v7, Lcn/aigestudio/downloader/entities/TaskInfo;->realUrl:Ljava/lang/String;

    invoke-direct/range {v4 .. v10}, Lcn/aigestudio/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 237
    .local v4, "ti":Lcn/aigestudio/downloader/entities/ThreadInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v5}, Lcn/aigestudio/downloader/bizs/DLManager;->access$400(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v4, v1}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;-><init>(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;Lcn/aigestudio/downloader/entities/ThreadInfo;Lcn/aigestudio/downloader/interfaces/IDLThreadListener;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 227
    add-int/lit8 v20, v20, 0x1

    goto :goto_130

    .line 224
    .end local v4    # "ti":Lcn/aigestudio/downloader/entities/ThreadInfo;
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v20    # "i":I
    .end local v23    # "remainder":I
    .end local v24    # "threadSize":I
    :cond_17c
    move-object/from16 v0, p0

    iget v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    const/high16 v6, 0x200000

    div-int v24, v5, v6

    .restart local v24    # "threadSize":I
    goto :goto_128

    .line 240
    .end local v22    # "length":I
    .end local v24    # "threadSize":I
    :cond_185
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1d4

    .line 241
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1da

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v5, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    int-to-long v12, v5

    cmp-long v5, v6, v12

    if-nez v5, :cond_1da

    .line 243
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$100()Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v5, :cond_1d4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->onFinish(Ljava/io/File;)V
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_1d4} :catch_216
    .catchall {:try_start_92 .. :try_end_1d4} :catchall_261

    .line 259
    :cond_1d4
    :goto_1d4
    if-eqz v18, :cond_1d9

    .line 260
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 265
    .end local v18    # "conn":Ljava/net/HttpURLConnection;
    :cond_1d9
    :goto_1d9
    return-void

    .line 246
    .restart local v18    # "conn":Ljava/net/HttpURLConnection;
    :cond_1da
    :try_start_1da
    new-instance v4, Lcn/aigestudio/downloader/entities/ThreadInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v12, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v13, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v14, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->realUrl:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->fileLength:I

    move/from16 v16, v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lcn/aigestudio/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 248
    .restart local v4    # "ti":Lcn/aigestudio/downloader/entities/ThreadInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v5}, Lcn/aigestudio/downloader/bizs/DLManager;->access$400(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v6, v0, v4, v1}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;-><init>(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;Lcn/aigestudio/downloader/entities/ThreadInfo;Lcn/aigestudio/downloader/interfaces/IDLThreadListener;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_215} :catch_216
    .catchall {:try_start_1da .. :try_end_215} :catchall_261

    goto :goto_1d4

    .line 251
    .end local v4    # "ti":Lcn/aigestudio/downloader/entities/ThreadInfo;
    :catch_216
    move-exception v19

    .line 252
    .local v19, "e":Ljava/lang/Exception;
    :try_start_217
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcn/aigestudio/downloader/bizs/DBManager;->queryTaskInfoByUrl(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/TaskInfo;

    move-result-object v5

    if-eqz v5, :cond_249

    .line 253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    move-object/from16 v0, p0

    iget v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->totalProgress:I

    iput v6, v5, Lcn/aigestudio/downloader/entities/TaskInfo;->progress:I

    .line 254
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    invoke-virtual {v5, v6}, Lcn/aigestudio/downloader/bizs/DBManager;->updateTaskInfo(Lcn/aigestudio/downloader/entities/TaskInfo;)V

    .line 255
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$100()Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->info:Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v5, :cond_25a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->mListener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->onError(Ljava/lang/String;)V
    :try_end_25a
    .catchall {:try_start_217 .. :try_end_25a} :catchall_261

    .line 259
    :cond_25a
    if-eqz v18, :cond_1d9

    .line 260
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1d9

    .line 259
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_261
    move-exception v5

    if-eqz v18, :cond_267

    .line 260
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_267
    throw v5
.end method

.method public setStop(Z)V
    .registers 2
    .param p1, "isStop"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isStop:Z

    .line 185
    return-void
.end method
