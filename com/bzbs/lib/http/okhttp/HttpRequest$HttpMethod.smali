.class public final enum Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;
.super Ljava/lang/Enum;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

.field public static final enum b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

.field public static final enum c:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

.field public static final enum d:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

.field private static final synthetic e:[Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 968
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 969
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 970
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->c:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 971
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->d:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 967
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->c:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->d:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->e:[Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

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
    .line 967
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;
    .registers 2

    .prologue
    .line 967
    const-class v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;
    .registers 1

    .prologue
    .line 967
    sget-object v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->e:[Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    invoke-virtual {v0}, [Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    return-object v0
.end method
