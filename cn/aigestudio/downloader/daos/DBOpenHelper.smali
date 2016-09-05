.class public final Lcn/aigestudio/downloader/daos/DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 29
    const-string/jumbo v0, "dl.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 34
    const-string/jumbo v0, "CREATE TABLE task_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, onThreadProgress INTEGER, file_length INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "CREATE TABLE thread_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, start INTEGER, end INTEGER, id CHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 40
    const-string/jumbo v0, "DROP TABLE IF EXISTS task_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "DROP TABLE IF EXISTS thread_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    return-void
.end method
