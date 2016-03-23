.class public Lcn/aigestudio/downloader/entities/TaskInfo;
.super Lcn/aigestudio/downloader/entities/DLInfo;
.source "TaskInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public length:I

.field public progress:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "dlLocalFile"    # Ljava/io/File;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "realUrl"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "length"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcn/aigestudio/downloader/entities/DLInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput p4, p0, Lcn/aigestudio/downloader/entities/TaskInfo;->progress:I

    .line 20
    iput p5, p0, Lcn/aigestudio/downloader/entities/TaskInfo;->length:I

    .line 21
    return-void
.end method
