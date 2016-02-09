.class Lic/buzzebeeslib/control/download/DownloadThreadPool;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/download/DownloadThreadPool$DownloadTask;
    }
.end annotation


# instance fields
.field private mDownloadRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lic/buzzebeeslib/control/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpDownloader:Lic/buzzebeeslib/control/download/HttpDownloader;

.field private mMaxThread:I

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lic/buzzebeeslib/control/download/DownloadThreadPool;-><init>(I)V

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
    iput p1, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mMaxThread:I

    .line 25
    iget v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mMaxThread:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 26
    new-instance v0, Lic/buzzebeeslib/control/download/HttpDownloader;

    invoke-direct {v0}, Lic/buzzebeeslib/control/download/HttpDownloader;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mHttpDownloader:Lic/buzzebeeslib/control/download/HttpDownloader;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/control/download/DownloadThreadPool;)Lic/buzzebeeslib/control/download/HttpDownloader;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mHttpDownloader:Lic/buzzebeeslib/control/download/HttpDownloader;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/download/DownloadThreadPool;)Ljava/util/List;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V
    .registers 3
    .param p1, "l"    # Lic/buzzebeeslib/control/download/DownloadListener;

    .prologue
    .line 68
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mHttpDownloader:Lic/buzzebeeslib/control/download/HttpDownloader;

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->addDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V

    .line 69
    return-void
.end method

.method enqueue(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 5
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 31
    const-string v0, "DownloadThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadThreadPool enqueue() request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lic/buzzebeeslib/control/download/DownloadThreadPool$DownloadTask;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/control/download/DownloadThreadPool$DownloadTask;-><init>(Lic/buzzebeeslib/control/download/DownloadThreadPool;Lic/buzzebeeslib/control/download/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 33
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method getDownloadRequest(J)Lic/buzzebeeslib/control/download/DownloadRequest;
    .registers 7
    .param p1, "id"    # J

    .prologue
    .line 37
    iget-object v1, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 42
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 37
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/download/DownloadRequest;

    .line 38
    .local v0, "r":Lic/buzzebeeslib/control/download/DownloadRequest;
    invoke-virtual {v0}, Lic/buzzebeeslib/control/download/DownloadRequest;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    goto :goto_d
.end method

.method removeDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V
    .registers 3
    .param p1, "l"    # Lic/buzzebeeslib/control/download/DownloadListener;

    .prologue
    .line 72
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadThreadPool;->mHttpDownloader:Lic/buzzebeeslib/control/download/HttpDownloader;

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/control/download/HttpDownloader;->removeDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V

    .line 73
    return-void
.end method
