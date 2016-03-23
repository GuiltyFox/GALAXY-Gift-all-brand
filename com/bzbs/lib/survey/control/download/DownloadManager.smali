.class public Lcom/bzbs/lib/survey/control/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/bzbs/lib/survey/control/download/DownloadManager;


# instance fields
.field private mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

.field private mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxThread"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mInstance:Lcom/bzbs/lib/survey/control/download/DownloadManager;

    if-eqz v0, :cond_10

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not create singlton object Duplicate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_10
    new-instance v0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    invoke-direct {v0, p2}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    .line 102
    new-instance v0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    .line 103
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/download/DownloadManager;->addDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    # getter for: Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->mMaxThread:I
    invoke-static {p1}, Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->access$100(Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    .line 108
    new-instance v0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    # getter for: Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->access$200(Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    .line 109
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/download/DownloadManager;->addDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;Lcom/bzbs/lib/survey/control/download/DownloadManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;
    .param p2, "x1"    # Lcom/bzbs/lib/survey/control/download/DownloadManager$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadManager;-><init>(Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/bzbs/lib/survey/control/download/DownloadManager;)Lcom/bzbs/lib/survey/control/download/DatabaseHelper;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/download/DownloadManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bzbs/lib/survey/control/download/DownloadManager;)Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/download/DownloadManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/bzbs/lib/survey/control/download/DownloadManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxThread"    # I

    .prologue
    .line 88
    const-class v1, Lcom/bzbs/lib/survey/control/download/DownloadManager;

    monitor-enter v1

    .line 89
    :try_start_3
    sget-object v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mInstance:Lcom/bzbs/lib/survey/control/download/DownloadManager;

    if-nez v0, :cond_12

    .line 90
    new-instance v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/bzbs/lib/survey/control/download/DownloadManager;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mInstance:Lcom/bzbs/lib/survey/control/download/DownloadManager;

    .line 93
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 94
    sget-object v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mInstance:Lcom/bzbs/lib/survey/control/download/DownloadManager;

    return-object v0

    .line 93
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public addDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    invoke-virtual {v0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->addDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V

    .line 119
    return-void
.end method

.method public delete(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadManager;->pause(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)J

    .line 184
    return-void
.end method

.method public enqueue(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 139
    sget-object v2, Lcom/bzbs/lib/survey/control/download/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " enqueue()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_34

    .line 141
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 142
    .local v0, "id":J
    invoke-virtual {p1, v0, v1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setId(J)J

    .line 144
    .end local v0    # "id":J
    :cond_34
    const-string/jumbo v2, "status_idle"

    invoke-virtual {p1, v2}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    invoke-virtual {v2, p1}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->enqueue(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    .line 146
    return-void
.end method

.method public enqueue(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/lib/survey/control/download/DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/lib/survey/control/download/DownloadRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .line 158
    .local v0, "r":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/download/DownloadManager;->enqueue(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V

    goto :goto_4

    .line 160
    .end local v0    # "r":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    :cond_14
    return-void
.end method

.method public enqueueHistory()V
    .registers 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bzbs/lib/survey/control/download/DownloadManager$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/control/download/DownloadManager$1;-><init>(Lcom/bzbs/lib/survey/control/download/DownloadManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    return-void
.end method

.method public pause(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "status_idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "status_start"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 171
    :cond_16
    const-string/jumbo v1, "status_pause"

    invoke-virtual {p1, v1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    :cond_1c
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/lib/survey/control/download/DownloadRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v5, "resultSet":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/lib/survey/control/download/DownloadRequest;>;"
    iget-object v6, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDBHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1, p2, p3}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 207
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 209
    :cond_14
    const-string/jumbo v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 210
    .local v2, "id":J
    iget-object v6, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    .line 211
    invoke-virtual {v6, v2, v3}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->getDownloadRequest(J)Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    move-result-object v1

    .line 212
    .local v1, "excutingRequest":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    if-eqz v1, :cond_39

    .line 213
    sget-object v6, Lcom/bzbs/lib/survey/control/download/DownloadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, " query excutingRequest != null"

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_14

    .line 223
    .end local v1    # "excutingRequest":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    .end local v2    # "id":J
    :cond_38
    return-object v5

    .line 216
    .restart local v1    # "excutingRequest":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    .restart local v2    # "id":J
    :cond_39
    sget-object v6, Lcom/bzbs/lib/survey/control/download/DownloadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, " query excutingRequest == null"

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v4, Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    invoke-direct {v4, v0}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;-><init>(Landroid/database/Cursor;)V

    .line 219
    .local v4, "request":Lcom/bzbs/lib/survey/control/download/DownloadRequest;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32
.end method

.method public removeDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/bzbs/lib/survey/control/download/DownloadListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager;->mDownloadThreadPool:Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;

    invoke-virtual {v0, p1}, Lcom/bzbs/lib/survey/control/download/DownloadThreadPool;->removeDownloadListener(Lcom/bzbs/lib/survey/control/download/DownloadListener;)V

    .line 128
    return-void
.end method
