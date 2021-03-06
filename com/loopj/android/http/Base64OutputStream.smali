.class public Lcom/loopj/android/http/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static final EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Lcom/loopj/android/http/Base64$Coder;

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/loopj/android/http/Base64OutputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    iput-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    .line 51
    iput p2, p0, Lcom/loopj/android/http/Base64OutputStream;->flags:I

    .line 52
    if-eqz p3, :cond_15

    .line 53
    new-instance v0, Lcom/loopj/android/http/Base64$Encoder;

    invoke-direct {v0, p2, v1}, Lcom/loopj/android/http/Base64$Encoder;-><init>(I[B)V

    iput-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    .line 57
    :goto_14
    return-void

    .line 55
    :cond_15
    new-instance v0, Lcom/loopj/android/http/Base64$Decoder;

    invoke-direct {v0, p2, v1}, Lcom/loopj/android/http/Base64$Decoder;-><init>(I[B)V

    iput-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    goto :goto_14
.end method

.method private embiggen([BI)[B
    .registers 4

    .prologue
    .line 140
    if-eqz p1, :cond_5

    array-length v0, p1

    if-ge v0, p2, :cond_7

    .line 141
    :cond_5
    new-array p1, p2, [B

    .line 143
    :cond_7
    return-object p1
.end method

.method private flushBuffer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 82
    iget v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    if-lez v0, :cond_e

    .line 83
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    .line 84
    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    .line 86
    :cond_e
    return-void
.end method

.method private internalWrite([BIIZ)V
    .registers 9

    .prologue
    .line 129
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget-object v1, v1, Lcom/loopj/android/http/Base64$Coder;->output:[B

    iget-object v2, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    invoke-virtual {v2, p3}, Lcom/loopj/android/http/Base64$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/loopj/android/http/Base64OutputStream;->embiggen([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/loopj/android/http/Base64$Coder;->output:[B

    .line 130
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/loopj/android/http/Base64$Coder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_23

    .line 131
    new-instance v0, Lcom/loopj/android/http/Base64DataException;

    const-string/jumbo v1, "bad base-64"

    invoke-direct {v0, v1}, Lcom/loopj/android/http/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_23
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget-object v1, v1, Lcom/loopj/android/http/Base64$Coder;->output:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget v3, v3, Lcom/loopj/android/http/Base64$Coder;->op:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 134
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    :try_start_1
    invoke-direct {p0}, Lcom/loopj/android/http/Base64OutputStream;->flushBuffer()V

    .line 100
    sget-object v0, Lcom/loopj/android/http/Base64OutputStream;->EMPTY:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_1b

    .line 106
    :goto_c
    :try_start_c
    iget v0, p0, Lcom/loopj/android/http/Base64OutputStream;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1e

    .line 107
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_24

    :goto_17
    move-object v0, v1

    .line 117
    :cond_18
    :goto_18
    if-eqz v0, :cond_29

    .line 118
    throw v0

    .line 101
    :catch_1b
    move-exception v0

    move-object v1, v0

    .line 102
    goto :goto_c

    .line 109
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_17

    .line 111
    :catch_24
    move-exception v0

    .line 112
    if-nez v1, :cond_18

    move-object v0, v1

    goto :goto_18

    .line 120
    :cond_29
    return-void
.end method

.method public write(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_b

    .line 67
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    .line 69
    :cond_b
    iget v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1b

    .line 71
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    .line 72
    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    .line 74
    :cond_1b
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 75
    return-void
.end method

.method public write([BII)V
    .registers 5

    .prologue
    .line 90
    if-gtz p3, :cond_3

    .line 93
    :goto_2
    return-void

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/loopj/android/http/Base64OutputStream;->flushBuffer()V

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    goto :goto_2
.end method
