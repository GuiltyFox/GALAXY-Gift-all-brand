.class public final Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;
.super Ljava/lang/Object;
.source "DualCacheContextUtils.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected static getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The context provided to this library is null. Please provide a proper context according the lifecycle of the application (you should provide the application context)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_d
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sput-object p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method
