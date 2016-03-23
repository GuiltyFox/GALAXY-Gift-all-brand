.class public abstract Lcn/aigestudio/downloader/interfaces/DAO;
.super Ljava/lang/Object;
.source "DAO.java"


# instance fields
.field protected dbHelper:Lcn/aigestudio/downloader/daos/DBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/daos/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/aigestudio/downloader/interfaces/DAO;->dbHelper:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/aigestudio/downloader/interfaces/DAO;->dbHelper:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-virtual {v0}, Lcn/aigestudio/downloader/daos/DBOpenHelper;->close()V

    .line 31
    return-void
.end method

.method public abstract deleteInfo(Ljava/lang/String;)V
.end method

.method public abstract insertInfo(Lcn/aigestudio/downloader/entities/DLInfo;)V
.end method

.method public abstract queryInfo(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/DLInfo;
.end method

.method public abstract updateInfo(Lcn/aigestudio/downloader/entities/DLInfo;)V
.end method
