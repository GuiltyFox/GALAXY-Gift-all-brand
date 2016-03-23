.class Lcom/bzbs/lib/survey/control/download/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Lcom/bzbs/lib/survey/control/download/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;,
        Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "downloads.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final TABLE_NAME:Ljava/lang/String; = "downloads"


# instance fields
.field private mContentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;

    invoke-direct {v0, p1}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mOpenHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mContentListeners:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;)V
    .registers 3
    .param p1, "l"    # Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mContentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 102
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mContentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_d
    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 9
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mOpenHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "downloads"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 50
    .local v2, "id":J
    const-string/jumbo v1, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DatabaseHelper delete() id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->notifyContentChange()V

    .line 52
    return-wide v2
.end method

.method public insert(Landroid/content/ContentValues;)J
    .registers 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mOpenHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "downloads"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 34
    .local v2, "id":J
    const-string/jumbo v1, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DatabaseHelper insert() id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->notifyContentChange()V

    .line 36
    return-wide v2
.end method

.method public notifyContentChange()V
    .registers 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mContentListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;

    .line 112
    .local v0, "l":Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;
    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;->onContentChange()V

    goto :goto_6

    .line 114
    .end local v0    # "l":Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;
    :cond_16
    return-void
.end method

.method public onComplete(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 139
    const-string/jumbo v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DatabaseHelper onComplete() request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
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

    .line 141
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 142
    return-void
.end method

.method public onError(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 132
    const-string/jumbo v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DatabaseHelper onError() request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
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

    .line 134
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 135
    return-void
.end method

.method public onPause(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 159
    const-string/jumbo v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DatabaseHelper onPause() request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
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

    .line 161
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 162
    return-void
.end method

.method public onProgress(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 125
    const-string/jumbo v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DatabaseHelper onProgress() request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
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

    .line 127
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 128
    return-void
.end method

.method public onStart(Lcom/bzbs/lib/survey/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lcom/bzbs/lib/survey/control/download/DownloadRequest;

    .prologue
    .line 118
    const-string/jumbo v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DatabaseHelper onStart() request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
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

    .line 120
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/bzbs/lib/survey/control/download/DownloadRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 121
    return-void
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 57
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mOpenHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "downloads"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public removeContentListener(Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;)V
    .registers 3
    .param p1, "l"    # Lcom/bzbs/lib/survey/control/download/DatabaseHelper$ContentListener;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mContentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->mOpenHelper:Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper$MyOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "downloads"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 42
    .local v2, "id":J
    const-string/jumbo v1, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DatabaseHelper update() id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/download/DatabaseHelper;->notifyContentChange()V

    .line 44
    return-wide v2
.end method
