.class public Lcom/fasterxml/jackson/core/io/UTF32Reader;
.super Ljava/io/Reader;
.source "UTF32Reader.java"


# static fields
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field protected static final NC:C


# instance fields
.field protected final _bigEndian:Z

.field protected _buffer:[B

.field protected _byteCount:I

.field protected _charCount:I

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected _in:Ljava/io/InputStream;

.field protected _length:I

.field protected final _managedBuffers:Z

.field protected _ptr:I

.field protected _surrogate:C

.field protected _tmpBuf:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 37
    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 42
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 47
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    .line 58
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 59
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 61
    iput p4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 62
    iput p5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 63
    iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    .line 64
    if-eqz p2, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    .line 65
    return-void
.end method

.method private freeBuffers()V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 255
    if-eqz v0, :cond_c

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 257
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 259
    :cond_c
    return-void
.end method

.method private loadMore(I)Z
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 199
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    .line 202
    if-lez p1, :cond_41

    .line 203
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-lez v3, :cond_1d

    .line 204
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-static {v3, v4, v5, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 207
    :cond_1d
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 231
    :goto_1f
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    if-ge v0, v7, :cond_76

    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v0, :cond_65

    move v0, v2

    .line 233
    :goto_28
    if-ge v0, v1, :cond_3b

    .line 234
    if-gez v0, :cond_38

    .line 235
    iget-boolean v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v3, :cond_33

    .line 236
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 238
    :cond_33
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    invoke-direct {p0, v3, v7}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V

    .line 241
    :cond_38
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    .line 243
    :cond_3b
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_1f

    .line 212
    :cond_41
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 213
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v3, :cond_56

    move v3, v2

    .line 214
    :goto_48
    if-ge v3, v1, :cond_62

    .line 215
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 216
    if-gez v3, :cond_5f

    .line 217
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v1, :cond_55

    .line 218
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 245
    :cond_55
    :goto_55
    return v0

    .line 213
    :cond_56
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_48

    .line 223
    :cond_5f
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    .line 225
    :cond_62
    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_1f

    .line 232
    :cond_65
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    array-length v5, v5

    iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_28

    :cond_76
    move v0, v1

    .line 245
    goto :goto_55
.end method

.method private reportBounds([CII)V
    .registers 7

    .prologue
    .line 262
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportInvalid(IILjava/lang/String;)V
    .registers 9

    .prologue
    .line 187
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr v1, p2

    .line 189
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid UTF-32 character 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", byte #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private reportStrangeStream()V
    .registers 3

    .prologue
    .line 266
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportUnexpectedEOF(II)V
    .registers 8

    .prologue
    .line 181
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 183
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", needed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", byte #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 77
    if-eqz v0, :cond_d

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 79
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 82
    :cond_d
    return-void
.end method

.method public read()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    if-nez v0, :cond_a

    .line 94
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_14

    .line 97
    const/4 v0, -0x1

    .line 99
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    aget-char v0, v0, v2

    goto :goto_13
.end method

.method public read([CII)I
    .registers 11

    .prologue
    const v6, 0x10ffff

    const/4 v0, -0x1

    .line 105
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    if-nez v1, :cond_a

    move p3, v0

    .line 171
    :cond_9
    :goto_9
    return p3

    .line 106
    :cond_a
    const/4 v1, 0x1

    if-lt p3, v1, :cond_9

    .line 108
    if-ltz p2, :cond_14

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_17

    .line 109
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportBounds([CII)V

    .line 112
    :cond_17
    add-int v3, p3, p2

    .line 116
    iget-char v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    if-eqz v1, :cond_a6

    .line 117
    add-int/lit8 v2, p2, 0x1

    iget-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    aput-char v0, p1, p2

    .line 118
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 133
    :cond_26
    :goto_26
    if-ge v2, v3, :cond_ec

    .line 134
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 137
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    if-eqz v1, :cond_b7

    .line 138
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 144
    :goto_53
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 148
    const v1, 0xffff

    if-le v0, v1, :cond_de

    .line 149
    if-le v0, v6, :cond_84

    .line 150
    sub-int v1, v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(above "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V

    .line 153
    :cond_84
    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    .line 154
    add-int/lit8 v1, v2, 0x1

    const v4, 0xd800

    shr-int/lit8 v5, v0, 0xa

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v2

    .line 156
    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    .line 158
    if-lt v1, v3, :cond_df

    .line 159
    int-to-char v0, v0

    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 169
    :goto_9d
    sub-int p3, v1, p2

    .line 170
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    goto/16 :goto_9

    .line 124
    :cond_a6
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int/2addr v1, v2

    .line 125
    const/4 v2, 0x4

    if-ge v1, v2, :cond_ee

    .line 126
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->loadMore(I)Z

    move-result v1

    if-nez v1, :cond_ee

    move p3, v0

    .line 127
    goto/16 :goto_9

    .line 141
    :cond_b7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v4, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    goto/16 :goto_53

    :cond_de
    move v1, v2

    .line 163
    :cond_df
    add-int/lit8 v2, v1, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v1

    .line 164
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    if-lt v0, v1, :cond_26

    move v1, v2

    .line 165
    goto :goto_9d

    :cond_ec
    move v1, v2

    goto :goto_9d

    :cond_ee
    move v2, p2

    goto/16 :goto_26
.end method
