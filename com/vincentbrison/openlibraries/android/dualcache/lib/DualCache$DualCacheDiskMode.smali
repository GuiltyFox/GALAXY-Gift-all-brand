.class public final enum Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;
.super Ljava/lang/Enum;
.source "DualCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

.field public static final enum b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

.field public static final enum c:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

.field private static final synthetic d:[Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    const-string/jumbo v1, "ENABLE_WITH_DEFAULT_SERIALIZER"

    invoke-direct {v0, v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    .line 79
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    const-string/jumbo v1, "ENABLE_WITH_CUSTOM_SERIALIZER"

    invoke-direct {v0, v1, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    .line 84
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    const-string/jumbo v1, "DISABLE"

    invoke-direct {v0, v1, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->c:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->b:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->c:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->d:[Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;
    .registers 2

    .prologue
    .line 69
    const-class v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    return-object v0
.end method

.method public static values()[Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->d:[Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    invoke-virtual {v0}, [Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheDiskMode;

    return-object v0
.end method
