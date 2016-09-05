.class public final enum Lcn/aigestudio/downloader/cons/HttpConnPars;
.super Ljava/lang/Enum;
.source "HttpConnPars.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/aigestudio/downloader/cons/HttpConnPars;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field public static final enum b:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field public static final enum c:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field public static final enum d:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field public static final enum e:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field public static final enum f:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field public static final enum g:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field public static final enum h:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field public static final enum i:Lcn/aigestudio/downloader/cons/HttpConnPars;

.field private static final synthetic l:[Lcn/aigestudio/downloader/cons/HttpConnPars;


# instance fields
.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "GET"

    invoke-direct {v0, v1, v5, v2}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->a:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 11
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "ACCEPT"

    const-string/jumbo v2, "Accept"

    const-string/jumbo v3, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-direct {v0, v1, v6, v2, v3}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->b:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 12
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "ACCEPT_LANGUAGE"

    const-string/jumbo v2, "Accept-Language"

    const-string/jumbo v3, "zh-CN"

    invoke-direct {v0, v1, v7, v2, v3}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->c:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 13
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "ACCEPT_RANGE"

    const-string/jumbo v2, "Accept-Ranges"

    const-string/jumbo v3, "bytes"

    invoke-direct {v0, v1, v8, v2, v3}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->d:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 14
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "CHARSET"

    const-string/jumbo v2, "Charset"

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v1, v9, v2, v3}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->e:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 15
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "CONNECT_TIMEOUT"

    const/4 v2, 0x5

    const-string/jumbo v3, "5000"

    invoke-direct {v0, v1, v2, v3}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->f:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 16
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "KEEP_CONNECT"

    const/4 v2, 0x6

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->g:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 17
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "LOCATION"

    const/4 v2, 0x7

    const-string/jumbo v3, "location"

    invoke-direct {v0, v1, v2, v3}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->h:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 18
    new-instance v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    const-string/jumbo v1, "REFERER"

    const/16 v2, 0x8

    const-string/jumbo v3, "referer"

    invoke-direct {v0, v1, v2, v3}, Lcn/aigestudio/downloader/cons/HttpConnPars;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->i:Lcn/aigestudio/downloader/cons/HttpConnPars;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcn/aigestudio/downloader/cons/HttpConnPars;

    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->a:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v1, v0, v5

    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->b:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v1, v0, v6

    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->c:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v1, v0, v7

    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->d:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v1, v0, v8

    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->e:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->f:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->g:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->h:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->i:Lcn/aigestudio/downloader/cons/HttpConnPars;

    aput-object v2, v0, v1

    sput-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->l:[Lcn/aigestudio/downloader/cons/HttpConnPars;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcn/aigestudio/downloader/cons/HttpConnPars;->j:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/aigestudio/downloader/cons/HttpConnPars;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/cons/HttpConnPars;

    return-object v0
.end method

.method public static values()[Lcn/aigestudio/downloader/cons/HttpConnPars;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcn/aigestudio/downloader/cons/HttpConnPars;->l:[Lcn/aigestudio/downloader/cons/HttpConnPars;

    invoke-virtual {v0}, [Lcn/aigestudio/downloader/cons/HttpConnPars;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/aigestudio/downloader/cons/HttpConnPars;

    return-object v0
.end method
