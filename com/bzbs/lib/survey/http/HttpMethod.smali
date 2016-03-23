.class public final enum Lcom/bzbs/lib/survey/http/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/lib/survey/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bzbs/lib/survey/http/HttpMethod;

.field public static final enum DELETE:Lcom/bzbs/lib/survey/http/HttpMethod;

.field public static final enum GET:Lcom/bzbs/lib/survey/http/HttpMethod;

.field public static final enum POST:Lcom/bzbs/lib/survey/http/HttpMethod;

.field public static final enum POST_IMAGE:Lcom/bzbs/lib/survey/http/HttpMethod;

.field public static final enum PUT:Lcom/bzbs/lib/survey/http/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/bzbs/lib/survey/http/HttpMethod;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/http/HttpMethod;->GET:Lcom/bzbs/lib/survey/http/HttpMethod;

    .line 8
    new-instance v0, Lcom/bzbs/lib/survey/http/HttpMethod;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/lib/survey/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/http/HttpMethod;->POST:Lcom/bzbs/lib/survey/http/HttpMethod;

    .line 9
    new-instance v0, Lcom/bzbs/lib/survey/http/HttpMethod;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/bzbs/lib/survey/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/http/HttpMethod;->DELETE:Lcom/bzbs/lib/survey/http/HttpMethod;

    .line 10
    new-instance v0, Lcom/bzbs/lib/survey/http/HttpMethod;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/bzbs/lib/survey/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/http/HttpMethod;->PUT:Lcom/bzbs/lib/survey/http/HttpMethod;

    .line 11
    new-instance v0, Lcom/bzbs/lib/survey/http/HttpMethod;

    const-string/jumbo v1, "POST_IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/bzbs/lib/survey/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/http/HttpMethod;->POST_IMAGE:Lcom/bzbs/lib/survey/http/HttpMethod;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bzbs/lib/survey/http/HttpMethod;

    sget-object v1, Lcom/bzbs/lib/survey/http/HttpMethod;->GET:Lcom/bzbs/lib/survey/http/HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bzbs/lib/survey/http/HttpMethod;->POST:Lcom/bzbs/lib/survey/http/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bzbs/lib/survey/http/HttpMethod;->DELETE:Lcom/bzbs/lib/survey/http/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bzbs/lib/survey/http/HttpMethod;->PUT:Lcom/bzbs/lib/survey/http/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bzbs/lib/survey/http/HttpMethod;->POST_IMAGE:Lcom/bzbs/lib/survey/http/HttpMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bzbs/lib/survey/http/HttpMethod;->$VALUES:[Lcom/bzbs/lib/survey/http/HttpMethod;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/lib/survey/http/HttpMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/bzbs/lib/survey/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/http/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/lib/survey/http/HttpMethod;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/bzbs/lib/survey/http/HttpMethod;->$VALUES:[Lcom/bzbs/lib/survey/http/HttpMethod;

    invoke-virtual {v0}, [Lcom/bzbs/lib/survey/http/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/lib/survey/http/HttpMethod;

    return-object v0
.end method
