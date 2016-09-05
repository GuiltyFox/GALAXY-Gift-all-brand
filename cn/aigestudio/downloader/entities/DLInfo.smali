.class public Lcn/aigestudio/downloader/entities/DLInfo;
.super Ljava/lang/Object;
.source "DLInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/io/File;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/aigestudio/downloader/entities/DLInfo;->a:Ljava/io/File;

    .line 18
    iput-object p2, p0, Lcn/aigestudio/downloader/entities/DLInfo;->b:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcn/aigestudio/downloader/entities/DLInfo;->c:Ljava/lang/String;

    .line 20
    return-void
.end method
