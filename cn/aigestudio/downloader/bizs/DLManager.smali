.class public final Lcn/aigestudio/downloader/bizs/DLManager;
.super Ljava/lang/Object;
.source "DLManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/aigestudio/downloader/bizs/DLManager$1;,
        Lcn/aigestudio/downloader/bizs/DLManager$DLTask;,
        Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;
    }
.end annotation


# static fields
.field private static final THREAD_POOL_SIZE:I = 0x20

.field private static sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;

.field private static sManager:Lcn/aigestudio/downloader/bizs/DLManager;

.field private static sTaskDLing:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/aigestudio/downloader/bizs/DLManager$DLTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/DLManager;->context:Landroid/content/Context;

    .line 68
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 69
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/DBManager;->getInstance(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    sput-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;

    .line 71
    return-void
.end method

.method static synthetic access$100()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200()Lcn/aigestudio/downloader/bizs/DBManager;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;

    return-object v0
.end method

.method static synthetic access$400(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0, "x0"    # Lcn/aigestudio/downloader/bizs/DLManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcn/aigestudio/downloader/bizs/DLManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/aigestudio/downloader/bizs/DLManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/DLManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->sManager:Lcn/aigestudio/downloader/bizs/DLManager;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-direct {v0, p0}, Lcn/aigestudio/downloader/bizs/DLManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->sManager:Lcn/aigestudio/downloader/bizs/DLManager;

    .line 77
    :cond_b
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->sManager:Lcn/aigestudio/downloader/bizs/DLManager;

    return-object v0
.end method


# virtual methods
.method public dlCancel(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcn/aigestudio/downloader/bizs/DLManager;->dlStop(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;

    invoke-virtual {v1, p1}, Lcn/aigestudio/downloader/bizs/DBManager;->queryTaskInfoByUrl(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/TaskInfo;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 95
    sget-object v1, Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;

    invoke-virtual {v1, p1}, Lcn/aigestudio/downloader/bizs/DBManager;->deleteTaskInfo(Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;

    invoke-virtual {v1, p1}, Lcn/aigestudio/downloader/bizs/DBManager;->queryThreadInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcn/aigestudio/downloader/entities/ThreadInfo;>;"
    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_23

    .line 98
    sget-object v1, Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;

    invoke-virtual {v1, p1}, Lcn/aigestudio/downloader/bizs/DBManager;->deleteThreadInfos(Ljava/lang/String;)V

    .line 101
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Lcn/aigestudio/downloader/entities/ThreadInfo;>;"
    :cond_23
    return-void
.end method

.method public dlStart(Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dirPath"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/aigestudio/downloader/interfaces/DLTaskListener;

    .prologue
    .line 81
    new-instance v0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;-><init>(Lcn/aigestudio/downloader/bizs/DLManager;Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;Lcn/aigestudio/downloader/bizs/DLManager$1;)V

    .line 82
    .local v0, "dlPrepare":Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public dlStop(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v1, Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 87
    sget-object v1, Lcn/aigestudio/downloader/bizs/DLManager;->sTaskDLing:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    .line 88
    .local v0, "task":Lcn/aigestudio/downloader/bizs/DLManager$DLTask;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->setStop(Z)V

    .line 90
    .end local v0    # "task":Lcn/aigestudio/downloader/bizs/DLManager$DLTask;
    :cond_14
    return-void
.end method
