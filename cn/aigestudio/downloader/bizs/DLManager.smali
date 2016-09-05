.class public final Lcn/aigestudio/downloader/bizs/DLManager;
.super Ljava/lang/Object;
.source "DLManager.java"


# static fields
.field private static a:Lcn/aigestudio/downloader/bizs/DLManager;

.field private static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/aigestudio/downloader/bizs/DLManager$DLTask;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcn/aigestudio/downloader/bizs/DBManager;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/DLManager;->e:Landroid/content/Context;

    .line 68
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager;->d:Ljava/util/concurrent/ExecutorService;

    .line 69
    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/DBManager;->a(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v0

    sput-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->c:Lcn/aigestudio/downloader/bizs/DBManager;

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->b:Ljava/util/Hashtable;

    .line 71
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/DLManager;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcn/aigestudio/downloader/bizs/DLManager;

    invoke-direct {v0, p0}, Lcn/aigestudio/downloader/bizs/DLManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    .line 77
    :cond_b
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->a:Lcn/aigestudio/downloader/bizs/DLManager;

    return-object v0
.end method

.method static synthetic a()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic a(Lcn/aigestudio/downloader/bizs/DLManager;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic b(Lcn/aigestudio/downloader/bizs/DLManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/DLManager;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Lcn/aigestudio/downloader/bizs/DBManager;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->c:Lcn/aigestudio/downloader/bizs/DBManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 86
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 87
    sget-object v0, Lcn/aigestudio/downloader/bizs/DLManager;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->a(Z)V

    .line 90
    :cond_14
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V
    .registers 10

    .prologue
    .line 81
    new-instance v0, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/aigestudio/downloader/bizs/DLManager$DLPrepare;-><init>(Lcn/aigestudio/downloader/bizs/DLManager;Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;Lcn/aigestudio/downloader/bizs/DLManager$1;)V

    .line 82
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
