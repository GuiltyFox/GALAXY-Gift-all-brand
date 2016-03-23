.class public final Lcn/aigestudio/downloader/cons/PublicCons$DBCons;
.super Ljava/lang/Object;
.source "PublicCons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/aigestudio/downloader/cons/PublicCons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DBCons"
.end annotation


# static fields
.field public static final TB_TASK:Ljava/lang/String; = "task_info"

.field public static final TB_TASK_FILE_LENGTH:Ljava/lang/String; = "file_length"

.field public static final TB_TASK_FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final TB_TASK_PROGRESS:Ljava/lang/String; = "onThreadProgress"

.field public static final TB_TASK_SQL_CREATE:Ljava/lang/String; = "CREATE TABLE task_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, onThreadProgress INTEGER, file_length INTEGER)"

.field public static final TB_TASK_SQL_UPGRADE:Ljava/lang/String; = "DROP TABLE IF EXISTS task_info"

.field public static final TB_TASK_URL_BASE:Ljava/lang/String; = "base_url"

.field public static final TB_TASK_URL_REAL:Ljava/lang/String; = "real_url"

.field public static final TB_THREAD:Ljava/lang/String; = "thread_info"

.field public static final TB_THREAD_END:Ljava/lang/String; = "end"

.field public static final TB_THREAD_FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final TB_THREAD_ID:Ljava/lang/String; = "id"

.field public static final TB_THREAD_SQL_CREATE:Ljava/lang/String; = "CREATE TABLE thread_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, start INTEGER, end INTEGER, id CHAR)"

.field public static final TB_THREAD_SQL_UPGRADE:Ljava/lang/String; = "DROP TABLE IF EXISTS thread_info"

.field public static final TB_THREAD_START:Ljava/lang/String; = "start"

.field public static final TB_THREAD_URL_BASE:Ljava/lang/String; = "base_url"

.field public static final TB_THREAD_URL_REAL:Ljava/lang/String; = "real_url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
