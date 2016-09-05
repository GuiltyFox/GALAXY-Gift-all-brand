.class public Lcn/aigestudio/downloader/entities/ThreadInfo;
.super Lcn/aigestudio/downloader/entities/DLInfo;
.source "ThreadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcn/aigestudio/downloader/entities/DLInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput p4, p0, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    .line 21
    iput p5, p0, Lcn/aigestudio/downloader/entities/ThreadInfo;->f:I

    .line 22
    iput-object p6, p0, Lcn/aigestudio/downloader/entities/ThreadInfo;->d:Ljava/lang/String;

    .line 23
    return-void
.end method
