.class public final enum Lcom/jaalee/sdk/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/jaalee/sdk/e;

.field public static final enum b:Lcom/jaalee/sdk/e;

.field private static final synthetic c:[Lcom/jaalee/sdk/e;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/jaalee/sdk/e;

    const-string/jumbo v1, "INSIDE"

    invoke-direct {v0, v1, v2}, Lcom/jaalee/sdk/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jaalee/sdk/e;->a:Lcom/jaalee/sdk/e;

    new-instance v0, Lcom/jaalee/sdk/e;

    const-string/jumbo v1, "OUTSIDE"

    invoke-direct {v0, v1, v3}, Lcom/jaalee/sdk/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jaalee/sdk/e;->b:Lcom/jaalee/sdk/e;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jaalee/sdk/e;

    sget-object v1, Lcom/jaalee/sdk/e;->a:Lcom/jaalee/sdk/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jaalee/sdk/e;->b:Lcom/jaalee/sdk/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jaalee/sdk/e;->c:[Lcom/jaalee/sdk/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jaalee/sdk/e;
    .registers 2

    const-class v0, Lcom/jaalee/sdk/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/e;

    return-object v0
.end method

.method public static values()[Lcom/jaalee/sdk/e;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/jaalee/sdk/e;->c:[Lcom/jaalee/sdk/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/jaalee/sdk/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
