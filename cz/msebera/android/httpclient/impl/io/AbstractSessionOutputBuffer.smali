.class public abstract Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionOutputBuffer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/BufferInfo;
.implements Lcz/msebera/android/httpclient/io/SessionOutputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:[B


# instance fields
.field private b:Ljava/io/OutputStream;

.field private c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private d:Ljava/nio/charset/Charset;

.field private e:Z

.field private f:I

.field private g:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

.field private h:Ljava/nio/charset/CodingErrorAction;

.field private i:Ljava/nio/charset/CodingErrorAction;

.field private j:Ljava/nio/charset/CharsetEncoder;

.field private k:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a:[B

    return-void

    nop

    :array_a
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method private a(Ljava/nio/CharBuffer;)V
    .registers 5

    .prologue
    .line 271
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 290
    :goto_6
    return-void

    .line 274
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->j:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_21

    .line 275
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->j:Ljava/nio/charset/CharsetEncoder;

    .line 276
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->j:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->h:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 277
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->j:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->i:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 279
    :cond_21
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2d

    .line 280
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    .line 282
    :cond_2d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->j:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 283
    :goto_32
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 284
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->j:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 285
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a(Ljava/nio/charset/CoderResult;)V

    goto :goto_32

    .line 287
    :cond_45
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->j:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 288
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a(Ljava/nio/charset/CoderResult;)V

    .line 289
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_6
.end method

.method private a(Ljava/nio/charset/CoderResult;)V
    .registers 3

    .prologue
    .line 293
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 294
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 296
    :cond_9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 297
    :goto_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 298
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a(I)V

    goto :goto_e

    .line 300
    :cond_20
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 301
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->d()V

    .line 167
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 168
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 204
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->d()V

    .line 206
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a(I)V

    .line 207
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 245
    if-nez p1, :cond_4

    .line 268
    :goto_3
    return-void

    .line 248
    :cond_4
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->e:Z

    if-eqz v0, :cond_34

    .line 250
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v0

    .line 251
    :goto_c
    if-lez v0, :cond_43

    .line 252
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->c()I

    move-result v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->d()I

    move-result v3

    sub-int/2addr v2, v3

    .line 253
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 254
    if-lez v2, :cond_26

    .line 255
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    .line 257
    :cond_26
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->g()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 258
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->d()V

    .line 260
    :cond_31
    add-int/2addr v1, v2

    .line 261
    sub-int/2addr v0, v2

    .line 262
    goto :goto_c

    .line 264
    :cond_34
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b()[C

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a(Ljava/nio/CharBuffer;)V

    .line 267
    :cond_43
    sget-object v0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a([B)V

    goto :goto_3
.end method

.method protected a(Ljava/io/OutputStream;ILcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    .line 109
    const-string/jumbo v0, "Input stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v0, "Buffer size"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    .line 111
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->b:Ljava/io/OutputStream;

    .line 113
    new-instance v0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    .line 114
    const-string/jumbo v0, "http.protocol.element-charset"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    if-eqz v0, :cond_65

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_2a
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->d:Ljava/nio/charset/Charset;

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->d:Ljava/nio/charset/Charset;

    sget-object v1, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->e:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->j:Ljava/nio/charset/CharsetEncoder;

    .line 118
    const-string/jumbo v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->f:I

    .line 119
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c()Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->g:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    .line 120
    const-string/jumbo v0, "http.malformed.input.action"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CodingErrorAction;

    .line 122
    if-eqz v0, :cond_68

    :goto_55
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->h:Ljava/nio/charset/CodingErrorAction;

    .line 123
    const-string/jumbo v0, "http.unmappable.input.action"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CodingErrorAction;

    .line 125
    if-eqz v0, :cond_6b

    :goto_62
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->i:Ljava/nio/charset/CodingErrorAction;

    .line 126
    return-void

    .line 115
    :cond_65
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    goto :goto_2a

    .line 122
    :cond_68
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_55

    .line 125
    :cond_6b
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_62
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 219
    if-nez p1, :cond_3

    .line 233
    :goto_2
    return-void

    .line 222
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 223
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->e:Z

    if-eqz v0, :cond_1e

    .line 224
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a(I)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 228
    :cond_1e
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a(Ljava/nio/CharBuffer;)V

    .line 232
    :cond_25
    sget-object v0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a([B)V

    goto :goto_2
.end method

.method public a([B)V
    .registers 4

    .prologue
    .line 196
    if-nez p1, :cond_3

    .line 200
    :goto_2
    return-void

    .line 199
    :cond_3
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->a([BII)V

    goto :goto_2
.end method

.method public a([BII)V
    .registers 8

    .prologue
    .line 171
    if-nez p1, :cond_3

    .line 193
    :goto_2
    return-void

    .line 177
    :cond_3
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->f:I

    if-gt p3, v0, :cond_f

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->c()I

    move-result v0

    if-le p3, v0, :cond_1e

    .line 179
    :cond_f
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->d()V

    .line 181
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->g:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->a(J)V

    goto :goto_2

    .line 185
    :cond_1e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->c()I

    move-result v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 186
    if-le p3, v0, :cond_30

    .line 188
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->d()V

    .line 191
    :cond_30
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a([BII)V

    goto :goto_2
.end method

.method public b()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->g:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected c()Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;
    .registers 2

    .prologue
    .line 132
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method protected d()V
    .registers 5

    .prologue
    .line 157
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->d()I

    move-result v0

    .line 158
    if-lez v0, :cond_1f

    .line 159
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->e()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 160
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a()V

    .line 161
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->g:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->a(J)V

    .line 163
    :cond_1f
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;->c:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->d()I

    move-result v0

    return v0
.end method
