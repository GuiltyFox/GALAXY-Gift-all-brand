.class Lcom/bzbs/lib/survey/control/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/control/download/DownloadManager;->enqueueHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/control/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/download/DownloadManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/control/download/DownloadManager;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$1;->this$0:Lcom/bzbs/lib/survey/control/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 238
    const-string/jumbo v2, "status!=\'status_complete\'"

    .line 240
    .local v2, "selection":Ljava/lang/String;
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$1;->this$0:Lcom/bzbs/lib/survey/control/download/DownloadManager;

    # getter for: Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;
    invoke-static {v3}, Lcom/bzbs/lib/survey/control/download/DownloadManager;->access$300(Lcom/bzbs/lib/survey/control/download/DownloadManager;)Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v4, v2, v4, v4}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 241
    .local v0, "cursor":Landroid/database/Cursor;
    # getter for: Lcom/bzbs/lib/survey/control/download/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/control/download/DownloadManager;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " enqueueHistory start run"

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz v0, :cond_55

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 244
    :cond_20
    new-instance v1, Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;-><init>(Landroid/database/Cursor;)V

    .line 245
    .local v1, "request":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    const-string/jumbo v3, "status_idle"

    invoke-virtual {v1, v3}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    # getter for: Lcom/bzbs/lib/survey/control/download/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/control/download/DownloadManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " enqueueHistory request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$1;->this$0:Lcom/bzbs/lib/survey/control/download/DownloadManager;

    # getter for: Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;
    invoke-static {v3}, Lcom/bzbs/lib/survey/control/download/DownloadManager;->access$500(Lcom/bzbs/lib/survey/control/download/DownloadManager;)Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->enqueue(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_20

    .line 250
    .end local v1    # "request":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    :cond_55
    return-void
.end method
