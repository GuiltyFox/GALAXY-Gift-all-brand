.class Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;
    }
.end annotation


# instance fields
.field private mDownloadRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/lib/survey/control/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpDownloader:Lcom/bzbs/lib/survey/control/download/HttpDownloader;

.field private mMaxThread:I

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;-><init>(I)V

    .line 21
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "maxThread"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mMaxThread:I

    .line 25
    iget v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mMaxThread:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 26
    new-instance v0, Lcom/bzbs/lib/survey/control/download/HttpDownloader;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mHttpDownloader:Lcom/bzbs/lib/survey/control/download/HttpDownloader;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;)Lcom/bzbs/lib/survey/control/download/HttpDownloader;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mHttpDownloader:Lcom/bzbs/lib/survey/control/download/HttpDownloader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V
    .registers 3
    .param p1, "l"    # Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mHttpDownloader:Lcom/bzbs/lib/survey/control/download/HttpDownloader;

    invoke-virtual {v0, p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->addDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V

    .line 69
    return-void
.end method

.method enqueue(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 5
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 31
    const-string/jumbo v0, "DownloadThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DownloadThreadPool enqueue() request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;-><init>(Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 33
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method getDownloadRequest(J)Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    .registers 8
    .param p1, "id"    # J

    .prologue
    .line 37
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .line 38
    .local v0, "r":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    .line 42
    .end local v0    # "r":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method removeDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V
    .registers 3
    .param p1, "l"    # Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mHttpDownloader:Lcom/bzbs/lib/survey/control/download/HttpDownloader;

    invoke-virtual {v0, p1}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->removeDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V

    .line 73
    return-void
.end method
