.class public abstract Lcom/jaalee/sdk/internal/HashCode;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/jaalee/sdk/internal/HashCode;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/jaalee/sdk/internal/HashCode;
    .registers 3

    array-length v0, p0

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_4
    const-string/jumbo v1, "A HashCode must contain at least 1 byte."

    invoke-static {v0, v1}, Lcom/jaalee/sdk/internal/e;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/jaalee/sdk/internal/HashCode;->b([B)Lcom/jaalee/sdk/internal/HashCode;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static b([B)Lcom/jaalee/sdk/internal/HashCode;
    .registers 2

    new-instance v0, Lcom/jaalee/sdk/internal/a;

    invoke-direct {v0, p0}, Lcom/jaalee/sdk/internal/a;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()[B
.end method

.method public abstract c()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/jaalee/sdk/internal/HashCode;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/jaalee/sdk/internal/HashCode;

    invoke-virtual {p0}, Lcom/jaalee/sdk/internal/HashCode;->b()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jaalee/sdk/internal/HashCode;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final hashCode()I
    .registers 6

    invoke-virtual {p0}, Lcom/jaalee/sdk/internal/HashCode;->c()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/jaalee/sdk/internal/HashCode;->a()I

    move-result v1

    :cond_c
    return v1

    :cond_d
    invoke-virtual {p0}, Lcom/jaalee/sdk/internal/HashCode;->b()[B

    move-result-object v2

    const/4 v0, 0x0

    aget-byte v0, v2, v0

    and-int/lit16 v1, v0, 0xff

    const/4 v0, 0x1

    :goto_17
    array-length v3, v2

    if-ge v0, v3, :cond_c

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v0, 0x3

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lcom/jaalee/sdk/internal/HashCode;->b()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_e
    if-lt v0, v3, :cond_15

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    aget-byte v4, v1, v0

    sget-object v5, Lcom/jaalee/sdk/internal/HashCode;->a:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/jaalee/sdk/internal/HashCode;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method
