.class public final enum Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;
.super Ljava/lang/Enum;
.source "ValidateUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

.field public static final enum b:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

.field public static final enum c:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

.field private static final synthetic d:[Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 481
    new-instance v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    const-string/jumbo v1, "Object"

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->a:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    new-instance v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    const-string/jumbo v1, "Array"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->b:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    new-instance v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    const-string/jumbo v1, "Invalid"

    invoke-direct {v0, v1, v4}, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->c:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    .line 480
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    sget-object v1, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->a:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->b:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->c:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->d:[Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

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
    .line 480
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;
    .registers 2

    .prologue
    .line 480
    const-class v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;
    .registers 1

    .prologue
    .line 480
    sget-object v0, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->d:[Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    invoke-virtual {v0}, [Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    return-object v0
.end method
