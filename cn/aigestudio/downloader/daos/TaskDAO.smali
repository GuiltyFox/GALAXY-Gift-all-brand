.class public Lcn/aigestudio/downloader/daos/TaskDAO;
.super Lcn/aigestudio/downloader/interfaces/DAO;
.source "TaskDAO.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/interfaces/DAO;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public deleteInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lcn/aigestudio/downloader/daos/TaskDAO;->dbHelper:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v1}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "DELETE FROM task_info WHERE base_url=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 48
    return-void
.end method

.method public insertInfo(Lcn/aigestudio/downloader/entities/DLInfo;)V
    .registers 8
    .param p1, "info"    # Lcn/aigestudio/downloader/entities/DLInfo;

    .prologue
    .line 29
    move-object v1, p1

    check-cast v1, Lcn/aigestudio/downloader/entities/TaskInfo;

    .line 30
    .local v1, "i":Lcn/aigestudio/downloader/entities/TaskInfo;
    iget-object v2, p0, Lcn/aigestudio/downloader/daos/TaskDAO;->dbHelper:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v2}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 31
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "INSERT INTO task_info(base_url, real_url, file_path, onThreadProgress, file_length) values (?,?,?,?,?)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->realUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->dlLocalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->progress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 40
    return-void
.end method

.method public queryInfo(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/DLInfo;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "info":Lcn/aigestudio/downloader/entities/TaskInfo;
    iget-object v1, p0, Lcn/aigestudio/downloader/daos/TaskDAO;->dbHelper:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v1}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 64
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "SELECT base_url, real_url, file_path, onThreadProgress, file_length FROM task_info WHERE base_url=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 72
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 73
    new-instance v0, Lcn/aigestudio/downloader/entities/TaskInfo;

    .end local v0    # "info":Lcn/aigestudio/downloader/entities/TaskInfo;
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcn/aigestudio/downloader/entities/TaskInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    .line 76
    .restart local v0    # "info":Lcn/aigestudio/downloader/entities/TaskInfo;
    :cond_3b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 78
    return-object v0
.end method

.method public updateInfo(Lcn/aigestudio/downloader/entities/DLInfo;)V
    .registers 8
    .param p1, "info"    # Lcn/aigestudio/downloader/entities/DLInfo;

    .prologue
    .line 52
    move-object v1, p1

    check-cast v1, Lcn/aigestudio/downloader/entities/TaskInfo;

    .line 53
    .local v1, "i":Lcn/aigestudio/downloader/entities/TaskInfo;
    iget-object v2, p0, Lcn/aigestudio/downloader/daos/TaskDAO;->dbHelper:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v2}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "UPDATE task_info SET onThreadProgress=? WHERE base_url=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->progress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcn/aigestudio/downloader/entities/TaskInfo;->baseUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 58
    return-void
.end method
