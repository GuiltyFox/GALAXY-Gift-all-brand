.class public Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxThread:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->mMaxThread:I

    return-void
.end method

.method static synthetic access$100(Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;

    .prologue
    .line 40
    iget v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->mMaxThread:I

    return v0
.end method

.method static synthetic access$200(Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/bzbs/lib/survey/control/download/DownloadManager;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_a
    new-instance v0, Lcom/bzbs/lib/survey/control/download/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/lib/survey/control/download/DownloadManager;-><init>(Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;Lcom/bzbs/lib/survey/control/download/DownloadManager$1;)V

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->mContext:Landroid/content/Context;

    .line 54
    return-object p0
.end method

.method public setMaxThread(I)Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;
    .registers 2
    .param p1, "maxThread"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/bzbs/lib/survey/control/download/DownloadManager$Builder;->mMaxThread:I

    .line 65
    return-object p0
.end method
