.class public final Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;
.super Ljava/lang/Object;
.source "DualCacheLogUtils.java"


# static fields
.field private static final DEFAULT_LOG_TAG:Ljava/lang/String; = "dualcache"

.field private static isLogEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->isLogEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static disableLog()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->isLogEnabled:Z

    .line 45
    return-void
.end method

.method public static enableLog()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->isLogEnabled:Z

    .line 38
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "lvl"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->isLogEnabled:Z

    if-eqz v0, :cond_7

    .line 49
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_7
    return-void
.end method

.method public static logError(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    sget-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->isLogEnabled:Z

    if-eqz v0, :cond_d

    .line 92
    const-string/jumbo v0, "dualcache"

    const-string/jumbo v1, "error : "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_d
    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x4

    const-string/jumbo v1, "dualcache"

    invoke-static {v0, v1, p0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x2

    const-string/jumbo v1, "dualcache"

    invoke-static {v0, v1, p0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static logWarning(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x5

    const-string/jumbo v1, "dualcache"

    invoke-static {v0, v1, p0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method
