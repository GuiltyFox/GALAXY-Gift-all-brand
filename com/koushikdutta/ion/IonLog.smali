.class Lcom/koushikdutta/ion/IonLog;
.super Ljava/lang/Object;
.source "IonLog.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/ion/IonLog;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 25
    const-string/jumbo v0, "ION"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    return-void
.end method
