.class public Lcn/aigestudio/downloader/daos/TaskDAO;
.super Lcn/aigestudio/downloader/interfaces/DAO;
.source "TaskDAO.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/interfaces/DAO;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcn/aigestudio/downloader/entities/DLInfo;)V
    .registers 7

    .prologue
    .line 29
    check-cast p1, Lcn/aigestudio/downloader/entities/TaskInfo;

    .line 30
    iget-object v0, p0, Lcn/aigestudio/downloader/daos/TaskDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v0}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "INSERT INTO task_info(base_url, real_url, file_path, onThreadProgress, file_length) values (?,?,?,?,?)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/TaskInfo;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/TaskInfo;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p1, Lcn/aigestudio/downloader/entities/TaskInfo;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p1, Lcn/aigestudio/downloader/entities/TaskInfo;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 44
    iget-object v0, p0, Lcn/aigestudio/downloader/daos/TaskDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v0}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
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

.method public b(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/DLInfo;
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcn/aigestudio/downloader/daos/TaskDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v1}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 64
    const-string/jumbo v1, "SELECT base_url, real_url, file_path, onThreadProgress, file_length FROM task_info WHERE base_url=?"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 72
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 73
    new-instance v0, Lcn/aigestudio/downloader/entities/TaskInfo;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcn/aigestudio/downloader/entities/TaskInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    .line 76
    :cond_3b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 78
    return-object v0
.end method

.method public b(Lcn/aigestudio/downloader/entities/DLInfo;)V
    .registers 7

    .prologue
    .line 52
    check-cast p1, Lcn/aigestudio/downloader/entities/TaskInfo;

    .line 53
    iget-object v0, p0, Lcn/aigestudio/downloader/daos/TaskDAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v0}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "UPDATE task_info SET onThreadProgress=? WHERE base_url=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcn/aigestudio/downloader/entities/TaskInfo;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcn/aigestudio/downloader/entities/TaskInfo;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 58
    return-void
.end method
