.class public final enum Lokhttp3/logging/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum b:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private static final synthetic e:[Lokhttp3/logging/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->a:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 63
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string/jumbo v1, "BASIC"

    invoke-direct {v0, v1, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->b:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 81
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string/jumbo v1, "HEADERS"

    invoke-direct {v0, v1, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 103
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string/jumbo v1, "BODY"

    invoke-direct {v0, v1, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lokhttp3/logging/HttpLoggingInterceptor$Level;

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->a:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->b:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v5

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->e:[Lokhttp3/logging/HttpLoggingInterceptor$Level;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .registers 2

    .prologue
    .line 50
    const-class v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public static values()[Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->e:[Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lokhttp3/logging/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method
