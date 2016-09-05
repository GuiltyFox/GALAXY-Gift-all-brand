.class public Lcom/loopj/android/http/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/loopj/android/http/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .registers 4

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/loopj/android/http/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v1, Lcom/loopj/android/http/Base64$Decoder;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/loopj/android/http/Base64$Decoder;-><init>(I[B)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/loopj/android/http/Base64$Decoder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1c
    iget v0, v1, Lcom/loopj/android/http/Base64$Decoder;->op:I

    iget-object v2, v1, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    array-length v2, v2

    if-ne v0, v2, :cond_26

    .line 126
    iget-object v0, v1, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    .line 133
    :goto_25
    return-object v0

    .line 131
    :cond_26
    iget v0, v1, Lcom/loopj/android/http/Base64$Decoder;->op:I

    new-array v0, v0, [B

    .line 132
    iget-object v2, v1, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    iget v1, v1, Lcom/loopj/android/http/Base64$Decoder;->op:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25
.end method

.method public static encode([BI)[B
    .registers 4

    .prologue
    .line 185
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/loopj/android/http/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 199
    new-instance v3, Lcom/loopj/android/http/Base64$Encoder;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lcom/loopj/android/http/Base64$Encoder;-><init>(I[B)V

    .line 202
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 205
    iget-boolean v1, v3, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_32

    .line 206
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_15

    .line 207
    add-int/lit8 v0, v0, 0x4

    .line 223
    :cond_15
    :goto_15
    :pswitch_15
    iget-boolean v1, v3, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_28

    if-lez p2, :cond_28

    .line 224
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v4, v1, 0x1

    iget-boolean v1, v3, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_3e

    const/4 v1, 0x2

    :goto_26
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 228
    :cond_28
    new-array v0, v0, [B

    iput-object v0, v3, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    .line 229
    invoke-virtual {v3, p0, p1, p2, v2}, Lcom/loopj/android/http/Base64$Encoder;->process([BIIZ)Z

    .line 235
    iget-object v0, v3, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    return-object v0

    .line 210
    :cond_32
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_40

    goto :goto_15

    .line 214
    :pswitch_38
    add-int/lit8 v0, v0, 0x2

    .line 215
    goto :goto_15

    .line 217
    :pswitch_3b
    add-int/lit8 v0, v0, 0x3

    goto :goto_15

    :cond_3e
    move v1, v2

    .line 224
    goto :goto_26

    .line 210
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_15
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 5

    .prologue
    .line 146
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/loopj/android/http/Base64;->encode([BI)[B

    move-result-object v1

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 147
    :catch_d
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .registers 7

    .prologue
    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/loopj/android/http/Base64;->encode([BIII)[B

    move-result-object v1

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 170
    :catch_d
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
