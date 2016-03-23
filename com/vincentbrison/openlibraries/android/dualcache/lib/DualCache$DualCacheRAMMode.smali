.class public final enum Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;
.super Ljava/lang/Enum;
.source "DualCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DualCacheRAMMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

.field public static final enum DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

.field public static final enum ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

.field public static final enum ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

.field public static final enum ENABLE_WITH_REFERENCE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    const-string/jumbo v1, "ENABLE_WITH_DEFAULT_SERIALIZER"

    invoke-direct {v0, v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .line 53
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    const-string/jumbo v1, "ENABLE_WITH_CUSTOM_SERIALIZER"

    invoke-direct {v0, v1, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .line 58
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    const-string/jumbo v1, "ENABLE_WITH_REFERENCE"

    invoke-direct {v0, v1, v4}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_REFERENCE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .line 63
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    const-string/jumbo v1, "DISABLE"

    invoke-direct {v0, v1, v5}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_REFERENCE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->$VALUES:[Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    return-object v0
.end method

.method public static values()[Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->$VALUES:[Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0}, [Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    return-object v0
.end method
