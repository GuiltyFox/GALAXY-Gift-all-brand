.class public abstract Lcn/aigestudio/downloader/interfaces/DAO;
.super Ljava/lang/Object;
.source "DAO.java"


# instance fields
.field protected a:Lcn/aigestudio/downloader/daos/DBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcn/aigestudio/downloader/daos/DBOpenHelper;

    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/daos/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/aigestudio/downloader/interfaces/DAO;->a:Lcn/aigestudio/downloader/daos/DBOpenHelper;

    .line 19
    return-void
.end method
