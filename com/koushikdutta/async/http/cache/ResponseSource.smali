.class final enum Lcom/koushikdutta/async/http/cache/ResponseSource;
.super Ljava/lang/Enum;
.source "ResponseSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/koushikdutta/async/http/cache/ResponseSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/koushikdutta/async/http/cache/ResponseSource;

.field public static final enum b:Lcom/koushikdutta/async/http/cache/ResponseSource;

.field public static final enum c:Lcom/koushikdutta/async/http/cache/ResponseSource;

.field private static final synthetic d:[Lcom/koushikdutta/async/http/cache/ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseSource;

    const-string/jumbo v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->a:Lcom/koushikdutta/async/http/cache/ResponseSource;

    .line 30
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseSource;

    const-string/jumbo v1, "CONDITIONAL_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/async/http/cache/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->b:Lcom/koushikdutta/async/http/cache/ResponseSource;

    .line 35
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseSource;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/async/http/cache/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/koushikdutta/async/http/cache/ResponseSource;

    sget-object v1, Lcom/koushikdutta/async/http/cache/ResponseSource;->a:Lcom/koushikdutta/async/http/cache/ResponseSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/koushikdutta/async/http/cache/ResponseSource;->b:Lcom/koushikdutta/async/http/cache/ResponseSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->d:[Lcom/koushikdutta/async/http/cache/ResponseSource;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/cache/ResponseSource;
    .registers 2

    .prologue
    .line 19
    const-class v0, Lcom/koushikdutta/async/http/cache/ResponseSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/async/http/cache/ResponseSource;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->d:[Lcom/koushikdutta/async/http/cache/ResponseSource;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/cache/ResponseSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object v0
.end method
