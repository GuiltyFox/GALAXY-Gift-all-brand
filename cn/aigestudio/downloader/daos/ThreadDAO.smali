.class public Lcn/aigestudio/downloader/daos/ThreadDAO;
.super Lcn/aigestudio/downloader/interfaces/DAO;
.source "ThreadDAO.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/interfaces/DAO;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcn/aigestudio/downloader/entities/DLInfo;)V
    .registers 7

    .prologue
    .line 31
    check-cast p1, Lcn/aigestudio/downloader/entities/ThreadInfo;

    .line 32
    iget-object v0, p0, Lcn/aigestudio/downloader/daos/ThreadDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v0}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    const-string/jumbo v1, "INSERT INTO thread_info(base_url, real_url, file_path, start, end, id) VALUES (?,?,?,?,?,?)"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 47
    iget-object v0, p0, Lcn/aigestudio/downloader/daos/ThreadDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v0}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "DELETE FROM thread_info WHERE id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/DLInfo;
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcn/aigestudio/downloader/daos/ThreadDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v1}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 75
    const-string/jumbo v1, "SELECT base_url, real_url, file_path, start, end FROM thread_info WHERE id=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 83
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 84
    new-instance v0, Lcn/aigestudio/downloader/entities/ThreadInfo;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcn/aigestudio/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 87
    :cond_3c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 88
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    return-object v0
.end method

.method public b(Lcn/aigestudio/downloader/entities/DLInfo;)V
    .registers 7

    .prologue
    .line 62
    check-cast p1, Lcn/aigestudio/downloader/entities/ThreadInfo;

    .line 63
    iget-object v0, p0, Lcn/aigestudio/downloader/daos/ThreadDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v0}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "UPDATE thread_info SET start=? WHERE base_url=? AND id=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/ThreadInfo;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 14
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
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 93
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lcn/aigestudio/downloader/daos/ThreadDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v0}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 95
    const-string/jumbo v0, "SELECT base_url, real_url, file_path, start, end, id FROM thread_info WHERE base_url=?"

    new-array v1, v11, [Ljava/lang/String;

    aput-object p1, v1, v10

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 104
    :goto_18
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 105
    new-instance v0, Lcn/aigestudio/downloader/entities/ThreadInfo;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcn/aigestudio/downloader/entities/ThreadInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 108
    :cond_48
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    return-object v7
.end method
