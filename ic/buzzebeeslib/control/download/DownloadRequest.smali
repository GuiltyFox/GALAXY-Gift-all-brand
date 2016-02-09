.class public Lic/buzzebeeslib/control/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field private mDestUri:Ljava/lang/String;

.field private mDownloadListener:Lic/buzzebeeslib/control/download/DownloadListener;

.field private mDownloadSize:J

.field private mDownloadStatus:Ljava/lang/String;

.field private mExtraValue:Ljava/lang/String;

.field private mId:J

.field private mSrcUri:Ljava/lang/String;

.field private mSupportContinue:Z

.field private mTimeStamp:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTotalSize:J

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mId:J

    .line 15
    const-string v2, " "

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mUuid:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSupportContinue:Z

    .line 19
    const-string v2, "unknown"

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTitle:Ljava/lang/String;

    .line 20
    iput-wide v4, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTotalSize:J

    .line 21
    iput-wide v4, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadSize:J

    .line 22
    const-string v2, "status_idle"

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadStatus:Ljava/lang/String;

    .line 23
    const-string v2, "00-00-00"

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTimeStamp:Ljava/lang/String;

    .line 24
    const-string v2, " "

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mExtraValue:Ljava/lang/String;

    .line 46
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mId:J

    .line 47
    const-string v2, "uuid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mUuid:Ljava/lang/String;

    .line 48
    const-string v2, "src_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSrcUri:Ljava/lang/String;

    .line 49
    const-string v2, "dest_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDestUri:Ljava/lang/String;

    .line 50
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTitle:Ljava/lang/String;

    .line 52
    const-string v2, "support_continue"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 53
    .local v0, "intValue":I
    if-nez v0, :cond_6d

    const/4 v1, 0x0

    :cond_6d
    iput-boolean v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSupportContinue:Z

    .line 55
    const-string v1, "total_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTotalSize:J

    .line 56
    const-string v1, "download_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadSize:J

    .line 57
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadStatus:Ljava/lang/String;

    .line 58
    const-string v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTimeStamp:Ljava/lang/String;

    .line 59
    const-string v1, "extra_value"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mExtraValue:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "srcUri"    # Ljava/lang/String;
    .param p2, "destUri"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mId:J

    .line 15
    const-string v0, " "

    iput-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mUuid:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSupportContinue:Z

    .line 19
    const-string v0, "unknown"

    iput-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTitle:Ljava/lang/String;

    .line 20
    iput-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTotalSize:J

    .line 21
    iput-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadSize:J

    .line 22
    const-string v0, "status_idle"

    iput-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadStatus:Ljava/lang/String;

    .line 23
    const-string v0, "00-00-00"

    iput-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTimeStamp:Ljava/lang/String;

    .line 24
    const-string v0, " "

    iput-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mExtraValue:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSrcUri:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDestUri:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized getDestUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDestUri:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadListener()Lic/buzzebeeslib/control/download/DownloadListener;
    .registers 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadListener:Lic/buzzebeeslib/control/download/DownloadListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadSize()J
    .registers 3

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadStatus:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExtraValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mExtraValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getId()J
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mId:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSrcUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSrcUri:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupportContinue()Z
    .registers 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSupportContinue:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeStamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTimeStamp:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTitle:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalSize()J
    .registers 3

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTotalSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mUuid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setDestUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "destUri"    # Ljava/lang/String;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDestUri:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p1

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V
    .registers 3
    .param p1, "listener"    # Lic/buzzebeeslib/control/download/DownloadListener;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadListener:Lic/buzzebeeslib/control/download/DownloadListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setDownloadSize(J)J
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide p1

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setDownloadStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadStatus:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p1

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExtraValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "extraValue"    # Ljava/lang/String;

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mExtraValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setId(J)J
    .registers 4
    .param p1, "id"    # J

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mId:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide p1

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setSrcUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "srcUri"    # Ljava/lang/String;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSrcUri:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p1

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportContinue(Z)V
    .registers 3
    .param p1, "isContinue"    # Z

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSupportContinue:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTimeStamp(Ljava/lang/String;)V
    .registers 3
    .param p1, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTimeStamp:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTitle:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p1

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setTotalSize(J)J
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTotalSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide p1

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setUuid(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mUuid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p1

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toContentValues()Landroid/content/ContentValues;
    .registers 6

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v0, "value":Landroid/content/ContentValues;
    iget-wide v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_19

    .line 70
    const-string v1, "_id"

    iget-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    :cond_19
    const-string v1, "uuid"

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "src_url"

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSrcUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "dest_url"

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDestUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "title"

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "support_continue"

    iget-boolean v1, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSupportContinue:Z

    if-eqz v1, :cond_70

    const/4 v1, 0x1

    :goto_3c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v1, "total_size"

    iget-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTotalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string v1, "download_size"

    iget-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    const-string v1, "status"

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "timestamp"

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "extra_value"

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mExtraValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_72

    .line 83
    monitor-exit p0

    return-object v0

    .line 76
    :cond_70
    const/4 v1, 0x0

    goto :goto_3c

    .line 68
    .end local v0    # "value":Landroid/content/ContentValues;
    :catchall_72
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    const-string v2, ", mUuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    const-string v2, ", mSrcUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSrcUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string v2, ", mDestUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDestUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string v2, ", mTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string v2, ", mSupportContinue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mSupportContinue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string v2, ", mTotalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTotalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    const-string v2, ", mDownloadSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string v2, ", mDownloadStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mDownloadStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    const-string v2, ", mTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-string v2, ", mExtraValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/control/download/DownloadRequest;->mExtraValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
