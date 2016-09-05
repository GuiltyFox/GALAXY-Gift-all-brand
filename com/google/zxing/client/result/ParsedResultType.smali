.class public final enum Lcom/google/zxing/client/result/ParsedResultType;
.super Ljava/lang/Enum;
.source "ParsedResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/client/result/ParsedResultType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum b:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum c:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum d:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum e:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum f:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum g:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum h:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum i:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum j:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum k:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum l:Lcom/google/zxing/client/result/ParsedResultType;

.field private static final synthetic m:[Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "ADDRESSBOOK"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->a:Lcom/google/zxing/client/result/ParsedResultType;

    .line 28
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "EMAIL_ADDRESS"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->b:Lcom/google/zxing/client/result/ParsedResultType;

    .line 29
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "PRODUCT"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->c:Lcom/google/zxing/client/result/ParsedResultType;

    .line 30
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "URI"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->d:Lcom/google/zxing/client/result/ParsedResultType;

    .line 31
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->e:Lcom/google/zxing/client/result/ParsedResultType;

    .line 32
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "GEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->f:Lcom/google/zxing/client/result/ParsedResultType;

    .line 33
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "TEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->g:Lcom/google/zxing/client/result/ParsedResultType;

    .line 34
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "SMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->h:Lcom/google/zxing/client/result/ParsedResultType;

    .line 35
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "CALENDAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->i:Lcom/google/zxing/client/result/ParsedResultType;

    .line 36
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "WIFI"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->j:Lcom/google/zxing/client/result/ParsedResultType;

    .line 37
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "ISBN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->k:Lcom/google/zxing/client/result/ParsedResultType;

    .line 38
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string/jumbo v1, "VIN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->l:Lcom/google/zxing/client/result/ParsedResultType;

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->a:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->b:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->c:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->d:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->e:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->f:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->g:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->h:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->i:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->j:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->k:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/zxing/client/result/ParsedResultType;->l:Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->m:[Lcom/google/zxing/client/result/ParsedResultType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/result/ParsedResultType;
    .registers 2

    .prologue
    .line 25
    const-class v0, Lcom/google/zxing/client/result/ParsedResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/client/result/ParsedResultType;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->m:[Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v0}, [Lcom/google/zxing/client/result/ParsedResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method
