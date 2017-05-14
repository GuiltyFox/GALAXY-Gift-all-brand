.class public final enum Lcom/koushikdutta/async/http/spdy/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/koushikdutta/async/http/spdy/HeadersMode;

.field public static final enum b:Lcom/koushikdutta/async/http/spdy/HeadersMode;

.field public static final enum c:Lcom/koushikdutta/async/http/spdy/HeadersMode;

.field public static final enum d:Lcom/koushikdutta/async/http/spdy/HeadersMode;

.field private static final synthetic e:[Lcom/koushikdutta/async/http/spdy/HeadersMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const-string/jumbo v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->a:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    .line 20
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const-string/jumbo v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/async/http/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->b:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    .line 21
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const-string/jumbo v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/async/http/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->c:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    .line 22
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    const-string/jumbo v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lcom/koushikdutta/async/http/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->d:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/koushikdutta/async/http/spdy/HeadersMode;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/HeadersMode;->a:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/koushikdutta/async/http/spdy/HeadersMode;->b:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/koushikdutta/async/http/spdy/HeadersMode;->c:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/koushikdutta/async/http/spdy/HeadersMode;->d:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->e:[Lcom/koushikdutta/async/http/spdy/HeadersMode;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/HeadersMode;
    .registers 2

    .prologue
    .line 18
    const-class v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/async/http/spdy/HeadersMode;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->e:[Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/spdy/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/spdy/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->b:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->c:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/koushikdutta/async/http/spdy/HeadersMode;->a:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
