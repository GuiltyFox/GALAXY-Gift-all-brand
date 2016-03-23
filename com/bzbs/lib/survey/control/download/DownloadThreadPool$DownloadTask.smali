.class Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation


# instance fields
.field private mDownloadRequest:Lcom/bzbs/lib/survey/control/download/DownloadRequest;

.field final synthetic this$0:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;
    .param p2, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;->this$0:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;->mDownloadRequest:Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .line 51
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 55
    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "DownloadTask run() start"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, -0x1

    .line 58
    .local v0, "statusCode":I
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;->mDownloadRequest:Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "status_idle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 60
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;->this$0:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    # getter for: Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mHttpDownloader:Lcom/bzbs/lib/survey/control/download/HttpDownloader;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->access$000(Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;)Lcom/bzbs/lib/survey/control/download/HttpDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;->mDownloadRequest:Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/control/download/HttpDownloader;->doDownload(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)I

    move-result v0

    .line 62
    :cond_25
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;->this$0:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    # getter for: Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->mDownloadRequests:Ljava/util/List;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->access$100(Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool$DownloadTask;->mDownloadRequest:Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    const-string/jumbo v1, "DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DownloadTask run() end statusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
