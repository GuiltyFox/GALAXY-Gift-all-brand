.class Lic/buzzebeeslib/control/download/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NubiaDownloadManager"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "NubiaDownloadManager"

    invoke-static {v0, p0}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "NubiaDownloadManager"

    invoke-static {v0, p0}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    const-string v0, "NubiaDownloadManager"

    invoke-static {v0, p0}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "NubiaDownloadManager"

    invoke-static {v0, p0}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
