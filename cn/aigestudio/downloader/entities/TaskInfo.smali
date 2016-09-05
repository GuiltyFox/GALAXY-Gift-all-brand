.class public Lcn/aigestudio/downloader/entities/TaskInfo;
.super Lcn/aigestudio/downloader/entities/DLInfo;
.source "TaskInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcn/aigestudio/downloader/entities/DLInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput p4, p0, Lcn/aigestudio/downloader/entities/TaskInfo;->d:I

    .line 20
    iput p5, p0, Lcn/aigestudio/downloader/entities/TaskInfo;->e:I

    .line 21
    return-void
.end method
