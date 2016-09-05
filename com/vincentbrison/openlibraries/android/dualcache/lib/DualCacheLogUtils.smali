.class public final Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;
.super Ljava/lang/Object;
.source "DualCacheLogUtils.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a:Z

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a:Z

    .line 38
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 48
    sget-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a:Z

    if-eqz v0, :cond_7

    .line 49
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 67
    const/4 v0, 0x4

    const-string/jumbo v1, "dualcache"

    invoke-static {v0, v1, p0}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 91
    sget-boolean v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a:Z

    if-eqz v0, :cond_d

    .line 92
    const-string/jumbo v0, "dualcache"

    const-string/jumbo v1, "error : "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_d
    return-void
.end method
