.class final Lcom/jaalee/sdk/internal/a;
.super Lcom/jaalee/sdk/internal/HashCode;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Lcom/jaalee/sdk/internal/HashCode;-><init>()V

    invoke-static {p1}, Lcom/jaalee/sdk/internal/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/jaalee/sdk/internal/a;->a:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/internal/a;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/jaalee/sdk/internal/a;->a:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/jaalee/sdk/internal/a;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/jaalee/sdk/internal/a;->a:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/internal/a;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/internal/a;->a:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method
