.class Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;
.super Ljava/lang/Object;
.source "DLManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/aigestudio/downloader/bizs/DLManager;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcn/aigestudio/downloader/interfaces/DLTaskListener;


# direct methods
.method private constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager;Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V
    .registers 5

    .prologue
    .line 107
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->b:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->c:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->d:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager;Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;Lcn/aigestudio/downloader/bizs/DLManager$1;)V
    .registers 6

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;-><init>(Lcn/aigestudio/downloader/bizs/DLManager;Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 115
    .line 117
    :try_start_1
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->b:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/aigestudio/downloader/utils/NetUtil;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_ab
    .catchall {:try_start_1 .. :try_end_8} :catchall_9e

    move-result-object v6

    .line 119
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 120
    sget-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->i:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v0, v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->b:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_26

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_2e

    .line 123
    :cond_26
    sget-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->h:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v0, v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    :cond_2e
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->a()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_37} :catch_93
    .catchall {:try_start_a .. :try_end_37} :catchall_a6

    move-result v0

    if-eqz v0, :cond_40

    .line 142
    :goto_3a
    if-eqz v6, :cond_3f

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :cond_3f
    :goto_3f
    return-void

    .line 129
    :cond_40
    :try_start_40
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DBManager;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/TaskInfo;

    move-result-object v0

    .line 130
    invoke-static {v3}, Lcn/aigestudio/downloader/utils/FileUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->d:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->d:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    invoke-virtual {v2, v1, v3}, Lcn/aigestudio/downloader/interfaces/DLTaskListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_61
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->c:Ljava/lang/String;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz v0, :cond_70

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 134
    :cond_70
    new-instance v0, Lcn/aigestudio/downloader/entities/TaskInfo;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcn/aigestudio/downloader/utils/FileUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcn/aigestudio/downloader/entities/TaskInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    .line 136
    :cond_7f
    new-instance v1, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->d:Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;-><init>(Lcn/aigestudio/downloader/bizs/DLManager;Lcn/aigestudio/downloader/entities/TaskInfo;Lcn/aigestudio/downloader/interfaces/DLTaskListener;Lcn/aigestudio/downloader/bizs/DLManager$1;)V

    .line 137
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/DLManager;->a(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_92} :catch_93
    .catchall {:try_start_40 .. :try_end_92} :catchall_a6

    goto :goto_3a

    .line 139
    :catch_93
    move-exception v0

    move-object v1, v6

    .line 140
    :goto_95
    :try_start_95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_a8

    .line 142
    if-eqz v1, :cond_3f

    .line 143
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3f

    .line 142
    :catchall_9e
    move-exception v0

    move-object v6, v1

    :goto_a0
    if-eqz v6, :cond_a5

    .line 143
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a5
    throw v0

    .line 142
    :catchall_a6
    move-exception v0

    goto :goto_a0

    :catchall_a8
    move-exception v0

    move-object v6, v1

    goto :goto_a0

    .line 139
    :catch_ab
    move-exception v0

    goto :goto_95
.end method
