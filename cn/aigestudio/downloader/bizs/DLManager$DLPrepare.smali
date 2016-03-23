.class Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;
.super Ljava/lang/Object;
.source "DLManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/aigestudio/downloader/bizs/DLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLPrepare"
.end annotation


# instance fields
.field private dirPath:Ljava/lang/String;

.field private listener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

.field final synthetic this$0:Lcn/aigestudio/downloader/bizs/DLManager;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager;Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V
    .registers 5
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "dirPath"    # Ljava/lang/String;
    .param p4, "listener"    # Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->url:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->dirPath:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->listener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager;Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;Lcn/aigestudio/downloader/bizs/DLManager$1;)V
    .registers 6
    .param p1, "x0"    # Lcn/aigestudio/downloader/bizs/DLManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcn/aigestudio/downloader/interfaces/DLTaskListener;
    .param p5, "x4"    # Lcn/aigestudio/downloader/bizs/DLManager$1;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;-><init>(Lcn/aigestudio/downloader/bizs/DLManager;Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 115
    const/4 v6, 0x0

    .line 117
    .local v6, "conn":Ljava/net/HttpURLConnection;
    :try_start_1
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->url:Ljava/lang/String;

    .line 118
    .local v3, "realUrl":Ljava/lang/String;
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->url:Ljava/lang/String;

    invoke-static {v1}, Lcn/aigestudio/downloader/utils/NetUtil;->buildConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 120
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->REFERER:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->url:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_26

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_2e

    .line 123
    :cond_26
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->LOCATION:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    :cond_2e
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$100()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_37} :catch_93
    .catchall {:try_start_1 .. :try_end_37} :catchall_9d

    move-result v1

    if-eqz v1, :cond_40

    .line 142
    :goto_3a
    if-eqz v6, :cond_3f

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    .end local v3    # "realUrl":Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-void

    .line 129
    .restart local v3    # "realUrl":Ljava/lang/String;
    :cond_40
    :try_start_40
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/DBManager;->queryTaskInfoByUrl(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/TaskInfo;

    move-result-object v0

    .line 130
    .local v0, "info":Lcn/aigestudio/downloader/entities/TaskInfo;
    invoke-static {v3}, Lcn/aigestudio/downloader/utils/FileUtil;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->listener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->listener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    invoke-virtual {v1, v9, v3}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_61
    new-instance v8, Ljava/io/File;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->dirPath:Ljava/lang/String;

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v8, "file":Ljava/io/File;
    if-eqz v0, :cond_70

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 134
    :cond_70
    new-instance v0, Lcn/aigestudio/downloader/entities/TaskInfo;

    .end local v0    # "info":Lcn/aigestudio/downloader/entities/TaskInfo;
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->dirPath:Ljava/lang/String;

    invoke-static {v1, v9}, Lcn/aigestudio/downloader/utils/FileUtil;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->url:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcn/aigestudio/downloader/entities/TaskInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    .line 136
    .restart local v0    # "info":Lcn/aigestudio/downloader/entities/TaskInfo;
    :cond_7f
    new-instance v10, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->listener:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    const/4 v4, 0x0

    invoke-direct {v10, v1, v0, v2, v4}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;-><init>(Lcn/aigestudio/downloader/bizs/DLManager;Lcn/aigestudio/downloader/entities/TaskInfo;Lcn/aigestudio/downloader/interfaces/DLTaskListener;Lcn/aigestudio/downloader/bizs/DLManager$1;)V

    .line 137
    .local v10, "task":Lcn/aigestudio/downloader/bizs/DLManager$DLTask;
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->this$0:Lcn/aigestudio/downloader/bizs/DLManager;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/DLManager;->access$400(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_92} :catch_93
    .catchall {:try_start_40 .. :try_end_92} :catchall_9d

    goto :goto_3a

    .line 139
    .end local v0    # "info":Lcn/aigestudio/downloader/entities/TaskInfo;
    .end local v3    # "realUrl":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "task":Lcn/aigestudio/downloader/bizs/DLManager$DLTask;
    :catch_93
    move-exception v7

    .line 140
    .local v7, "e":Ljava/io/IOException;
    :try_start_94
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_9d

    .line 142
    if-eqz v6, :cond_3f

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3f

    .line 142
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_9d
    move-exception v1

    if-eqz v6, :cond_a3

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a3
    throw v1
.end method
