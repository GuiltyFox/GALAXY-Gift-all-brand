.class public Lcn/aigestudio/downloader/interfaces/DLTaskListener;
.super Ljava/lang/Object;
.source "DLTaskListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(ILjava/lang/String;)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

.method public onFinish(Ljava/io/File;)V
    .registers 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 59
    return-void
.end method

.method public onProgress(I)V
    .registers 2
    .param p1, "progress"    # I

    .prologue
    .line 41
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    return-void
.end method
