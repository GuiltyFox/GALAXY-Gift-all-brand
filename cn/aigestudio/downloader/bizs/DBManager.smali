.class public final Lcn/aigestudio/downloader/bizs/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field private static a:Lcn/aigestudio/downloader/bizs/DBManager;


# instance fields
.field private b:Lcn/aigestudio/downloader/daos/TaskDAO;

.field private c:Lcn/aigestudio/downloader/daos/ThreadDAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcn/aigestudio/downloader/bizs/DBManager;->a:Lcn/aigestudio/downloader/bizs/DBManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcn/aigestudio/downloader/daos/TaskDAO;

    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/daos/TaskDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->b:Lcn/aigestudio/downloader/daos/TaskDAO;

    .line 27
    new-instance v0, Lcn/aigestudio/downloader/daos/ThreadDAO;

    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/daos/ThreadDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->c:Lcn/aigestudio/downloader/daos/ThreadDAO;

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/DBManager;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcn/aigestudio/downloader/bizs/DBManager;->a:Lcn/aigestudio/downloader/bizs/DBManager;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcn/aigestudio/downloader/bizs/DBManager;

    invoke-direct {v0, p0}, Lcn/aigestudio/downloader/bizs/DBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/aigestudio/downloader/bizs/DBManager;->a:Lcn/aigestudio/downloader/bizs/DBManager;

    .line 40
    :cond_b
    sget-object v0, Lcn/aigestudio/downloader/bizs/DBManager;->a:Lcn/aigestudio/downloader/bizs/DBManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcn/aigestudio/downloader/entities/TaskInfo;)V
    .registers 3

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->b:Lcn/aigestudio/downloader/daos/TaskDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/TaskDAO;->a(Lcn/aigestudio/downloader/entities/DLInfo;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcn/aigestudio/downloader/entities/ThreadInfo;)V
    .registers 3

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->c:Lcn/aigestudio/downloader/daos/ThreadDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/ThreadDAO;->a(Lcn/aigestudio/downloader/entities/DLInfo;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->b:Lcn/aigestudio/downloader/daos/TaskDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/TaskDAO;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/TaskInfo;
    .registers 3

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->b:Lcn/aigestudio/downloader/daos/TaskDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/TaskDAO;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/DLInfo;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/entities/TaskInfo;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcn/aigestudio/downloader/entities/TaskInfo;)V
    .registers 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->b:Lcn/aigestudio/downloader/daos/TaskDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/TaskDAO;->b(Lcn/aigestudio/downloader/entities/DLInfo;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcn/aigestudio/downloader/entities/ThreadInfo;)V
    .registers 3

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->c:Lcn/aigestudio/downloader/daos/ThreadDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/ThreadDAO;->b(Lcn/aigestudio/downloader/entities/DLInfo;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->c:Lcn/aigestudio/downloader/daos/ThreadDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/ThreadDAO;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/ThreadInfo;
    .registers 3

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->c:Lcn/aigestudio/downloader/daos/ThreadDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/ThreadDAO;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/DLInfo;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/entities/ThreadInfo;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/aigestudio/downloader/entities/ThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DBManager;->c:Lcn/aigestudio/downloader/daos/ThreadDAO;

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/daos/ThreadDAO;->c(Ljava/lang/String;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
