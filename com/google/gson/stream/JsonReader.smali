.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    const-string/jumbo v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1600
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1623
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 239
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 240
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 242
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 243
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 245
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 270
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 272
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 290
    if-nez p1, :cond_3c

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_3c
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/gson/stream/JsonReader;I)I
    .registers 2

    .prologue
    .line 190
    iput p1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/gson/stream/JsonReader;)I
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/gson/stream/JsonReader;)I
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/gson/stream/JsonReader;)I
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private checkLenient()V
    .registers 2

    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_c

    .line 1423
    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1425
    :cond_c
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .registers 4

    .prologue
    .line 1582
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1583
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1585
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_1e

    sget-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1597
    :cond_1d
    :goto_1d
    return-void

    .line 1589
    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 1590
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1d

    .line 1589
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1596
    :cond_34
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1d
.end method

.method private doPeek()I
    .registers 9

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 466
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    .line 467
    if-ne v4, v2, :cond_32

    .line 468
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    .line 553
    :cond_17
    :goto_17
    :pswitch_17
    :sswitch_17
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 554
    sparse-switch v5, :sswitch_data_188

    .line 583
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 586
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ne v0, v2, :cond_2b

    .line 587
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 590
    :cond_2b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v0

    .line 591
    if-eqz v0, :cond_164

    .line 605
    :cond_31
    :goto_31
    return v0

    .line 469
    :cond_32
    if-ne v4, v1, :cond_4a

    .line 471
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 472
    sparse-switch v5, :sswitch_data_1a6

    .line 480
    const-string/jumbo v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 474
    :sswitch_43
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_31

    .line 476
    :sswitch_46
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_17

    .line 482
    :cond_4a
    const/4 v5, 0x3

    if-eq v4, v5, :cond_4f

    if-ne v4, v7, :cond_ae

    .line 483
    :cond_4f
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    .line 485
    if-ne v4, v7, :cond_6f

    .line 486
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 487
    sparse-switch v0, :sswitch_data_1b4

    .line 495
    const-string/jumbo v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 489
    :sswitch_68
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v0, v1

    goto :goto_31

    .line 491
    :sswitch_6c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 498
    :cond_6f
    :sswitch_6f
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 499
    sparse-switch v0, :sswitch_data_1c2

    .line 512
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 513
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 514
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 515
    const/16 v0, 0xe

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_31

    .line 501
    :sswitch_8b
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_31

    .line 503
    :sswitch_90
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 504
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_31

    .line 506
    :sswitch_98
    if-eq v4, v7, :cond_9e

    .line 507
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v0, v1

    goto :goto_31

    .line 509
    :cond_9e
    const-string/jumbo v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 517
    :cond_a6
    const-string/jumbo v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 520
    :cond_ae
    if-ne v4, v0, :cond_e8

    .line 521
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    .line 523
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 524
    packed-switch v5, :pswitch_data_1d0

    .line 534
    :pswitch_bf
    const-string/jumbo v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 528
    :pswitch_c7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 529
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v5, v6, :cond_d6

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_d6
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_17

    .line 530
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_17

    .line 536
    :cond_e8
    const/4 v5, 0x6

    if-ne v4, v5, :cond_fc

    .line 537
    iget-boolean v5, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v5, :cond_f2

    .line 538
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 540
    :cond_f2
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_17

    .line 541
    :cond_fc
    if-ne v4, v3, :cond_117

    .line 542
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v5

    .line 543
    const/4 v6, -0x1

    if-ne v5, v6, :cond_10c

    .line 544
    const/16 v0, 0x11

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_31

    .line 546
    :cond_10c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 547
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_17

    .line 549
    :cond_117
    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :sswitch_124
    if-ne v4, v2, :cond_12a

    .line 557
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_31

    .line 563
    :cond_12a
    :sswitch_12a
    if-eq v4, v2, :cond_12e

    if-ne v4, v1, :cond_13c

    .line 564
    :cond_12e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 565
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 566
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v0, v3

    goto/16 :goto_31

    .line 568
    :cond_13c
    const-string/jumbo v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 571
    :sswitch_144
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 572
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_31

    .line 574
    :sswitch_14d
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ne v0, v2, :cond_154

    .line 575
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 577
    :cond_154
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_31

    .line 579
    :sswitch_15a
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_31

    .line 581
    :sswitch_15f
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    move v0, v2

    goto/16 :goto_31

    .line 595
    :cond_164
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v0

    .line 596
    if-nez v0, :cond_31

    .line 600
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-nez v0, :cond_17e

    .line 601
    const-string/jumbo v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 604
    :cond_17e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 605
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_31

    .line 554
    nop

    :sswitch_data_188
    .sparse-switch
        0x22 -> :sswitch_14d
        0x27 -> :sswitch_144
        0x2c -> :sswitch_12a
        0x3b -> :sswitch_12a
        0x5b -> :sswitch_15a
        0x5d -> :sswitch_124
        0x7b -> :sswitch_15f
    .end sparse-switch

    .line 472
    :sswitch_data_1a6
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_46
        0x5d -> :sswitch_43
    .end sparse-switch

    .line 487
    :sswitch_data_1b4
    .sparse-switch
        0x2c -> :sswitch_6f
        0x3b -> :sswitch_6c
        0x7d -> :sswitch_68
    .end sparse-switch

    .line 499
    :sswitch_data_1c2
    .sparse-switch
        0x22 -> :sswitch_8b
        0x27 -> :sswitch_90
        0x7d -> :sswitch_98
    .end sparse-switch

    .line 524
    :pswitch_data_1d0
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_bf
        :pswitch_bf
        :pswitch_c7
    .end packed-switch
.end method

.method private fillBuffer(I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1289
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1290
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1291
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eq v2, v3, :cond_5b

    .line 1292
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1293
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    :goto_1e
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1300
    :cond_20
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v1

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    .line 1301
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1304
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v2, :cond_55

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v2, :cond_55

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_55

    .line 1305
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1306
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1307
    add-int/lit8 p1, p1, 0x1

    .line 1310
    :cond_55
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v2, p1, :cond_20

    .line 1311
    const/4 v0, 0x1

    .line 1314
    :cond_5a
    return v0

    .line 1295
    :cond_5b
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1e
.end method

.method private getColumnNumber()I
    .registers 3

    .prologue
    .line 1322
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .registers 2

    .prologue
    .line 1318
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLiteral(C)Z
    .registers 3

    .prologue
    .line 756
    sparse-switch p1, :sswitch_data_a

    .line 776
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 762
    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 774
    :sswitch_8
    const/4 v0, 0x0

    goto :goto_4

    .line 756
    :sswitch_data_a
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_5
        0x2c -> :sswitch_8
        0x2f -> :sswitch_5
        0x3a -> :sswitch_8
        0x3b -> :sswitch_5
        0x3d -> :sswitch_5
        0x5b -> :sswitch_8
        0x5c -> :sswitch_5
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 7

    .prologue
    .line 1340
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1341
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1342
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1344
    :goto_6
    if-ne v1, v0, :cond_44

    .line 1345
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1413
    if-eqz p1, :cond_d1

    .line 1414
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End of input at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_40
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1350
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1353
    :cond_44
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1354
    const/16 v4, 0xa

    if-ne v1, v4, :cond_56

    .line 1355
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1356
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    move v1, v2

    .line 1357
    goto :goto_6

    .line 1358
    :cond_56
    const/16 v4, 0x20

    if-eq v1, v4, :cond_d3

    const/16 v4, 0xd

    if-eq v1, v4, :cond_d3

    const/16 v4, 0x9

    if-ne v1, v4, :cond_64

    move v1, v2

    .line 1359
    goto :goto_6

    .line 1362
    :cond_64
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_bb

    .line 1363
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1364
    if-ne v2, v0, :cond_81

    .line 1365
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1366
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    .line 1367
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1368
    if-nez v0, :cond_81

    move v0, v1

    .line 1417
    :goto_80
    return v0

    .line 1373
    :cond_81
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1374
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v3, v0

    .line 1375
    sparse-switch v0, :sswitch_data_d6

    move v0, v1

    .line 1395
    goto :goto_80

    .line 1378
    :sswitch_8d
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1379
    const-string/jumbo v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 1380
    const-string/jumbo v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1382
    :cond_a4
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, 0x2

    .line 1383
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_6

    .line 1388
    :sswitch_ac
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1389
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1390
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1391
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_6

    .line 1397
    :cond_bb
    const/16 v0, 0x23

    if-ne v1, v0, :cond_cd

    .line 1398
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1404
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1405
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1406
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1407
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_6

    .line 1409
    :cond_cd
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    move v0, v1

    .line 1410
    goto :goto_80

    .line 1417
    :cond_d1
    const/4 v0, -0x1

    goto :goto_80

    :cond_d3
    move v1, v2

    goto/16 :goto_6

    .line 1375
    :sswitch_data_d6
    .sparse-switch
        0x2a -> :sswitch_8d
        0x2f -> :sswitch_ac
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 9

    .prologue
    .line 1001
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1002
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    :cond_7
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1005
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v3, v0

    .line 1008
    :goto_c
    if-ge v3, v1, :cond_4a

    .line 1009
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    .line 1011
    if-ne v3, p1, :cond_22

    .line 1012
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1013
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1015
    :cond_22
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_3d

    .line 1016
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1017
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1018
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1019
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1020
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v2, v0

    :cond_3b
    :goto_3b
    move v3, v2

    .line 1026
    goto :goto_c

    .line 1022
    :cond_3d
    const/16 v6, 0xa

    if-ne v3, v6, :cond_3b

    .line 1023
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1024
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_3b

    .line 1028
    :cond_4a
    sub-int v1, v3, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1029
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1030
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1031
    const-string/jumbo v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1041
    const/4 v0, 0x0

    move v1, v2

    .line 1046
    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_2b

    .line 1047
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_64

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1053
    :sswitch_17
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1091
    :cond_1a
    :goto_1a
    :sswitch_1a
    if-nez v0, :cond_55

    .line 1092
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1097
    :goto_25
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1098
    return-object v0

    .line 1070
    :cond_2b
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_39

    .line 1071
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_3

    .line 1079
    :cond_39
    if-nez v0, :cond_40

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    :cond_40
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1083
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1085
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_61

    move v1, v2

    .line 1086
    goto :goto_1a

    .line 1094
    :cond_55
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_61
    move v1, v2

    goto :goto_3

    .line 1047
    nop

    :sswitch_data_64
    .sparse-switch
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0x20 -> :sswitch_1a
        0x23 -> :sswitch_17
        0x2c -> :sswitch_1a
        0x2f -> :sswitch_17
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_17
        0x3d -> :sswitch_17
        0x5b -> :sswitch_1a
        0x5c -> :sswitch_17
        0x5d -> :sswitch_1a
        0x7b -> :sswitch_1a
        0x7d -> :sswitch_1a
    .end sparse-switch
.end method

.method private peekKeyword()I
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 614
    const/16 v1, 0x74

    if-eq v0, v1, :cond_f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2e

    .line 615
    :cond_f
    const-string/jumbo v2, "true"

    .line 616
    const-string/jumbo v1, "TRUE"

    .line 617
    const/4 v0, 0x5

    .line 631
    :goto_16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 632
    const/4 v4, 0x1

    :goto_1b
    if-ge v4, v5, :cond_68

    .line 633
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_50

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_50

    move v0, v3

    .line 649
    :goto_2d
    return v0

    .line 618
    :cond_2e
    const/16 v1, 0x66

    if-eq v0, v1, :cond_36

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3e

    .line 619
    :cond_36
    const-string/jumbo v2, "false"

    .line 620
    const-string/jumbo v1, "FALSE"

    .line 621
    const/4 v0, 0x6

    goto :goto_16

    .line 622
    :cond_3e
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_46

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_4e

    .line 623
    :cond_46
    const-string/jumbo v2, "null"

    .line 624
    const-string/jumbo v1, "NULL"

    .line 625
    const/4 v0, 0x7

    goto :goto_16

    :cond_4e
    move v0, v3

    .line 627
    goto :goto_2d

    .line 636
    :cond_50
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    .line 637
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_65

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_65

    move v0, v3

    .line 638
    goto :goto_2d

    .line 632
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 642
    :cond_68
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_77

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_86

    :cond_77
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_86

    move v0, v3

    .line 644
    goto :goto_2d

    .line 648
    :cond_86
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 649
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_2d
.end method

.method private peekNumber()I
    .registers 16

    .prologue
    .line 654
    iget-object v11, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 655
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 656
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 658
    const-wide/16 v6, 0x0

    .line 659
    const/4 v5, 0x0

    .line 660
    const/4 v4, 0x1

    .line 661
    const/4 v3, 0x0

    .line 663
    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    .line 667
    :goto_f
    add-int v2, v1, v10

    if-ne v2, v0, :cond_3f

    .line 668
    array-length v0, v11

    if-ne v10, v0, :cond_18

    .line 671
    const/4 v0, 0x0

    .line 751
    :goto_17
    return v0

    .line 673
    :cond_18
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 742
    :cond_20
    const/4 v0, 0x2

    if-ne v3, v0, :cond_df

    if-eqz v4, :cond_df

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_2d

    if-eqz v5, :cond_df

    .line 743
    :cond_2d
    if-eqz v5, :cond_dc

    :goto_2f
    iput-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 744
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 745
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_17

    .line 676
    :cond_3b
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 677
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 680
    :cond_3f
    add-int v2, v1, v10

    aget-char v2, v11, v2

    .line 681
    sparse-switch v2, :sswitch_data_f8

    .line 716
    const/16 v8, 0x30

    if-lt v2, v8, :cond_4e

    const/16 v8, 0x39

    if-le v2, v8, :cond_8b

    .line 717
    :cond_4e
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 720
    const/4 v0, 0x0

    goto :goto_17

    .line 683
    :sswitch_56
    if-nez v3, :cond_64

    .line 684
    const/4 v3, 0x1

    .line 685
    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    .line 666
    :goto_5d
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_f

    .line 687
    :cond_64
    const/4 v2, 0x5

    if-ne v3, v2, :cond_6b

    .line 688
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 689
    goto :goto_5d

    .line 691
    :cond_6b
    const/4 v0, 0x0

    goto :goto_17

    .line 694
    :sswitch_6d
    const/4 v2, 0x5

    if-ne v3, v2, :cond_74

    .line 695
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 696
    goto :goto_5d

    .line 698
    :cond_74
    const/4 v0, 0x0

    goto :goto_17

    .line 702
    :sswitch_76
    const/4 v2, 0x2

    if-eq v3, v2, :cond_7c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_80

    .line 703
    :cond_7c
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    .line 704
    goto :goto_5d

    .line 706
    :cond_80
    const/4 v0, 0x0

    goto :goto_17

    .line 709
    :sswitch_82
    const/4 v2, 0x2

    if-ne v3, v2, :cond_89

    .line 710
    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    .line 711
    goto :goto_5d

    .line 713
    :cond_89
    const/4 v0, 0x0

    goto :goto_17

    .line 722
    :cond_8b
    const/4 v8, 0x1

    if-eq v3, v8, :cond_90

    if-nez v3, :cond_98

    .line 723
    :cond_90
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    .line 724
    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_5d

    .line 725
    :cond_98
    const/4 v8, 0x2

    if-ne v3, v8, :cond_cb

    .line 726
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_a4

    .line 727
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 729
    :cond_a4
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    .line 730
    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_c1

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_c9

    cmp-long v2, v8, v6

    if-gez v2, :cond_c9

    :cond_c1
    const/4 v2, 0x1

    :goto_c2
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    .line 733
    goto :goto_5d

    .line 730
    :cond_c9
    const/4 v2, 0x0

    goto :goto_c2

    .line 733
    :cond_cb
    const/4 v2, 0x3

    if-ne v3, v2, :cond_d2

    .line 734
    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_5d

    .line 735
    :cond_d2
    const/4 v2, 0x5

    if-eq v3, v2, :cond_d8

    const/4 v2, 0x6

    if-ne v3, v2, :cond_f3

    .line 736
    :cond_d8
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_5d

    .line 743
    :cond_dc
    neg-long v6, v6

    goto/16 :goto_2f

    .line 746
    :cond_df
    const/4 v0, 0x2

    if-eq v3, v0, :cond_e8

    const/4 v0, 0x4

    if-eq v3, v0, :cond_e8

    const/4 v0, 0x7

    if-ne v3, v0, :cond_f0

    .line 748
    :cond_e8
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 749
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto/16 :goto_17

    .line 751
    :cond_f0
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_f3
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_5d

    .line 681
    :sswitch_data_f8
    .sparse-switch
        0x2b -> :sswitch_6d
        0x2d -> :sswitch_56
        0x2e -> :sswitch_82
        0x45 -> :sswitch_76
        0x65 -> :sswitch_76
    .end sparse-switch
.end method

.method private push(I)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1269
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_35

    .line 1270
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1271
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1272
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1273
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1275
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1276
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1277
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1278
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1280
    :cond_35
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    .line 1281
    return-void
.end method

.method private readEscapeCharacter()C
    .registers 8

    .prologue
    const/4 v5, 0x4

    .line 1512
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1513
    const-string/jumbo v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1516
    :cond_16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1517
    sparse-switch v0, :sswitch_data_c2

    .line 1564
    :goto_23
    return v0

    .line 1519
    :sswitch_24
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v1, :cond_3a

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1520
    const-string/jumbo v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1523
    :cond_3a
    const/4 v1, 0x0

    .line 1524
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_42
    if-ge v1, v2, :cond_9b

    .line 1525
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v3, v3, v1

    .line 1526
    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    .line 1527
    const/16 v4, 0x30

    if-lt v3, v4, :cond_5a

    const/16 v4, 0x39

    if-gt v3, v4, :cond_5a

    .line 1528
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1524
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 1529
    :cond_5a
    const/16 v4, 0x61

    if-lt v3, v4, :cond_69

    const/16 v4, 0x66

    if-gt v3, v4, :cond_69

    .line 1530
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_57

    .line 1531
    :cond_69
    const/16 v4, 0x41

    if-lt v3, v4, :cond_78

    const/16 v4, 0x46

    if-gt v3, v4, :cond_78

    .line 1532
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_57

    .line 1534
    :cond_78
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1537
    :cond_9b
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_23

    .line 1541
    :sswitch_a2
    const/16 v0, 0x9

    goto/16 :goto_23

    .line 1544
    :sswitch_a6
    const/16 v0, 0x8

    goto/16 :goto_23

    .line 1547
    :sswitch_aa
    const/16 v0, 0xa

    goto/16 :goto_23

    .line 1550
    :sswitch_ae
    const/16 v0, 0xd

    goto/16 :goto_23

    .line 1553
    :sswitch_b2
    const/16 v0, 0xc

    goto/16 :goto_23

    .line 1556
    :sswitch_b6
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1557
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_23

    .line 1517
    :sswitch_data_c2
    .sparse-switch
        0xa -> :sswitch_b6
        0x62 -> :sswitch_a6
        0x66 -> :sswitch_b2
        0x6e -> :sswitch_aa
        0x72 -> :sswitch_ae
        0x74 -> :sswitch_a2
        0x75 -> :sswitch_24
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .registers 7

    .prologue
    .line 1103
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1105
    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1106
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v2, v1

    .line 1108
    :goto_7
    if-ge v2, v0, :cond_2e

    .line 1109
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    .line 1110
    if-ne v2, p1, :cond_12

    .line 1111
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1112
    return-void

    .line 1113
    :cond_12
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_21

    .line 1114
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1115
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1116
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1117
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_1f
    :goto_1f
    move v2, v1

    .line 1122
    goto :goto_7

    .line 1118
    :cond_21
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1f

    .line 1119
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1120
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1f

    .line 1123
    :cond_2e
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1125
    const-string/jumbo v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1450
    :goto_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v0, v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1451
    :cond_16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_33

    .line 1452
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1453
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1450
    :cond_2c
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1

    :cond_33
    move v0, v1

    .line 1456
    :goto_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 1457
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1461
    :cond_4a
    const/4 v1, 0x1

    .line 1463
    :cond_4b
    return v1
.end method

.method private skipToEndOfLine()V
    .registers 4

    .prologue
    .line 1433
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1434
    :cond_d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1435
    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    .line 1436
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1437
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1443
    :cond_25
    :goto_25
    return-void

    .line 1439
    :cond_26
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_25
.end method

.method private skipUnquotedValue()V
    .registers 4

    .prologue
    .line 1130
    :cond_0
    const/4 v0, 0x0

    .line 1131
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1e

    .line 1132
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_2c

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1138
    :sswitch_15
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1150
    :sswitch_18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1156
    :goto_1d
    return-void

    .line 1154
    :cond_1e
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1d

    .line 1132
    nop

    :sswitch_data_2c
    .sparse-switch
        0x9 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
        0xd -> :sswitch_18
        0x20 -> :sswitch_18
        0x23 -> :sswitch_15
        0x2c -> :sswitch_18
        0x2f -> :sswitch_15
        0x3a -> :sswitch_18
        0x3b -> :sswitch_15
        0x3d -> :sswitch_15
        0x5b -> :sswitch_18
        0x5c -> :sswitch_15
        0x5d -> :sswitch_18
        0x7b -> :sswitch_18
        0x7d -> :sswitch_18
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    .prologue
    .line 1573
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 342
    if-nez v0, :cond_9

    .line 343
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 345
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 347
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    .line 348
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 353
    return-void

    .line 350
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .registers 4

    .prologue
    .line 379
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 380
    if-nez v0, :cond_8

    .line 381
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 383
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 384
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 390
    return-void

    .line 387
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1221
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1222
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1223
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1224
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1225
    return-void
.end method

.method public endArray()V
    .registers 4

    .prologue
    .line 360
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 361
    if-nez v0, :cond_8

    .line 362
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 364
    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 365
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 366
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 372
    return-void

    .line 369
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .registers 4

    .prologue
    .line 397
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 398
    if-nez v0, :cond_8

    .line 399
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 401
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 402
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 403
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 404
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 410
    return-void

    .line 407
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1477
    const/4 v0, 0x0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    :goto_e
    if-ge v0, v2, :cond_41

    .line 1478
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_46

    .line 1477
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1481
    :pswitch_1a
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1487
    :pswitch_2e
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1488
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_17

    .line 1489
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1499
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1478
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 416
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 417
    if-nez v0, :cond_8

    .line 418
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 420
    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final isLenient()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 853
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 854
    if-nez v1, :cond_9

    .line 855
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 857
    :cond_9
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 858
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 859
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 860
    const/4 v0, 0x1

    .line 864
    :goto_1b
    return v0

    .line 861
    :cond_1c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2e

    .line 862
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 863
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1b

    .line 866
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .registers 7

    .prologue
    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 901
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 902
    if-nez v0, :cond_d

    .line 903
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 906
    :cond_d
    const/16 v1, 0xf

    if-ne v0, v1, :cond_23

    .line 907
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 908
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 909
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    .line 933
    :goto_22
    return-wide v0

    .line 912
    :cond_23
    const/16 v1, 0x10

    if-ne v0, v1, :cond_9a

    .line 913
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 914
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 924
    :cond_3b
    :goto_3b
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 925
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 926
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_106

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 927
    :cond_53
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    :cond_9a
    if-eq v0, v2, :cond_a0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_ae

    .line 916
    :cond_a0
    if-ne v0, v2, :cond_ab

    const/16 v0, 0x27

    :goto_a4
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3b

    :cond_ab
    const/16 v0, 0x22

    goto :goto_a4

    .line 917
    :cond_ae
    const/16 v1, 0xa

    if-ne v0, v1, :cond_b9

    .line 918
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3b

    .line 919
    :cond_b9
    if-eq v0, v5, :cond_3b

    .line 920
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 931
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 932
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_22
.end method

.method public nextInt()I
    .registers 8

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 1169
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1170
    if-nez v0, :cond_b

    .line 1171
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1175
    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_71

    .line 1176
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v0, v0

    .line 1177
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_62

    .line 1178
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_62
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1182
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1214
    :goto_70
    return v0

    .line 1186
    :cond_71
    const/16 v1, 0x10

    if-ne v0, v1, :cond_e2

    .line 1187
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1188
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1204
    :goto_89
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1205
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1206
    double-to-int v0, v2

    .line 1207
    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_15a

    .line 1208
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_e2
    if-eq v0, v2, :cond_e8

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10f

    .line 1190
    :cond_e8
    if-ne v0, v2, :cond_10c

    const/16 v0, 0x27

    :goto_ec
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1192
    :try_start_f2
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1193
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1194
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_107} :catch_109

    goto/16 :goto_70

    .line 1196
    :catch_109
    move-exception v0

    goto/16 :goto_89

    .line 1190
    :cond_10c
    const/16 v0, 0x22

    goto :goto_ec

    .line 1200
    :cond_10f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_15a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1212
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1213
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_70
.end method

.method public nextLong()J
    .registers 8

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 947
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 948
    if-nez v0, :cond_b

    .line 949
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 952
    :cond_b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_20

    .line 953
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 954
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 955
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 986
    :goto_1f
    return-wide v0

    .line 958
    :cond_20
    const/16 v1, 0x10

    if-ne v0, v1, :cond_91

    .line 959
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 960
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 976
    :goto_38
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 977
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 978
    double-to-long v0, v2

    .line 979
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_109

    .line 980
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_91
    if-eq v0, v2, :cond_97

    const/16 v1, 0x9

    if-ne v0, v1, :cond_be

    .line 962
    :cond_97
    if-ne v0, v2, :cond_bb

    const/16 v0, 0x27

    :goto_9b
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 964
    :try_start_a1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 965
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 966
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_b6} :catch_b8

    goto/16 :goto_1f

    .line 968
    :catch_b8
    move-exception v0

    goto/16 :goto_38

    .line 962
    :cond_bb
    const/16 v0, 0x22

    goto :goto_9b

    .line 972
    :cond_be
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 984
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 985
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_1f
.end method

.method public nextName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 788
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 789
    if-nez v0, :cond_8

    .line 790
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 793
    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1c

    .line 794
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 804
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 805
    return-object v0

    .line 795
    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    .line 796
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 797
    :cond_27
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    .line 798
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 800
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .registers 4

    .prologue
    .line 878
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 879
    if-nez v0, :cond_8

    .line 880
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 882
    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    .line 883
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 884
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 889
    return-void

    .line 886
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 817
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 818
    if-nez v0, :cond_8

    .line 819
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 822
    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    .line 823
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    .line 840
    :goto_10
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 841
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 842
    return-object v0

    .line 824
    :cond_20
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b

    .line 825
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 826
    :cond_2b
    const/16 v1, 0x9

    if-ne v0, v1, :cond_36

    .line 827
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 828
    :cond_36
    const/16 v1, 0xb

    if-ne v0, v1, :cond_40

    .line 829
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 830
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_10

    .line 831
    :cond_40
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4b

    .line 832
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 833
    :cond_4b
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    .line 834
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 835
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_10

    .line 837
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 428
    if-nez v0, :cond_8

    .line 429
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 432
    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 461
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 434
    :pswitch_11
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 459
    :goto_13
    return-object v0

    .line 436
    :pswitch_14
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 438
    :pswitch_17
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 440
    :pswitch_1a
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 444
    :pswitch_1d
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 447
    :pswitch_20
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 449
    :pswitch_23
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 454
    :pswitch_26
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 457
    :pswitch_29
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 459
    :pswitch_2c
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    goto :goto_13

    .line 432
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_29
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 327
    return-void
.end method

.method public skipValue()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1233
    move v0, v1

    .line 1235
    :cond_4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1236
    if-nez v2, :cond_c

    .line 1237
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    .line 1240
    :cond_c
    if-ne v2, v5, :cond_2f

    .line 1241
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1242
    add-int/lit8 v0, v0, 0x1

    .line 1261
    :cond_13
    :goto_13
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1262
    if-nez v0, :cond_4

    .line 1264
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1265
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    .line 1266
    return-void

    .line 1243
    :cond_2f
    if-ne v2, v4, :cond_37

    .line 1244
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1246
    :cond_37
    const/4 v3, 0x4

    if-ne v2, v3, :cond_43

    .line 1247
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1248
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1249
    :cond_43
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4f

    .line 1250
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1251
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1252
    :cond_4f
    const/16 v3, 0xe

    if-eq v2, v3, :cond_57

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5b

    .line 1253
    :cond_57
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_13

    .line 1254
    :cond_5b
    const/16 v3, 0x8

    if-eq v2, v3, :cond_63

    const/16 v3, 0xc

    if-ne v2, v3, :cond_69

    .line 1255
    :cond_63
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_13

    .line 1256
    :cond_69
    const/16 v3, 0x9

    if-eq v2, v3, :cond_71

    const/16 v3, 0xd

    if-ne v2, v3, :cond_77

    .line 1257
    :cond_71
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_13

    .line 1258
    :cond_77
    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    .line 1259
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
