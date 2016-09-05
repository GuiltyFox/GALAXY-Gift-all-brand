.class public Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "UTF8StreamJsonParser.java"


# static fields
.field static final BYTE_LF:B = 0xat

.field protected static final _icLatin1:[I

.field private static final _icUTF8:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field private _quad1:I

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 31
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/InputStream;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;[BIIZ)V
    .registers 12

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 116
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 117
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 118
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 119
    iput-object p6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 120
    iput p7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 121
    iput p8, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 122
    iput p7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 124
    neg-int v0, p7

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    .line 125
    iput-boolean p9, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_bufferRecyclable:Z

    .line 126
    return-void
.end method

.method private final _checkMatchEnd(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 2533
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    .line 2534
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2535
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 2537
    :cond_13
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .registers 5

    .prologue
    .line 2998
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_9

    .line 2999
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3001
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 3002
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    .line 3003
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3005
    :cond_20
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final _decodeUtf8_3(I)I
    .registers 7

    .prologue
    const/16 v4, 0x80

    .line 3010
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_b

    .line 3011
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3013
    :cond_b
    and-int/lit8 v0, p1, 0xf

    .line 3014
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 3015
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_22

    .line 3016
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3018
    :cond_22
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3019
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_30

    .line 3020
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3022
    :cond_30
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 3023
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    .line 3024
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3026
    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3027
    return v0
.end method

.method private final _decodeUtf8_3fast(I)I
    .registers 7

    .prologue
    const/16 v4, 0x80

    .line 3032
    and-int/lit8 v0, p1, 0xf

    .line 3033
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 3034
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_19

    .line 3035
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3037
    :cond_19
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3038
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 3039
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_33

    .line 3040
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3042
    :cond_33
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3043
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .registers 7

    .prologue
    const/16 v4, 0x80

    .line 3052
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_b

    .line 3053
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3055
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 3056
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_20

    .line 3057
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3059
    :cond_20
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 3061
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_30

    .line 3062
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3064
    :cond_30
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 3065
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    .line 3066
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3068
    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 3069
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_53

    .line 3070
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3072
    :cond_53
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 3073
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_68

    .line 3074
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3080
    :cond_68
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private final _finishString2([CI)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 2173
    sget-object v4, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 2174
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 2181
    :goto_5
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2182
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_10

    .line 2183
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2184
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2186
    :cond_10
    array-length v2, p1

    if-lt p2, v2, :cond_1a

    .line 2187
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    move p2, v1

    .line 2190
    :cond_1a
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2191
    :goto_23
    if-ge v0, v6, :cond_43

    .line 2192
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    .line 2193
    aget v3, v4, v0

    if-eqz v3, :cond_3b

    .line 2194
    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2202
    const/16 v2, 0x22

    if-ne v0, v2, :cond_46

    .line 2248
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2249
    return-void

    .line 2197
    :cond_3b
    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    move v0, v2

    move p2, v3

    goto :goto_23

    .line 2199
    :cond_43
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_5

    .line 2206
    :cond_46
    aget v2, v4, v0

    packed-switch v2, :pswitch_data_aa

    .line 2232
    const/16 v2, 0x20

    if-ge v0, v2, :cond_a3

    .line 2234
    const-string/jumbo v2, "string value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2241
    :goto_55
    array-length v2, p1

    if-lt p2, v2, :cond_a7

    .line 2242
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    move v2, v1

    .line 2246
    :goto_5f
    add-int/lit8 p2, v2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_5

    .line 2208
    :pswitch_65
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    move-result v0

    goto :goto_55

    .line 2211
    :pswitch_6a
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_2(I)I

    move-result v0

    goto :goto_55

    .line 2214
    :pswitch_6f
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7c

    .line 2215
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3fast(I)I

    move-result v0

    goto :goto_55

    .line 2217
    :cond_7c
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3(I)I

    move-result v0

    goto :goto_55

    .line 2221
    :pswitch_81
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_4(I)I

    move-result v2

    .line 2223
    add-int/lit8 v0, p2, 0x1

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 2224
    array-length v3, p1

    if-lt v0, v3, :cond_9a

    .line 2225
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    move v0, v1

    .line 2228
    :cond_9a
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move p2, v0

    move v0, v2

    .line 2230
    goto :goto_55

    .line 2237
    :cond_a3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    goto :goto_55

    :cond_a7
    move v2, p2

    goto :goto_5f

    .line 2206
    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_65
        :pswitch_6a
        :pswitch_6f
        :pswitch_81
    .end packed-switch
.end method

.method private final _isNextTokenNameMaybe(ILcom/fasterxml/jackson/core/SerializableString;)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1003
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseName(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1007
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1008
    invoke-interface {p2}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1010
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1011
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon()I

    move-result v0

    .line 1014
    const/16 v2, 0x22

    if-ne v0, v2, :cond_2a

    .line 1015
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 1016
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 1059
    :goto_29
    return v0

    .line 1021
    :cond_2a
    sparse-switch v0, :sswitch_data_60

    .line 1056
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1058
    :goto_31
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 1059
    goto :goto_29

    .line 1023
    :sswitch_35
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_31

    .line 1026
    :sswitch_38
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_31

    .line 1029
    :sswitch_3b
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1030
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_31

    .line 1033
    :sswitch_44
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1034
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_31

    .line 1037
    :sswitch_4d
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1038
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_31

    .line 1041
    :sswitch_56
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_31

    .line 1053
    :sswitch_5b
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_31

    .line 1021
    :sswitch_data_60
    .sparse-switch
        0x2d -> :sswitch_56
        0x30 -> :sswitch_5b
        0x31 -> :sswitch_5b
        0x32 -> :sswitch_5b
        0x33 -> :sswitch_5b
        0x34 -> :sswitch_5b
        0x35 -> :sswitch_5b
        0x36 -> :sswitch_5b
        0x37 -> :sswitch_5b
        0x38 -> :sswitch_5b
        0x39 -> :sswitch_5b
        0x5b -> :sswitch_35
        0x66 -> :sswitch_44
        0x6e -> :sswitch_4d
        0x74 -> :sswitch_3b
        0x7b -> :sswitch_38
    .end sparse-switch
.end method

.method private final _isNextTokenNameYes(I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 954
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 956
    sparse-switch p1, :sswitch_data_50

    .line 995
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 996
    :goto_e
    return-void

    .line 958
    :sswitch_f
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 959
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e

    .line 962
    :sswitch_16
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e

    .line 965
    :sswitch_1b
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e

    .line 968
    :sswitch_20
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 969
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e

    .line 972
    :sswitch_2b
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 973
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e

    .line 976
    :sswitch_36
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 977
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e

    .line 980
    :sswitch_41
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e

    .line 992
    :sswitch_48
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e

    .line 956
    nop

    :sswitch_data_50
    .sparse-switch
        0x22 -> :sswitch_f
        0x2d -> :sswitch_41
        0x30 -> :sswitch_48
        0x31 -> :sswitch_48
        0x32 -> :sswitch_48
        0x33 -> :sswitch_48
        0x34 -> :sswitch_48
        0x35 -> :sswitch_48
        0x36 -> :sswitch_48
        0x37 -> :sswitch_48
        0x38 -> :sswitch_48
        0x39 -> :sswitch_48
        0x5b -> :sswitch_16
        0x66 -> :sswitch_2b
        0x6e -> :sswitch_36
        0x74 -> :sswitch_20
        0x7b -> :sswitch_1b
    .end sparse-switch
.end method

.method private final _matchToken2(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 2512
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2514
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_10
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_24

    .line 2516
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 2518
    :cond_24
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2519
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_4

    .line 2522
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_3b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2529
    :cond_3a
    :goto_3a
    return-void

    .line 2525
    :cond_3b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2526
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3a

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3a

    .line 2527
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_checkMatchEnd(Ljava/lang/String;II)V

    goto :goto_3a
.end method

.method private final _nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 5

    .prologue
    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 800
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 801
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 803
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1b

    .line 804
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 808
    :cond_18
    :goto_18
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 805
    :cond_1b
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_18

    .line 806
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_18
.end method

.method private final _nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 756
    const/16 v0, 0x22

    if-ne p1, v0, :cond_c

    .line 757
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 758
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 794
    :goto_b
    return-object v0

    .line 760
    :cond_c
    sparse-switch p1, :sswitch_data_68

    .line 794
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_b

    .line 762
    :sswitch_16
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 763
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_b

    .line 765
    :sswitch_27
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 766
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_b

    .line 768
    :sswitch_38
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 769
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_b

    .line 771
    :sswitch_43
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 772
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_b

    .line 774
    :sswitch_4e
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 775
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_b

    .line 777
    :sswitch_59
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_b

    .line 792
    :sswitch_60
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_b

    .line 760
    nop

    :sswitch_data_68
    .sparse-switch
        0x2d -> :sswitch_59
        0x30 -> :sswitch_60
        0x31 -> :sswitch_60
        0x32 -> :sswitch_60
        0x33 -> :sswitch_60
        0x34 -> :sswitch_60
        0x35 -> :sswitch_60
        0x36 -> :sswitch_60
        0x37 -> :sswitch_60
        0x38 -> :sswitch_60
        0x39 -> :sswitch_60
        0x5b -> :sswitch_16
        0x66 -> :sswitch_43
        0x6e -> :sswitch_4e
        0x74 -> :sswitch_38
        0x7b -> :sswitch_27
    .end sparse-switch
.end method

.method private final _parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 15

    .prologue
    .line 1370
    const/4 v0, 0x0

    .line 1371
    const/4 v4, 0x0

    .line 1374
    const/16 v1, 0x2e

    if-ne p3, v1, :cond_11d

    .line 1375
    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    .line 1379
    :goto_b
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_cc

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_cc

    .line 1380
    const/4 v4, 0x1

    move v5, p3

    .line 1395
    :goto_19
    if-nez v0, :cond_21

    .line 1396
    const-string/jumbo v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_21
    move v7, v0

    move v0, v1

    move-object v1, p1

    .line 1400
    :goto_24
    const/4 v3, 0x0

    .line 1401
    const/16 v2, 0x65

    if-eq v5, v2, :cond_2d

    const/16 v2, 0x45

    if-ne v5, v2, :cond_112

    .line 1402
    :cond_2d
    array-length v2, v1

    if-lt v0, v2, :cond_37

    .line 1403
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1404
    const/4 v0, 0x0

    .line 1406
    :cond_37
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    .line 1408
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v5, :cond_45

    .line 1409
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 1411
    :cond_45
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    .line 1413
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_59

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_10e

    .line 1414
    :cond_59
    array-length v0, v1

    if-lt v2, v0, :cond_10b

    .line 1415
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1416
    const/4 v0, 0x0

    .line 1418
    :goto_63
    add-int/lit8 v6, v0, 0x1

    int-to-char v2, v5

    aput-char v2, v1, v0

    .line 1420
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_71

    .line 1421
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 1423
    :cond_71
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xff

    move v0, v6

    .line 1427
    :goto_7e
    const/16 v5, 0x39

    if-gt v2, v5, :cond_106

    const/16 v5, 0x30

    if-lt v2, v5, :cond_106

    .line 1428
    add-int/lit8 v3, v3, 0x1

    .line 1429
    array-length v5, v1

    if-lt v0, v5, :cond_92

    .line 1430
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1431
    const/4 v0, 0x0

    .line 1433
    :cond_92
    add-int/lit8 v5, v0, 0x1

    int-to-char v6, v2

    aput-char v6, v1, v0

    .line 1434
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v6, :cond_f7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 1435
    const/4 v4, 0x1

    move v0, v3

    move v1, v4

    move v3, v5

    .line 1441
    :goto_a7
    if-nez v0, :cond_af

    .line 1442
    const-string/jumbo v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1447
    :cond_af
    :goto_af
    if-nez v1, :cond_c2

    .line 1448
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1450
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1451
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyRootSpace(I)V

    .line 1454
    :cond_c2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1457
    invoke-virtual {p0, p4, p5, v7, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1383
    :cond_cc
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    .line 1384
    const/16 v2, 0x30

    if-lt p3, v2, :cond_11a

    const/16 v2, 0x39

    if-le p3, v2, :cond_e3

    move v5, p3

    .line 1385
    goto/16 :goto_19

    .line 1387
    :cond_e3
    add-int/lit8 v0, v0, 0x1

    .line 1388
    array-length v2, p1

    if-lt v1, v2, :cond_118

    .line 1389
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1390
    const/4 v1, 0x0

    move v2, v1

    .line 1392
    :goto_f0
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_b

    .line 1438
    :cond_f7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xff

    move v0, v5

    goto/16 :goto_7e

    :cond_106
    move v1, v4

    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_a7

    :cond_10b
    move v0, v2

    goto/16 :goto_63

    :cond_10e
    move v0, v2

    move v2, v5

    goto/16 :goto_7e

    :cond_112
    move v1, v4

    move v2, v5

    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_af

    :cond_118
    move v2, v1

    goto :goto_f0

    :cond_11a
    move v5, p3

    goto/16 :goto_19

    :cond_11d
    move v7, v0

    move v5, p3

    move-object v1, p1

    move v0, p2

    goto/16 :goto_24
.end method

.method private final _parseNumber2([CIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 11

    .prologue
    .line 1301
    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_19

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1302
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1303
    invoke-virtual {p0, p3, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1327
    :goto_18
    return-object v0

    .line 1305
    :cond_19
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 1306
    const/16 v0, 0x39

    if-gt v3, v0, :cond_2d

    const/16 v0, 0x30

    if-ge v3, v0, :cond_40

    .line 1307
    :cond_2d
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_39

    const/16 v0, 0x65

    if-eq v3, v0, :cond_39

    const/16 v0, 0x45

    if-ne v3, v0, :cond_53

    :cond_39
    move-object v0, p0

    move v4, p3

    .line 1308
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_18

    .line 1312
    :cond_40
    array-length v0, v1

    if-lt v2, v0, :cond_7a

    .line 1313
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 1314
    const/4 v2, 0x0

    move v0, v2

    .line 1316
    :goto_4b
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    .line 1317
    add-int/lit8 v5, v5, 0x1

    .line 1318
    goto :goto_3

    .line 1319
    :cond_53
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1320
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1322
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1323
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyRootSpace(I)V

    .line 1327
    :cond_75
    invoke-virtual {p0, p3, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_18

    :cond_7a
    move v0, v2

    goto :goto_4b
.end method

.method private final _skipCComment()V
    .registers 5

    .prologue
    .line 2797
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2801
    :cond_4
    :goto_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2802
    :cond_10
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2803
    aget v2, v0, v1

    .line 2804
    if-eqz v2, :cond_4

    .line 2805
    sparse-switch v2, :sswitch_data_66

    .line 2833
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    goto :goto_4

    .line 2807
    :sswitch_27
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_3a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2837
    :cond_33
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2838
    :goto_39
    return-void

    .line 2810
    :cond_3a
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    .line 2811
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_39

    .line 2816
    :sswitch_4b
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2817
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    goto :goto_4

    .line 2820
    :sswitch_56
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_4

    .line 2823
    :sswitch_5a
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    goto :goto_4

    .line 2826
    :sswitch_5e
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    goto :goto_4

    .line 2829
    :sswitch_62
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    goto :goto_4

    .line 2805
    :sswitch_data_66
    .sparse-switch
        0x2 -> :sswitch_5a
        0x3 -> :sswitch_5e
        0x4 -> :sswitch_62
        0xa -> :sswitch_4b
        0xd -> :sswitch_56
        0x2a -> :sswitch_27
    .end sparse-switch
.end method

.method private final _skipColon()I
    .registers 8

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x2f

    const/16 v4, 0x23

    const/4 v3, 0x1

    const/16 v2, 0x20

    .line 2683
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_17

    .line 2684
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    .line 2733
    :goto_16
    return v0

    .line 2687
    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2688
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_62

    .line 2689
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2690
    if-le v0, v2, :cond_3d

    .line 2691
    if-eq v0, v5, :cond_31

    if-ne v0, v4, :cond_36

    .line 2692
    :cond_31
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_16

    .line 2694
    :cond_36
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_16

    .line 2697
    :cond_3d
    if-eq v0, v2, :cond_41

    if-ne v0, v6, :cond_5d

    .line 2698
    :cond_41
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2699
    if-le v0, v2, :cond_5d

    .line 2700
    if-eq v0, v5, :cond_51

    if-ne v0, v4, :cond_56

    .line 2701
    :cond_51
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_16

    .line 2703
    :cond_56
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_16

    .line 2707
    :cond_5d
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_16

    .line 2709
    :cond_62
    if-eq v0, v2, :cond_66

    if-ne v0, v6, :cond_70

    .line 2710
    :cond_66
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2712
    :cond_70
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_b8

    .line 2713
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2714
    if-le v0, v2, :cond_90

    .line 2715
    if-eq v0, v5, :cond_84

    if-ne v0, v4, :cond_89

    .line 2716
    :cond_84
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_16

    .line 2718
    :cond_89
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_16

    .line 2721
    :cond_90
    if-eq v0, v2, :cond_94

    if-ne v0, v6, :cond_b2

    .line 2722
    :cond_94
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2723
    if-le v0, v2, :cond_b2

    .line 2724
    if-eq v0, v5, :cond_a4

    if-ne v0, v4, :cond_aa

    .line 2725
    :cond_a4
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto/16 :goto_16

    .line 2727
    :cond_aa
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto/16 :goto_16

    .line 2731
    :cond_b2
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto/16 :goto_16

    .line 2733
    :cond_b8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto/16 :goto_16
.end method

.method private final _skipColon2(Z)I
    .registers 6

    .prologue
    const/16 v3, 0x20

    .line 2738
    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2739
    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2741
    if-le v0, v3, :cond_42

    .line 2742
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_24

    .line 2743
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    goto :goto_2

    .line 2746
    :cond_24
    const/16 v1, 0x23

    if-ne v0, v1, :cond_2e

    .line 2747
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2751
    :cond_2e
    if-eqz p1, :cond_31

    .line 2752
    return v0

    .line 2754
    :cond_31
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_40

    .line 2755
    if-ge v0, v3, :cond_3a

    .line 2756
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    .line 2758
    :cond_3a
    const-string/jumbo v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2760
    :cond_40
    const/4 p1, 0x1

    goto :goto_2

    .line 2761
    :cond_42
    if-eq v0, v3, :cond_2

    .line 2762
    const/16 v1, 0xa

    if-ne v0, v1, :cond_53

    .line 2763
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2764
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    goto :goto_2

    .line 2765
    :cond_53
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5b

    .line 2766
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_2

    .line 2767
    :cond_5b
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 2768
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 2772
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final _skipColonFast(I)I
    .registers 10

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x9

    const/16 v5, 0x2f

    const/16 v4, 0x23

    const/16 v3, 0x20

    .line 908
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, p1

    .line 909
    if-ne v0, v7, :cond_40

    .line 910
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    .line 911
    if-le v1, v3, :cond_22

    .line 912
    if-eq v1, v5, :cond_36

    if-eq v1, v4, :cond_36

    .line 913
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    move v0, v1

    .line 949
    :goto_21
    return v0

    .line 916
    :cond_22
    if-eq v1, v3, :cond_26

    if-ne v1, v6, :cond_36

    .line 917
    :cond_26
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    .line 918
    if-le v0, v3, :cond_35

    .line 919
    if-eq v0, v5, :cond_35

    if-eq v0, v4, :cond_35

    .line 920
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_21

    :cond_35
    move v0, v1

    .line 925
    :cond_36
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 926
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_21

    .line 928
    :cond_40
    if-eq v0, v3, :cond_44

    if-ne v0, v6, :cond_4b

    .line 929
    :cond_44
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    move v1, v2

    .line 931
    :cond_4b
    if-ne v0, v7, :cond_70

    .line 932
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    .line 933
    if-le v1, v3, :cond_5d

    .line 934
    if-eq v1, v5, :cond_71

    if-eq v1, v4, :cond_71

    .line 935
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    move v0, v1

    .line 936
    goto :goto_21

    .line 938
    :cond_5d
    if-eq v1, v3, :cond_61

    if-ne v1, v6, :cond_71

    .line 939
    :cond_61
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    .line 940
    if-le v0, v3, :cond_70

    .line 941
    if-eq v0, v5, :cond_70

    if-eq v0, v4, :cond_70

    .line 942
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_21

    :cond_70
    move v0, v1

    .line 948
    :cond_71
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 949
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_21
.end method

.method private final _skipComment()V
    .registers 5

    .prologue
    const/16 v3, 0x2f

    .line 2777
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2778
    const-string/jumbo v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2781
    :cond_10
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2782
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2784
    :cond_22
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2785
    if-ne v0, v3, :cond_34

    .line 2786
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLine()V

    .line 2792
    :goto_33
    return-void

    .line 2787
    :cond_34
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3c

    .line 2788
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCComment()V

    goto :goto_33

    .line 2790
    :cond_3c
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_33
.end method

.method private final _skipLine()V
    .registers 5

    .prologue
    .line 2856
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2857
    :cond_4
    :goto_4
    :sswitch_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2858
    :cond_10
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2859
    aget v2, v0, v1

    .line 2860
    if-eqz v2, :cond_4

    .line 2861
    sparse-switch v2, :sswitch_data_44

    .line 2881
    if-gez v2, :cond_4

    .line 2883
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    goto :goto_4

    .line 2863
    :sswitch_29
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2864
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 2888
    :cond_33
    :goto_33
    return-void

    .line 2867
    :sswitch_34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_33

    .line 2872
    :sswitch_38
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    goto :goto_4

    .line 2875
    :sswitch_3c
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    goto :goto_4

    .line 2878
    :sswitch_40
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    goto :goto_4

    .line 2861
    :sswitch_data_44
    .sparse-switch
        0x2 -> :sswitch_38
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_40
        0xa -> :sswitch_29
        0xd -> :sswitch_34
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method private final _skipUtf8_2(I)V
    .registers 5

    .prologue
    .line 3085
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_9

    .line 3086
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3088
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 3089
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    .line 3090
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3092
    :cond_20
    return-void
.end method

.method private final _skipUtf8_3(I)V
    .registers 6

    .prologue
    const/16 v3, 0x80

    .line 3099
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_b

    .line 3100
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3103
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 3104
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_20

    .line 3105
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3107
    :cond_20
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_29

    .line 3108
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3110
    :cond_29
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 3111
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3e

    .line 3112
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3114
    :cond_3e
    return-void
.end method

.method private final _skipUtf8_4(I)V
    .registers 6

    .prologue
    const/16 v3, 0x80

    .line 3118
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_b

    .line 3119
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3121
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 3122
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_20

    .line 3123
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3125
    :cond_20
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_29

    .line 3126
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3128
    :cond_29
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 3129
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3e

    .line 3130
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3132
    :cond_3e
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_47

    .line 3133
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3135
    :cond_47
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 3136
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5c

    .line 3137
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 3139
    :cond_5c
    return-void
.end method

.method private final _skipWS()I
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 2547
    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_4a

    .line 2548
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2549
    if-le v0, v3, :cond_29

    .line 2550
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x23

    if-ne v0, v1, :cond_28

    .line 2551
    :cond_1e
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2552
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS2()I

    move-result v0

    .line 2567
    :cond_28
    :goto_28
    return v0

    .line 2556
    :cond_29
    if-eq v0, v3, :cond_2

    .line 2557
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3a

    .line 2558
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2559
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    goto :goto_2

    .line 2560
    :cond_3a
    const/16 v1, 0xd

    if-ne v0, v1, :cond_42

    .line 2561
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_2

    .line 2562
    :cond_42
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 2563
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 2567
    :cond_4a
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS2()I

    move-result v0

    goto :goto_28
.end method

.method private final _skipWS2()I
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 2572
    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2573
    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2574
    if-le v0, v3, :cond_2f

    .line 2575
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_24

    .line 2576
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    goto :goto_2

    .line 2579
    :cond_24
    const/16 v1, 0x23

    if-ne v0, v1, :cond_2e

    .line 2580
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2584
    :cond_2e
    return v0

    .line 2586
    :cond_2f
    if-eq v0, v3, :cond_2

    .line 2587
    const/16 v1, 0xa

    if-ne v0, v1, :cond_40

    .line 2588
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2589
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    goto :goto_2

    .line 2590
    :cond_40
    const/16 v1, 0xd

    if-ne v0, v1, :cond_48

    .line 2591
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_2

    .line 2592
    :cond_48
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 2593
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 2597
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final _skipWSOrEnd()I
    .registers 9

    .prologue
    const/16 v7, 0x23

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x20

    .line 2604
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1b

    .line 2605
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2606
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_eofAsNextChar()I

    move-result v0

    .line 2648
    :cond_1a
    :goto_1a
    return v0

    .line 2609
    :cond_1b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2610
    if-le v0, v3, :cond_3a

    .line 2611
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2f

    if-ne v0, v7, :cond_1a

    .line 2612
    :cond_2f
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2613
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_1a

    .line 2617
    :cond_3a
    if-eq v0, v3, :cond_48

    .line 2618
    if-ne v0, v5, :cond_6d

    .line 2619
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2620
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 2628
    :cond_48
    :goto_48
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_94

    .line 2629
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2630
    if-le v0, v3, :cond_79

    .line 2631
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_62

    if-ne v0, v7, :cond_1a

    .line 2632
    :cond_62
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2633
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_1a

    .line 2621
    :cond_6d
    if-ne v0, v6, :cond_73

    .line 2622
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_48

    .line 2623
    :cond_73
    if-eq v0, v4, :cond_48

    .line 2624
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_48

    .line 2637
    :cond_79
    if-eq v0, v3, :cond_48

    .line 2638
    if-ne v0, v5, :cond_88

    .line 2639
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2640
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    goto :goto_48

    .line 2641
    :cond_88
    if-ne v0, v6, :cond_8e

    .line 2642
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_48

    .line 2643
    :cond_8e
    if-eq v0, v4, :cond_48

    .line 2644
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_48

    .line 2648
    :cond_94
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_1a
.end method

.method private final _skipWSOrEnd2()I
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 2653
    :cond_2
    :goto_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2654
    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2655
    if-le v0, v3, :cond_2f

    .line 2656
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_24

    .line 2657
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    goto :goto_2

    .line 2660
    :cond_24
    const/16 v1, 0x23

    if-ne v0, v1, :cond_2e

    .line 2661
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2678
    :cond_2e
    :goto_2e
    return v0

    .line 2666
    :cond_2f
    if-eq v0, v3, :cond_2

    .line 2667
    const/16 v1, 0xa

    if-ne v0, v1, :cond_40

    .line 2668
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 2669
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    goto :goto_2

    .line 2670
    :cond_40
    const/16 v1, 0xd

    if-ne v0, v1, :cond_48

    .line 2671
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_2

    .line 2672
    :cond_48
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 2673
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 2678
    :cond_50
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_eofAsNextChar()I

    move-result v0

    goto :goto_2e
.end method

.method private final _skipYAMLComment()Z
    .registers 2

    .prologue
    .line 2842
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2843
    const/4 v0, 0x0

    .line 2846
    :goto_9
    return v0

    .line 2845
    :cond_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLine()V

    .line 2846
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private final _verifyNoLeadingZeroes()I
    .registers 6

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 1338
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    .line 1364
    :cond_11
    :goto_11
    return v0

    .line 1341
    :cond_12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1343
    if-lt v0, v1, :cond_1e

    if-le v0, v4, :cond_20

    :cond_1e
    move v0, v1

    .line 1344
    goto :goto_11

    .line 1347
    :cond_20
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1348
    const-string/jumbo v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1351
    :cond_2e
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1352
    if-ne v0, v1, :cond_11

    .line 1353
    :cond_36
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_42

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1354
    :cond_42
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1355
    if-lt v0, v1, :cond_4e

    if-le v0, v4, :cond_50

    :cond_4e
    move v0, v1

    .line 1356
    goto :goto_11

    .line 1358
    :cond_50
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1359
    if-eq v0, v1, :cond_36

    goto :goto_11
.end method

.method private final _verifyRootSpace(I)V
    .registers 3

    .prologue
    .line 1470
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1472
    sparse-switch p1, :sswitch_data_1c

    .line 1484
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMissingRootWS(I)V

    .line 1485
    :goto_c
    :sswitch_c
    return-void

    .line 1477
    :sswitch_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    goto :goto_c

    .line 1480
    :sswitch_11
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 1481
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    goto :goto_c

    .line 1472
    :sswitch_data_1c
    .sparse-switch
        0x9 -> :sswitch_c
        0xa -> :sswitch_11
        0xd -> :sswitch_d
        0x20 -> :sswitch_c
    .end sparse-switch
.end method

.method private final addName([III)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 15

    .prologue
    .line 2028
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 2037
    const/4 v0, 0x4

    if-ge p3, v0, :cond_db

    .line 2038
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 2040
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 2046
    :goto_17
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 2047
    const/4 v5, 0x0

    .line 2049
    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v6, :cond_101

    .line 2050
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 2051
    and-int/lit8 v4, v3, 0x3

    .line 2052
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 2053
    add-int/lit8 v3, v3, 0x1

    .line 2055
    const/16 v4, 0x7f

    if-le v2, v4, :cond_115

    .line 2057
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_de

    .line 2058
    and-int/lit8 v4, v2, 0x1f

    .line 2059
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 2070
    :goto_41
    add-int v7, v3, v4

    if-le v7, v6, :cond_4b

    .line 2071
    const-string/jumbo v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2075
    :cond_4b
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2076
    and-int/lit8 v8, v3, 0x3

    .line 2077
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2078
    add-int/lit8 v3, v3, 0x1

    .line 2080
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_61

    .line 2081
    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2083
    :cond_61
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2084
    const/4 v7, 0x1

    if-le v4, v7, :cond_a4

    .line 2085
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2086
    and-int/lit8 v8, v3, 0x3

    .line 2087
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2088
    add-int/lit8 v3, v3, 0x1

    .line 2090
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_7f

    .line 2091
    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2093
    :cond_7f
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2094
    const/4 v7, 0x2

    if-le v4, v7, :cond_a4

    .line 2095
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 2096
    and-int/lit8 v8, v3, 0x3

    .line 2097
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 2098
    add-int/lit8 v3, v3, 0x1

    .line 2099
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_9f

    .line 2100
    and-int/lit16 v8, v7, 0xff

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2102
    :cond_9f
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 2105
    :cond_a4
    const/4 v7, 0x2

    if-le v4, v7, :cond_115

    .line 2106
    const/high16 v4, 0x10000

    sub-int/2addr v2, v4

    .line 2107
    array-length v4, v1

    if-lt v5, v4, :cond_b3

    .line 2108
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    .line 2110
    :cond_b3
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 2111
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 2114
    :goto_c9
    array-length v5, v4

    if-lt v3, v5, :cond_d2

    .line 2115
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 2117
    :cond_d2
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 2118
    goto/16 :goto_20

    .line 2042
    :cond_db
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 2060
    :cond_de
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_ec

    .line 2061
    and-int/lit8 v4, v2, 0xf

    .line 2062
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    .line 2063
    :cond_ec
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_fa

    .line 2064
    and-int/lit8 v4, v2, 0x7

    .line 2065
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    .line 2067
    :cond_fa
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    .line 2068
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_41

    .line 2121
    :cond_101
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 2123
    const/4 v1, 0x4

    if-ge p3, v1, :cond_10e

    .line 2124
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 2126
    :cond_10e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    return-object v0

    :cond_115
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_c9
.end method

.method private final findName(II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 5

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1978
    if-eqz v0, :cond_9

    .line 1983
    :goto_8
    return-object v0

    .line 1982
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1983
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_8
.end method

.method private final findName(III)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 6

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1991
    if-eqz v0, :cond_9

    .line 1997
    :goto_8
    return-object v0

    .line 1995
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1996
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1997
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_8
.end method

.method private final findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 7

    .prologue
    .line 2003
    array-length v0, p1

    if-lt p2, v0, :cond_a

    .line 2004
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 2006
    :cond_a
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    .line 2007
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 2008
    if-nez v0, :cond_1a

    .line 2009
    invoke-direct {p0, p1, v1, p4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 2011
    :cond_1a
    return-object v0
.end method

.method public static growArrayBy([II)[I
    .registers 3

    .prologue
    .line 3234
    if-nez p0, :cond_5

    .line 3235
    new-array v0, p1, [I

    .line 3237
    :goto_4
    return-object v0

    :cond_5
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_4
.end method

.method private nextByte()I
    .registers 4

    .prologue
    .line 3164
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_9

    .line 3165
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3167
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final parseName(III)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 10

    .prologue
    .line 1676
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private final parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 11

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1681
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _closeInput()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1c

    .line 238
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 241
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 243
    :cond_1c
    return-void
.end method

.method protected final _decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 3253
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v2

    .line 3260
    :cond_8
    :goto_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_11

    .line 3261
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3263
    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 3264
    const/16 v0, 0x20

    if-le v1, v0, :cond_8

    .line 3265
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 3266
    if-gez v0, :cond_35

    .line 3267
    if-ne v1, v6, :cond_2e

    .line 3268
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    .line 3336
    :goto_2d
    return-object v0

    .line 3270
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 3271
    if-ltz v0, :cond_8

    .line 3279
    :cond_35
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v3, :cond_3e

    .line 3280
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3282
    :cond_3e
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xff

    .line 3283
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v1

    .line 3284
    if-gez v1, :cond_55

    .line 3285
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v1

    .line 3287
    :cond_55
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 3290
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_61

    .line 3291
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3293
    :cond_61
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 3294
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 3297
    if-gez v0, :cond_d4

    .line 3298
    if-eq v0, v5, :cond_8c

    .line 3300
    if-ne v3, v6, :cond_87

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_87

    .line 3301
    shr-int/lit8 v0, v1, 0x4

    .line 3302
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 3303
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto :goto_2d

    .line 3305
    :cond_87
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 3307
    :cond_8c
    if-ne v0, v5, :cond_d4

    .line 3309
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_97

    .line 3310
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3312
    :cond_97
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 3313
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v3

    if-nez v3, :cond_cd

    .line 3314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected padding character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v7, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 3317
    :cond_cd
    shr-int/lit8 v0, v1, 0x4

    .line 3318
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_8

    .line 3323
    :cond_d4
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 3325
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v3, :cond_e0

    .line 3326
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 3328
    :cond_e0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 3329
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 3330
    if-gez v0, :cond_114

    .line 3331
    if-eq v0, v5, :cond_10b

    .line 3333
    if-ne v3, v6, :cond_107

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-nez v0, :cond_107

    .line 3334
    shr-int/lit8 v0, v1, 0x2

    .line 3335
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 3336
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_2d

    .line 3338
    :cond_107
    invoke-virtual {p0, p1, v3, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v0

    .line 3340
    :cond_10b
    if-ne v0, v5, :cond_114

    .line 3347
    shr-int/lit8 v0, v1, 0x2

    .line 3348
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_8

    .line 3353
    :cond_114
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 3354
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_8
.end method

.method protected _decodeCharForError(I)I
    .registers 8

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    .line 2946
    .line 2947
    if-gez p1, :cond_4c

    .line 2951
    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4d

    .line 2952
    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    .line 2966
    :goto_f
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    move-result v3

    .line 2967
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_1c

    .line 2968
    and-int/lit16 v4, v3, 0xff

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2970
    :cond_1c
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    .line 2972
    if-le v0, v1, :cond_4c

    .line 2973
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    move-result v1

    .line 2974
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_31

    .line 2975
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2977
    :cond_31
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    .line 2978
    if-le v0, v2, :cond_4c

    .line 2979
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    move-result v0

    .line 2980
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_46

    .line 2981
    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 2983
    :cond_46
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    .line 2987
    :cond_4c
    return p1

    .line 2954
    :cond_4d
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_57

    .line 2955
    and-int/lit8 p1, p1, 0xf

    move v0, v2

    .line 2956
    goto :goto_f

    .line 2957
    :cond_57
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_61

    .line 2959
    and-int/lit8 p1, p1, 0x7

    .line 2960
    const/4 v0, 0x3

    goto :goto_f

    .line 2962
    :cond_61
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    move v0, v1

    .line 2963
    goto :goto_f
.end method

.method protected _decodeEscaped()C
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2893
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_13

    .line 2894
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2895
    const-string/jumbo v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2898
    :cond_13
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2900
    sparse-switch v1, :sswitch_data_70

    .line 2923
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 2941
    :goto_29
    return v0

    .line 2903
    :sswitch_2a
    const/16 v0, 0x8

    goto :goto_29

    .line 2905
    :sswitch_2d
    const/16 v0, 0x9

    goto :goto_29

    .line 2907
    :sswitch_30
    const/16 v0, 0xa

    goto :goto_29

    .line 2909
    :sswitch_33
    const/16 v0, 0xc

    goto :goto_29

    .line 2911
    :sswitch_36
    const/16 v0, 0xd

    goto :goto_29

    .line 2917
    :sswitch_39
    int-to-char v0, v1

    goto :goto_29

    :sswitch_3b
    move v1, v0

    .line 2928
    :goto_3c
    const/4 v2, 0x4

    if-ge v0, v2, :cond_6d

    .line 2929
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_51

    .line 2930
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_51

    .line 2931
    const-string/jumbo v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2934
    :cond_51
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    .line 2935
    invoke-static {v2}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v3

    .line 2936
    if-gez v3, :cond_67

    .line 2937
    const-string/jumbo v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2939
    :cond_67
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 2928
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 2941
    :cond_6d
    int-to-char v0, v1

    goto :goto_29

    .line 2900
    nop

    :sswitch_data_70
    .sparse-switch
        0x22 -> :sswitch_39
        0x2f -> :sswitch_39
        0x5c -> :sswitch_39
        0x62 -> :sswitch_2a
        0x66 -> :sswitch_33
        0x6e -> :sswitch_30
        0x72 -> :sswitch_36
        0x74 -> :sswitch_2d
        0x75 -> :sswitch_3b
    .end sparse-switch
.end method

.method protected _finishString()V
    .registers 10

    .prologue
    .line 2139
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2140
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_b

    .line 2141
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2142
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2144
    :cond_b
    const/4 v1, 0x0

    .line 2145
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 2146
    sget-object v4, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 2148
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2149
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    move v8, v1

    move v1, v0

    move v0, v8

    .line 2150
    :goto_21
    if-ge v1, v5, :cond_43

    .line 2151
    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    .line 2152
    aget v2, v4, v7

    if-eqz v2, :cond_39

    .line 2153
    const/16 v2, 0x22

    if-ne v7, v2, :cond_43

    .line 2154
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2155
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2165
    :goto_38
    return-void

    .line 2160
    :cond_39
    add-int/lit8 v2, v1, 0x1

    .line 2161
    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    .line 2162
    goto :goto_21

    .line 2163
    :cond_43
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2164
    invoke-direct {p0, v3, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString2([CI)V

    goto :goto_38
.end method

.method protected final _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 318
    if-nez p1, :cond_4

    .line 319
    const/4 v0, 0x0

    .line 331
    :goto_3
    return-object v0

    .line 321
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 331
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 323
    :pswitch_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 329
    :pswitch_17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 321
    :pswitch_data_1e
    .packed-switch 0x5
        :pswitch_10
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method protected _handleApos()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 11

    .prologue
    const/16 v9, 0x27

    const/4 v2, 0x0

    .line 2369
    .line 2372
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 2375
    sget-object v6, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 2376
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    move v1, v2

    .line 2383
    :cond_e
    :goto_e
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v3, v4, :cond_17

    .line 2384
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2386
    :cond_17
    array-length v3, v0

    if-lt v1, v3, :cond_21

    .line 2387
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v1, v2

    .line 2390
    :cond_21
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 2392
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 2393
    if-ge v3, v4, :cond_b4

    .line 2397
    :goto_2a
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    if-ge v4, v3, :cond_e

    .line 2398
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    .line 2399
    if-eq v5, v9, :cond_3e

    aget v4, v6, v5

    if-eqz v4, :cond_48

    .line 2407
    :cond_3e
    if-ne v5, v9, :cond_4f

    .line 2453
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2455
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2402
    :cond_48
    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_2a

    .line 2411
    :cond_4f
    aget v3, v6, v5

    packed-switch v3, :pswitch_data_b8

    .line 2439
    const/16 v3, 0x20

    if-ge v5, v3, :cond_5e

    .line 2440
    const-string/jumbo v3, "string value"

    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 2443
    :cond_5e
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    :cond_61
    move v3, v5

    .line 2446
    :goto_62
    array-length v4, v0

    if-lt v1, v4, :cond_b0

    .line 2447
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v4, v2

    .line 2451
    :goto_6c
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_e

    .line 2413
    :pswitch_72
    if-eq v5, v9, :cond_61

    .line 2414
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    move-result v3

    goto :goto_62

    .line 2418
    :pswitch_79
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_2(I)I

    move-result v3

    goto :goto_62

    .line 2421
    :pswitch_7e
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8b

    .line 2422
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3fast(I)I

    move-result v3

    goto :goto_62

    .line 2424
    :cond_8b
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3(I)I

    move-result v3

    goto :goto_62

    .line 2428
    :pswitch_90
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_4(I)I

    move-result v4

    .line 2430
    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 2431
    array-length v1, v0

    if-lt v3, v1, :cond_b2

    .line 2432
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    move v1, v2

    .line 2435
    :goto_a9
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    .line 2437
    goto :goto_62

    :cond_b0
    move v4, v1

    goto :goto_6c

    :cond_b2
    move v1, v3

    goto :goto_a9

    :cond_b4
    move v3, v4

    goto/16 :goto_2a

    .line 2411
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_72
        :pswitch_79
        :pswitch_7e
        :pswitch_90
    .end packed-switch
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 7

    .prologue
    .line 2465
    move v0, p1

    :goto_1
    const/16 v1, 0x49

    if-ne v0, v1, :cond_72

    .line 2466
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_14

    .line 2467
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2468
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOFInValue()V

    .line 2471
    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v0, v1

    .line 2473
    const/16 v0, 0x4e

    if-ne v1, v0, :cond_40

    .line 2474
    if-eqz p2, :cond_3c

    const-string/jumbo v0, "-INF"

    .line 2480
    :goto_27
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2481
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2482
    if-eqz p2, :cond_4e

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_37
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2487
    :goto_3b
    return-object v0

    .line 2474
    :cond_3c
    const-string/jumbo v0, "+INF"

    goto :goto_27

    .line 2475
    :cond_40
    const/16 v0, 0x6e

    if-ne v1, v0, :cond_71

    .line 2476
    if-eqz p2, :cond_4a

    const-string/jumbo v0, "-Infinity"

    goto :goto_27

    :cond_4a
    const-string/jumbo v0, "+Infinity"

    goto :goto_27

    .line 2482
    :cond_4e
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_37

    .line 2484
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-standard token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    move v0, v1

    .line 2485
    goto :goto_1

    :cond_71
    move v0, v1

    .line 2486
    :cond_72
    const-string/jumbo v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 2487
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method protected _handleOddName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 1793
    const/16 v1, 0x27

    if-ne p1, v1, :cond_12

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1794
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseAposName()Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1854
    :goto_11
    return-object v0

    .line 1797
    :cond_12
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1798
    const-string/jumbo v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1804
    :cond_20
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v6

    .line 1806
    aget v1, v6, p1

    if-eqz v1, :cond_2e

    .line 1807
    const-string/jumbo v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1814
    :cond_2e
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 1821
    :goto_36
    const/4 v4, 0x4

    if-ge v1, v4, :cond_7f

    .line 1822
    add-int/lit8 v1, v1, 0x1

    .line 1823
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    .line 1832
    :goto_43
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_55

    .line 1833
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_55

    .line 1834
    const-string/jumbo v4, " in field name"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1837
    :cond_55
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 p1, v4, 0xff

    .line 1838
    aget v4, v6, p1

    if-eqz v4, :cond_93

    .line 1844
    if-lez v0, :cond_72

    .line 1845
    array-length v4, v3

    if-lt v2, v4, :cond_6d

    .line 1846
    array-length v4, v3

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1848
    :cond_6d
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 1850
    :cond_72
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    .line 1851
    if-nez v1, :cond_9f

    .line 1852
    invoke-direct {p0, v3, v2, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_11

    .line 1825
    :cond_7f
    array-length v1, v0

    if-lt v3, v1, :cond_89

    .line 1826
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1828
    :cond_89
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    .line 1830
    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_43

    .line 1841
    :cond_93
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_36

    :cond_9f
    move-object v0, v1

    goto/16 :goto_11
.end method

.method protected _handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 2324
    sparse-switch p1, :sswitch_data_a0

    .line 2358
    :cond_4
    :goto_4
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "(\'true\', \'false\' or \'null\')"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    :cond_25
    const-string/jumbo v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2363
    const/4 v0, 0x0

    :goto_2c
    return-object v0

    .line 2329
    :sswitch_2d
    const-string/jumbo v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2331
    :sswitch_33
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2332
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleApos()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2c

    .line 2336
    :sswitch_40
    const-string/jumbo v0, "NaN"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2337
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2338
    const-string/jumbo v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2c

    .line 2340
    :cond_58
    const-string/jumbo v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_4

    .line 2343
    :sswitch_5f
    const-string/jumbo v0, "Infinity"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2344
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2345
    const-string/jumbo v0, "Infinity"

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2c

    .line 2347
    :cond_77
    const-string/jumbo v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_4

    .line 2350
    :sswitch_7e
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_8d

    .line 2351
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 2352
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOFInValue()V

    .line 2355
    :cond_8d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2c

    .line 2324
    nop

    :sswitch_data_a0
    .sparse-switch
        0x27 -> :sswitch_33
        0x2b -> :sswitch_7e
        0x49 -> :sswitch_5f
        0x4e -> :sswitch_40
        0x5d -> :sswitch_2d
        0x7d -> :sswitch_2d
    .end sparse-switch
.end method

.method protected final _loadToHaveAtLeast(I)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    if-nez v2, :cond_7

    .line 227
    :cond_6
    :goto_6
    return v0

    .line 204
    :cond_7
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v2, v3

    .line 205
    if-lez v2, :cond_6a

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    if-lez v3, :cond_6a

    .line 206
    iget-wide v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    .line 207
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 208
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 213
    :goto_2c
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 214
    :goto_2e
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-ge v3, p1, :cond_73

    .line 215
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 216
    if-ge v3, v1, :cond_6d

    .line 218
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_closeInput()V

    .line 220
    if-nez v3, :cond_6

    .line 221
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_6a
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    goto :goto_2c

    .line 225
    :cond_6d
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    goto :goto_2e

    :cond_73
    move v0, v1

    .line 227
    goto :goto_6
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 2492
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2493
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_f

    .line 2494
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken2(Ljava/lang/String;I)V

    .line 2508
    :cond_e
    :goto_e
    return-void

    .line 2498
    :cond_f
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_23

    .line 2499
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 2501
    :cond_23
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2502
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_f

    .line 2504
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2505
    const/16 v1, 0x30

    if-lt v0, v1, :cond_e

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_e

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_e

    .line 2506
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_checkMatchEnd(Ljava/lang/String;II)V

    goto :goto_e
.end method

.method protected _parseAposName()Lcom/fasterxml/jackson/core/sym/Name;
    .registers 13

    .prologue
    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 1864
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_16

    .line 1865
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1866
    const-string/jumbo v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1869
    :cond_16
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v5, v0, 0xff

    .line 1870
    if-ne v5, v10, :cond_29

    .line 1871
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1964
    :goto_28
    return-object v0

    .line 1873
    :cond_29
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1880
    sget-object v7, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    move v3, v1

    move v4, v1

    move v2, v1

    .line 1883
    :goto_30
    if-ne v5, v10, :cond_52

    .line 1954
    if-lez v3, :cond_10d

    .line 1955
    array-length v1, v0

    if-lt v2, v1, :cond_3e

    .line 1956
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1958
    :cond_3e
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 1960
    :goto_45
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v2

    .line 1961
    if-nez v2, :cond_10a

    .line 1962
    invoke-direct {p0, v1, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_28

    .line 1887
    :cond_52
    const/16 v6, 0x22

    if-eq v5, v6, :cond_11d

    aget v6, v7, v5

    if-eqz v6, :cond_11d

    .line 1888
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_c5

    .line 1891
    const-string/jumbo v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1901
    :goto_64
    const/16 v6, 0x7f

    if-le v5, v6, :cond_11d

    .line 1903
    if-lt v3, v9, :cond_117

    .line 1904
    array-length v3, v0

    if-lt v2, v3, :cond_74

    .line 1905
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1907
    :cond_74
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    .line 1911
    :goto_7b
    const/16 v6, 0x800

    if-ge v5, v6, :cond_ca

    .line 1912
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    .line 1913
    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move v2, v3

    move-object v3, v0

    move v0, v11

    .line 1931
    :goto_8c
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    .line 1935
    :goto_94
    if-ge v2, v9, :cond_f6

    .line 1936
    add-int/lit8 v2, v2, 0x1

    .line 1937
    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    .line 1946
    :goto_a0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_b2

    .line 1947
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_b2

    .line 1948
    const-string/jumbo v5, " in field name"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1951
    :cond_b2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v11, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto/16 :goto_30

    .line 1894
    :cond_c5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    move-result v5

    goto :goto_64

    .line 1916
    :cond_ca
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    .line 1917
    add-int/lit8 v2, v2, 0x1

    .line 1919
    if-lt v2, v9, :cond_111

    .line 1920
    array-length v2, v0

    if-lt v4, v2, :cond_df

    .line 1921
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1923
    :cond_df
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1927
    :goto_e7
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1928
    add-int/lit8 v0, v0, 0x1

    move v11, v3

    move-object v3, v4

    move v4, v11

    goto :goto_8c

    .line 1939
    :cond_f6
    array-length v2, v0

    if-lt v4, v2, :cond_100

    .line 1940
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1942
    :cond_100
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    .line 1944
    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_a0

    :cond_10a
    move-object v0, v2

    goto/16 :goto_28

    :cond_10d
    move-object v1, v0

    move v0, v2

    goto/16 :goto_45

    :cond_111
    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_e7

    :cond_117
    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_7b

    :cond_11d
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_94
.end method

.method protected final _parseName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 11

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    .line 1495
    if-eq p1, v5, :cond_d

    .line 1496
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleOddName(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1552
    :goto_c
    return-object v0

    .line 1499
    :cond_d
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-le v0, v1, :cond_1a

    .line 1500
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->slowParseName()Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_c

    .line 1509
    :cond_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 1510
    sget-object v1, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    .line 1512
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1514
    aget v3, v1, v2

    if-nez v3, :cond_ab

    .line 1515
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1516
    aget v4, v1, v3

    if-nez v4, :cond_9d

    .line 1517
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1518
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1519
    aget v4, v1, v3

    if-nez v4, :cond_8f

    .line 1520
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1521
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1522
    aget v4, v1, v3

    if-nez v4, :cond_82

    .line 1523
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1524
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 1525
    aget v1, v1, v0

    if-nez v1, :cond_74

    .line 1526
    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 1527
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseMediumName(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_c

    .line 1529
    :cond_74
    if-ne v0, v5, :cond_7c

    .line 1530
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_c

    .line 1532
    :cond_7c
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_c

    .line 1534
    :cond_82
    if-ne v3, v5, :cond_89

    .line 1535
    invoke-direct {p0, v2, v8}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_c

    .line 1537
    :cond_89
    invoke-direct {p0, v2, v3, v8}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_c

    .line 1539
    :cond_8f
    if-ne v3, v5, :cond_97

    .line 1540
    invoke-direct {p0, v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_c

    .line 1542
    :cond_97
    invoke-direct {p0, v2, v3, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_c

    .line 1544
    :cond_9d
    if-ne v3, v5, :cond_a5

    .line 1545
    invoke-direct {p0, v2, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_c

    .line 1547
    :cond_a5
    invoke-direct {p0, v2, v3, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_c

    .line 1549
    :cond_ab
    if-ne v2, v5, :cond_b3

    .line 1550
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_c

    .line 1552
    :cond_b3
    invoke-direct {p0, v4, v2, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_c
.end method

.method protected _parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 11

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v4, 0x1

    .line 1233
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1234
    const/4 v0, 0x0

    .line 1237
    const/16 v2, 0x2d

    aput-char v2, v1, v0

    .line 1239
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_19

    .line 1240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 1242
    :cond_19
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1244
    if-lt v0, v8, :cond_29

    if-le v0, v9, :cond_2e

    .line 1245
    :cond_29
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1289
    :goto_2d
    return-object v0

    .line 1249
    :cond_2e
    if-ne v0, v8, :cond_34

    .line 1250
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyNoLeadingZeroes()I

    move-result v0

    .line 1254
    :cond_34
    const/4 v2, 0x2

    int-to-char v0, v0

    aput-char v0, v1, v4

    .line 1259
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    array-length v3, v1

    add-int/2addr v0, v3

    .line 1260
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-le v0, v3, :cond_92

    .line 1261
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    move v5, v4

    .line 1266
    :goto_43
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    if-lt v3, v0, :cond_4c

    .line 1268
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNumber2([CIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2d

    .line 1270
    :cond_4c
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 1271
    if-lt v3, v8, :cond_5c

    if-le v3, v9, :cond_6e

    .line 1277
    :cond_5c
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_68

    const/16 v0, 0x65

    if-eq v3, v0, :cond_68

    const/16 v0, 0x45

    if-ne v3, v0, :cond_77

    :cond_68
    move-object v0, p0

    .line 1278
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2d

    .line 1274
    :cond_6e
    add-int/lit8 v5, v5, 0x1

    .line 1275
    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_43

    .line 1281
    :cond_77
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1282
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1284
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1285
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyRootSpace(I)V

    .line 1289
    :cond_8d
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2d

    :cond_92
    move v5, v4

    goto :goto_43
.end method

.method protected _parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 11

    .prologue
    const/16 v8, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1191
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1194
    if-ne p1, v8, :cond_10

    .line 1195
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyNoLeadingZeroes()I

    move-result p1

    .line 1198
    :cond_10
    int-to-char v0, p1

    aput-char v0, v1, v4

    .line 1202
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    array-length v2, v1

    add-int/2addr v0, v2

    .line 1203
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-le v0, v2, :cond_6f

    .line 1204
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    move v2, v5

    .line 1208
    :goto_1e
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    if-lt v3, v0, :cond_27

    .line 1209
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNumber2([CIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1228
    :goto_26
    return-object v0

    .line 1211
    :cond_27
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 1212
    if-lt v3, v8, :cond_39

    const/16 v6, 0x39

    if-le v3, v6, :cond_4b

    .line 1218
    :cond_39
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_45

    const/16 v0, 0x65

    if-eq v3, v0, :cond_45

    const/16 v0, 0x45

    if-ne v3, v0, :cond_54

    :cond_45
    move-object v0, p0

    .line 1219
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_26

    .line 1215
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    .line 1216
    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_1e

    .line 1221
    :cond_54
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 1222
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1224
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1225
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyRootSpace(I)V

    .line 1228
    :cond_6a
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_26

    :cond_6f
    move v2, v5

    goto :goto_1e
.end method

.method protected _readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    .registers 15

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x22

    const/4 v8, -0x2

    const/4 v1, 0x0

    .line 477
    .line 478
    array-length v0, p3

    add-int/lit8 v5, v0, -0x3

    move v0, v1

    move v2, v1

    .line 485
    :cond_a
    :goto_a
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v3, v4, :cond_13

    .line 486
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 488
    :cond_13
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xff

    .line 489
    const/16 v3, 0x20

    if-le v4, v3, :cond_a

    .line 490
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v3

    .line 491
    if-gez v3, :cond_3a

    .line 492
    if-ne v4, v9, :cond_34

    .line 593
    :goto_2b
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 594
    if-lez v2, :cond_33

    .line 595
    add-int/2addr v0, v2

    .line 596
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 598
    :cond_33
    return v0

    .line 495
    :cond_34
    invoke-virtual {p0, p1, v4, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v3

    .line 496
    if-ltz v3, :cond_a

    :cond_3a
    move v4, v3

    .line 502
    if-le v2, v5, :cond_147

    .line 503
    add-int/2addr v0, v2

    .line 504
    invoke-virtual {p2, p3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    move v3, v1

    .line 512
    :goto_42
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_4b

    .line 513
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 515
    :cond_4b
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 516
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 517
    if-gez v2, :cond_62

    .line 518
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v6, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 520
    :cond_62
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 523
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_6e

    .line 524
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 526
    :cond_6e
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 527
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 530
    if-gez v2, :cond_e1

    .line 531
    if-eq v2, v8, :cond_97

    .line 533
    if-ne v6, v9, :cond_92

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v2

    if-nez v2, :cond_92

    .line 534
    shr-int/lit8 v4, v4, 0x4

    .line 535
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto :goto_2b

    .line 538
    :cond_92
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v6, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 540
    :cond_97
    if-ne v2, v8, :cond_e1

    .line 542
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_a2

    .line 543
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 545
    :cond_a2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    .line 546
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v6

    if-nez v6, :cond_d8

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "expected padding character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v10, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 550
    :cond_d8
    shr-int/lit8 v4, v4, 0x4

    .line 551
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_a

    .line 556
    :cond_e1
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 558
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v2, v6, :cond_ed

    .line 559
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 561
    :cond_ed
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    .line 562
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 563
    if-gez v2, :cond_12f

    .line 564
    if-eq v2, v8, :cond_11d

    .line 566
    if-ne v6, v9, :cond_119

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v2

    if-nez v2, :cond_119

    .line 567
    shr-int/lit8 v4, v4, 0x2

    .line 568
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 569
    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v5

    goto/16 :goto_2b

    .line 572
    :cond_119
    invoke-virtual {p0, p1, v6, v10}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 574
    :cond_11d
    if-ne v2, v8, :cond_12f

    .line 581
    shr-int/lit8 v4, v4, 0x2

    .line 582
    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 583
    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v4

    aput-byte v3, p3, v6

    goto/16 :goto_a

    .line 588
    :cond_12f
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v2

    .line 589
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    .line 590
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 591
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto/16 :goto_a

    :cond_147
    move v3, v2

    goto/16 :goto_42
.end method

.method protected _releaseBuffers()V
    .registers 3

    .prologue
    .line 254
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 256
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->release()V

    .line 257
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_bufferRecyclable:Z

    if-eqz v0, :cond_18

    .line 258
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 259
    if-eqz v0, :cond_18

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 261
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 264
    :cond_18
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .registers 3

    .prologue
    .line 3207
    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    .line 3208
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwInvalidSpace(I)V

    .line 3210
    :cond_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    .line 3211
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .registers 4

    .prologue
    .line 3216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    .line 3217
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .registers 4

    .prologue
    .line 3222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    .line 3223
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .registers 3

    .prologue
    .line 3228
    iput p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 3229
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 3230
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3178
    const-string/jumbo v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 3183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3190
    :goto_5
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_38

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_38

    .line 3200
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    .line 3201
    return-void

    .line 3193
    :cond_38
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 3194
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    move-result v1

    int-to-char v1, v1

    .line 3195
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method protected final _skipCR()V
    .registers 3

    .prologue
    .line 3153
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3154
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 3155
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 3158
    :cond_1c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    .line 3159
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 3160
    return-void
.end method

.method protected _skipString()V
    .registers 7

    .prologue
    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 2261
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 2262
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 2270
    :goto_7
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2271
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 2272
    if-lt v1, v0, :cond_14

    .line 2273
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMoreGuaranteed()V

    .line 2274
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2275
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 2277
    :cond_14
    :goto_14
    if-ge v1, v0, :cond_27

    .line 2278
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 2279
    aget v5, v3, v1

    if-eqz v5, :cond_4e

    .line 2280
    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 2287
    const/16 v0, 0x22

    if-ne v1, v0, :cond_2a

    .line 2314
    return-void

    .line 2284
    :cond_27
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    goto :goto_7

    .line 2291
    :cond_2a
    aget v0, v3, v1

    packed-switch v0, :pswitch_data_50

    .line 2305
    const/16 v0, 0x20

    if-ge v1, v0, :cond_4a

    .line 2307
    const-string/jumbo v0, "string value"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_7

    .line 2293
    :pswitch_3a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    goto :goto_7

    .line 2296
    :pswitch_3e
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    goto :goto_7

    .line 2299
    :pswitch_42
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    goto :goto_7

    .line 2302
    :pswitch_46
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    goto :goto_7

    .line 2310
    :cond_4a
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    goto :goto_7

    :cond_4e
    move v1, v2

    goto :goto_14

    .line 2291
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_46
    .end packed-switch
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .registers 5

    .prologue
    .line 426
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    if-nez v0, :cond_30

    .line 428
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportError(Ljava/lang/String;)V

    .line 433
    :cond_30
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_69

    .line 435
    :try_start_34
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3a} :catch_40

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 451
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    return-object v0

    .line 436
    :catch_40
    move-exception v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 444
    :cond_69
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    if-nez v0, :cond_3d

    .line 446
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 448
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    goto :goto_3d
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .registers 9

    .prologue
    .line 615
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 616
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, -0x1

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    .line 277
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_10

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 279
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 281
    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public getTextCharacters()[C
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 339
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_54

    .line 340
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 367
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 370
    :goto_14
    return-object v0

    .line 343
    :pswitch_15
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    if-nez v0, :cond_37

    .line 344
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 346
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_3a

    .line 347
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    .line 351
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 354
    :cond_37
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    goto :goto_14

    .line 348
    :cond_3a
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_2f

    .line 349
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopyBuffer:[C

    goto :goto_2f

    .line 357
    :pswitch_44
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_4d

    .line 358
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 364
    :cond_4d
    :pswitch_4d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    goto :goto_14

    .line 370
    :cond_54
    const/4 v0, 0x0

    goto :goto_14

    .line 340
    :pswitch_data_56
    .packed-switch 0x5
        :pswitch_15
        :pswitch_44
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method

.method public getTextLength()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 377
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_15

    .line 378
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 393
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 396
    :cond_15
    :goto_15
    return v0

    .line 381
    :pswitch_16
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_15

    .line 383
    :pswitch_21
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_2a

    .line 384
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 385
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 390
    :cond_2a
    :pswitch_2a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    goto :goto_15

    .line 378
    nop

    :pswitch_data_32
    .packed-switch 0x5
        :pswitch_16
        :pswitch_21
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public getTextOffset()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_e

    .line 404
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 419
    :cond_e
    :goto_e
    :pswitch_e
    return v0

    .line 408
    :pswitch_f
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_18

    .line 409
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 410
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 415
    :cond_18
    :pswitch_18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_e

    .line 404
    nop

    :pswitch_data_20
    .packed-switch 0x5
        :pswitch_e
        :pswitch_f
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .registers 9

    .prologue
    .line 605
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getTokenCharacterOffset()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getTokenLineNr()I

    move-result v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getTokenColumnNr()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    .line 293
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_10

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 295
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 297
    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_17

    .line 307
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_10

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 309
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 311
    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_16
    return-object v0

    :cond_17
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method protected final loadMore()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    .line 173
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    .line 175
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_26

    .line 176
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 177
    if-lez v1, :cond_27

    .line 178
    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 179
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    .line 180
    const/4 v0, 0x1

    .line 189
    :cond_26
    return v0

    .line 183
    :cond_27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_closeInput()V

    .line 185
    if-nez v1, :cond_26

    .line 186
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1139
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_40

    .line 1140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 1141
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1142
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1143
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1144
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_17

    .line 1145
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1164
    :cond_16
    :goto_16
    return-object v0

    .line 1147
    :cond_17
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1e

    .line 1148
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_16

    .line 1150
    :cond_1e
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2f

    .line 1151
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_16

    .line 1152
    :cond_2f
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_16

    .line 1153
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_16

    .line 1158
    :cond_40
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    packed-switch v1, :pswitch_data_52

    goto :goto_16

    .line 1160
    :pswitch_4c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_16

    .line 1162
    :pswitch_4f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_16

    .line 1158
    :pswitch_data_52
    .packed-switch 0x9
        :pswitch_4c
        :pswitch_4f
    .end packed-switch
.end method

.method public nextFieldName(Lcom/fasterxml/jackson/core/SerializableString;)Z
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/16 v6, 0x22

    const/4 v1, 0x0

    .line 822
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_numTypesValid:I

    .line 823
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_15

    .line 824
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 902
    :goto_14
    return v0

    .line 827
    :cond_15
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1c

    .line 828
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipString()V

    .line 830
    :cond_1c
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd()I

    move-result v0

    .line 831
    if-gez v0, :cond_29

    .line 832
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->close()V

    .line 833
    iput-object v9, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 834
    goto :goto_14

    .line 836
    :cond_29
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputTotal:J

    .line 837
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    .line 838
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    .line 841
    iput-object v9, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    .line 844
    if-ne v0, v7, :cond_5e

    .line 845
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v2

    if-nez v2, :cond_50

    .line 846
    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 848
    :cond_50
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 849
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 850
    goto :goto_14

    .line 852
    :cond_5e
    if-ne v0, v8, :cond_79

    .line 853
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 854
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 856
    :cond_6b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 857
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 858
    goto :goto_14

    .line 862
    :cond_79
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 863
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_a9

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "was expecting comma to separate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 866
    :cond_a9
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 869
    :cond_ad
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v2

    if-nez v2, :cond_bb

    .line 870
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    move v0, v1

    .line 871
    goto/16 :goto_14

    .line 875
    :cond_bb
    if-ne v0, v6, :cond_f8

    .line 877
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v3

    .line 878
    array-length v2, v3

    .line 881
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-ge v4, v5, :cond_f8

    .line 883
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/2addr v4, v2

    .line 884
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    aget-byte v2, v2, v4

    if-ne v2, v6, :cond_f8

    .line 886
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    move v10, v2

    move v2, v1

    move v1, v10

    .line 888
    :goto_d9
    if-ne v1, v4, :cond_f0

    .line 889
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 890
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColonFast(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_isNextTokenNameYes(I)V

    .line 891
    const/4 v0, 0x1

    goto/16 :goto_14

    .line 893
    :cond_f0
    aget-byte v5, v3, v2

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    aget-byte v6, v6, v1

    if-eq v5, v6, :cond_fe

    .line 902
    :cond_f8
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_isNextTokenNameMaybe(ILcom/fasterxml/jackson/core/SerializableString;)Z

    move-result v0

    goto/16 :goto_14

    .line 896
    :cond_fe
    add-int/lit8 v2, v2, 0x1

    .line 897
    add-int/lit8 v1, v1, 0x1

    goto :goto_d9
.end method

.method public nextIntValue(I)I
    .registers 5

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3b

    .line 1094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 1095
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1096
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1097
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1098
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_19

    .line 1099
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getIntValue()I

    move-result p1

    .line 1109
    :cond_18
    :goto_18
    return p1

    .line 1101
    :cond_19
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2a

    .line 1102
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_18

    .line 1103
    :cond_2a
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_18

    .line 1104
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_18

    .line 1109
    :cond_3b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getIntValue()I

    move-result p1

    goto :goto_18
.end method

.method public nextLongValue(J)J
    .registers 6

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3b

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 1118
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1120
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1121
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_19

    .line 1122
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getLongValue()J

    move-result-wide p1

    .line 1132
    :cond_18
    :goto_18
    return-wide p1

    .line 1124
    :cond_19
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2a

    .line 1125
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_18

    .line 1126
    :cond_2a
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_18

    .line 1127
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_18

    .line 1132
    :cond_3b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getLongValue()J

    move-result-wide p1

    goto :goto_18
.end method

.method public nextTextValue()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1066
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_46

    .line 1067
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nameCopied:Z

    .line 1068
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1069
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1070
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1071
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_24

    .line 1072
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1d

    .line 1073
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 1074
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 1076
    :cond_1d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    :cond_23
    :goto_23
    return-object v0

    .line 1078
    :cond_24
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_35

    .line 1079
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_23

    .line 1080
    :cond_35
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_23

    .line 1081
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_23

    .line 1086
    :cond_46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_23

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/4 v6, 0x1

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_numTypesValid:I

    .line 639
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_14

    .line 640
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 751
    :goto_13
    return-object v0

    .line 642
    :cond_14
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1b

    .line 643
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipString()V

    .line 645
    :cond_1b
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd()I

    move-result v0

    .line 646
    if-gez v0, :cond_28

    .line 648
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->close()V

    .line 649
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    goto :goto_13

    .line 654
    :cond_28
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputTotal:J

    .line 655
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRow:I

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputRow:I

    .line 656
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currInputRowStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenInputCol:I

    .line 659
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_binaryValue:[B

    .line 662
    if-ne v0, v7, :cond_5c

    .line 663
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 664
    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 666
    :cond_4f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 667
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_13

    .line 669
    :cond_5c
    if-ne v0, v8, :cond_76

    .line 670
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_69

    .line 671
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 673
    :cond_69
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 674
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_13

    .line 678
    :cond_76
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 679
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_a6

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 682
    :cond_a6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    move-result v0

    .line 689
    :cond_aa
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 690
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_13

    .line 693
    :cond_b8
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseName(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 695
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 697
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon()I

    move-result v0

    .line 700
    const/16 v1, 0x22

    if-ne v0, v1, :cond_db

    .line 701
    iput-boolean v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 702
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 703
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_13

    .line 707
    :cond_db
    sparse-switch v0, :sswitch_data_114

    .line 748
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 750
    :goto_e2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 751
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_13

    .line 709
    :sswitch_e8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_e2

    .line 726
    :sswitch_ed
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_e2

    .line 729
    :sswitch_f2
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 730
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e2

    .line 733
    :sswitch_fb
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 734
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e2

    .line 737
    :sswitch_104
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 738
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e2

    .line 741
    :sswitch_10d
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e2

    .line 744
    :sswitch_110
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_e2

    .line 707
    nop

    :sswitch_data_114
    .sparse-switch
        0x2d -> :sswitch_e8
        0x30 -> :sswitch_ed
        0x31 -> :sswitch_ed
        0x32 -> :sswitch_ed
        0x33 -> :sswitch_ed
        0x34 -> :sswitch_ed
        0x35 -> :sswitch_ed
        0x36 -> :sswitch_ed
        0x37 -> :sswitch_ed
        0x38 -> :sswitch_ed
        0x39 -> :sswitch_ed
        0x5b -> :sswitch_10d
        0x66 -> :sswitch_f2
        0x6e -> :sswitch_fb
        0x74 -> :sswitch_104
        0x7b -> :sswitch_110
    .end sparse-switch
.end method

.method protected final parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 15

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 1698
    sget-object v5, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    .line 1701
    :goto_4
    aget v0, v5, p4

    if-eqz v0, :cond_d9

    .line 1702
    const/16 v0, 0x22

    if-ne p4, v0, :cond_2a

    .line 1771
    if-lez p5, :cond_1d

    .line 1772
    array-length v0, p1

    if-lt p2, v0, :cond_18

    .line 1773
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1775
    :cond_18
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    .line 1777
    :cond_1d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1778
    if-nez v0, :cond_29

    .line 1779
    invoke-direct {p0, p1, p2, p5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1781
    :cond_29
    return-object v0

    .line 1706
    :cond_2a
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_8c

    .line 1708
    const-string/jumbo v0, "name"

    invoke-virtual {p0, p4, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1718
    :goto_34
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d9

    .line 1720
    if-lt p5, v7, :cond_d5

    .line 1721
    array-length v0, p1

    if-lt p2, v0, :cond_44

    .line 1722
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1724
    :cond_44
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 1728
    :goto_4b
    const/16 v2, 0x800

    if-ge p4, v2, :cond_91

    .line 1729
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 1730
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 1748
    :goto_5c
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 1752
    :goto_64
    if-ge p5, v7, :cond_bd

    .line 1753
    add-int/lit8 p5, p5, 0x1

    .line 1754
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 1763
    :goto_6c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_7e

    .line 1764
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 1765
    const-string/jumbo v0, " in field name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1768
    :cond_7e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto/16 :goto_4

    .line 1711
    :cond_8c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    move-result p4

    goto :goto_34

    .line 1733
    :cond_91
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 1734
    add-int/lit8 v2, p5, 0x1

    .line 1736
    if-lt v2, v7, :cond_cf

    .line 1737
    array-length v2, v0

    if-lt v4, v2, :cond_a6

    .line 1738
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1740
    :cond_a6
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1744
    :goto_ae
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1745
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_5c

    .line 1756
    :cond_bd
    array-length v2, v0

    if-lt p2, v2, :cond_c7

    .line 1757
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1759
    :cond_c7
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 1761
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_6c

    :cond_cf
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_ae

    :cond_d5
    move v4, p2

    move-object v0, p1

    goto/16 :goto_4b

    :cond_d9
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto :goto_64
.end method

.method protected final parseLongName(II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 15

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x22

    .line 1597
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    aput v1, v0, v7

    .line 1598
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    aput p2, v0, v5

    .line 1601
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 1602
    sget-object v8, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    move v2, v6

    move v3, p1

    .line 1605
    :goto_16
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x4

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-gt v0, v4, :cond_c1

    .line 1606
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 1607
    aget v0, v8, v4

    if-eqz v0, :cond_3d

    .line 1608
    if-ne v4, v10, :cond_35

    .line 1609
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1653
    :goto_34
    return-object v0

    .line 1611
    :cond_35
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_34

    .line 1614
    :cond_3d
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1615
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 1616
    aget v0, v8, v4

    if-eqz v0, :cond_61

    .line 1617
    if-ne v4, v10, :cond_58

    .line 1618
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v3, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_34

    .line 1620
    :cond_58
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_34

    .line 1623
    :cond_61
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1624
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 1625
    aget v0, v8, v4

    if-eqz v0, :cond_85

    .line 1626
    if-ne v4, v10, :cond_7c

    .line 1627
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, v3, v11}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_34

    .line 1629
    :cond_7c
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_34

    .line 1632
    :cond_85
    shl-int/lit8 v0, v3, 0x8

    or-int v3, v0, v4

    .line 1633
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 1634
    aget v0, v8, v4

    if-eqz v0, :cond_aa

    .line 1635
    if-ne v4, v10, :cond_a1

    .line 1636
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_34

    .line 1638
    :cond_a1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_34

    .line 1642
    :cond_aa
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    array-length v0, v0

    if-lt v2, v0, :cond_b7

    .line 1643
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 1645
    :cond_b7
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    add-int/lit8 v0, v2, 0x1

    aput v3, v9, v2

    move v2, v0

    move v3, v4

    .line 1647
    goto/16 :goto_16

    .line 1653
    :cond_c1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v4, p0

    move v6, v2

    move v8, v3

    move v9, v7

    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto/16 :goto_34
.end method

.method protected final parseMediumName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 11

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x22

    .line 1557
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 1558
    sget-object v1, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    .line 1561
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1562
    aget v3, v1, v2

    if-eqz v3, :cond_28

    .line 1563
    if-ne v2, v5, :cond_21

    .line 1564
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v0, p1, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1592
    :goto_20
    return-object v0

    .line 1566
    :cond_21
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v0, p1, v2, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_20

    .line 1568
    :cond_28
    shl-int/lit8 v3, p1, 0x8

    or-int/2addr v2, v3

    .line 1569
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1570
    aget v4, v1, v3

    if-eqz v4, :cond_49

    .line 1571
    if-ne v3, v5, :cond_42

    .line 1572
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v0, v2, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_20

    .line 1574
    :cond_42
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v0, v2, v3, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_20

    .line 1576
    :cond_49
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1577
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1578
    aget v4, v1, v3

    if-eqz v4, :cond_6a

    .line 1579
    if-ne v3, v5, :cond_63

    .line 1580
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v0, v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_20

    .line 1582
    :cond_63
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v0, v2, v3, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_20

    .line 1584
    :cond_6a
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1585
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 1586
    aget v1, v1, v0

    if-eqz v1, :cond_8b

    .line 1587
    if-ne v0, v5, :cond_84

    .line 1588
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v0, v2, v8}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_20

    .line 1590
    :cond_84
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    invoke-direct {p0, v1, v2, v0, v8}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_20

    .line 1592
    :cond_8b
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseLongName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_20
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .registers 6

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_13

    .line 460
    :cond_a
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    .line 461
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 462
    array-length v0, v0

    .line 469
    :goto_12
    return v0

    .line 465
    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    .line 467
    :try_start_19
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    move-result v0

    .line 469
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    goto :goto_12

    :catchall_23
    move-exception v0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v0
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .registers 5

    .prologue
    .line 147
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    .line 148
    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 149
    const/4 v0, 0x0

    .line 154
    :goto_9
    return v0

    .line 152
    :cond_a
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    .line 153
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 136
    return-void
.end method

.method protected slowParseName()Lcom/fasterxml/jackson/core/sym/Name;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1663
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_13

    .line 1664
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1665
    const-string/jumbo v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1668
    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1669
    const/16 v0, 0x22

    if-ne v4, v0, :cond_28

    .line 1670
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    .line 1672
    :goto_27
    return-object v0

    :cond_28
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    goto :goto_27
.end method
