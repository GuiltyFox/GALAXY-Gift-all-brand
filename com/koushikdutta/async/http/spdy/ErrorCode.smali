.class final enum Lcom/koushikdutta/async/http/spdy/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/koushikdutta/async/http/spdy/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum b:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum c:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum d:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum e:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum f:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum g:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum h:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum i:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum j:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum k:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum l:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum m:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum n:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum o:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum p:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field public static final enum q:Lcom/koushikdutta/async/http/spdy/ErrorCode;

.field private static final synthetic u:[Lcom/koushikdutta/async/http/spdy/ErrorCode;


# instance fields
.field public final r:I

.field public final s:I

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 21
    new-instance v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v1, "NO_ERROR"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->a:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 23
    new-instance v5, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v6, "PROTOCOL_ERROR"

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/koushikdutta/async/http/spdy/ErrorCode;->b:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 26
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "INVALID_STREAM"

    move v10, v14

    move v11, v7

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->c:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 29
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "UNSUPPORTED_VERSION"

    const/4 v12, 0x4

    move v10, v15

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->d:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 32
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "STREAM_IN_USE"

    const/4 v10, 0x4

    const/16 v12, 0x8

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->e:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 35
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "STREAM_ALREADY_CLOSED"

    const/4 v10, 0x5

    const/16 v12, 0x9

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->f:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 37
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "INTERNAL_ERROR"

    const/4 v10, 0x6

    const/4 v12, 0x6

    move v11, v14

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->g:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 39
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x7

    const/4 v12, 0x7

    move v11, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->h:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 41
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "STREAM_CLOSED"

    const/16 v10, 0x8

    const/4 v11, 0x5

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->i:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 43
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "FRAME_TOO_LARGE"

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xb

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->j:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 45
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "REFUSED_STREAM"

    const/16 v10, 0xa

    const/4 v11, 0x7

    move v12, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->k:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 47
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "CANCEL"

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/4 v12, 0x5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->l:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 49
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "COMPRESSION_ERROR"

    const/16 v10, 0xc

    const/16 v11, 0x9

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->m:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 51
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "CONNECT_ERROR"

    const/16 v10, 0xd

    const/16 v11, 0xa

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->n:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 53
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "ENHANCE_YOUR_CALM"

    const/16 v10, 0xe

    const/16 v11, 0xb

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->o:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 55
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "INADEQUATE_SECURITY"

    const/16 v10, 0xf

    const/16 v11, 0xc

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->p:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 57
    new-instance v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    const-string/jumbo v9, "INVALID_CREDENTIALS"

    const/16 v10, 0x10

    const/16 v12, 0xa

    move v11, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/koushikdutta/async/http/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/koushikdutta/async/http/spdy/ErrorCode;->q:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .line 19
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/koushikdutta/async/http/spdy/ErrorCode;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->a:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->b:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->c:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v1, v0, v14

    sget-object v1, Lcom/koushikdutta/async/http/spdy/ErrorCode;->d:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->e:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->f:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->g:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->h:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->i:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->j:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->k:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->l:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->m:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->n:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->o:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->p:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->q:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->u:[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->r:I

    .line 65
    iput p4, p0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->s:I

    .line 66
    iput p5, p0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->t:I

    .line 67
    return-void
.end method

.method public static a(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .registers 6

    .prologue
    .line 70
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->values()[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 71
    iget v4, v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->s:I

    if-ne v4, p0, :cond_10

    .line 73
    :goto_f
    return-object v0

    .line 70
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 73
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .registers 6

    .prologue
    .line 77
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->values()[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 78
    iget v4, v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->r:I

    if-ne v4, p0, :cond_10

    .line 80
    :goto_f
    return-object v0

    .line 77
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 80
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static c(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .registers 6

    .prologue
    .line 84
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->values()[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 85
    iget v4, v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->t:I

    if-ne v4, p0, :cond_10

    .line 87
    :goto_f
    return-object v0

    .line 84
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 87
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .registers 2

    .prologue
    .line 19
    const-class v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/koushikdutta/async/http/spdy/ErrorCode;->u:[Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/spdy/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/spdy/ErrorCode;

    return-object v0
.end method
