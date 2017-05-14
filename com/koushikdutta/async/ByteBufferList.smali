.class public Lcom/koushikdutta/async/ByteBufferList;
.super Ljava/lang/Object;
.source "ByteBufferList.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field static c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static d:I

.field static e:I

.field static f:I

.field public static final g:Ljava/nio/ByteBuffer;

.field static final synthetic h:Z

.field private static j:I

.field private static final k:Ljava/lang/Object;


# instance fields
.field a:Lcom/koushikdutta/async/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/ArrayDeque",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/nio/ByteOrder;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/koushikdutta/async/ByteBufferList;->h:Z

    .line 412
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v2, 0x8

    new-instance v3, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;

    invoke-direct {v3}, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;-><init>()V

    invoke-direct {v0, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->c:Ljava/util/PriorityQueue;

    .line 420
    const/high16 v0, 0x100000

    sput v0, Lcom/koushikdutta/async/ByteBufferList;->j:I

    .line 421
    const/high16 v0, 0x40000

    sput v0, Lcom/koushikdutta/async/ByteBufferList;->d:I

    .line 422
    sput v1, Lcom/koushikdutta/async/ByteBufferList;->e:I

    .line 423
    sput v1, Lcom/koushikdutta/async/ByteBufferList;->f:I

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->k:Ljava/lang/Object;

    .line 536
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->g:Ljava/nio/ByteBuffer;

    return-void

    :cond_34
    move v0, v1

    .line 17
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 32
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 42
    return-void
.end method

.method public varargs constructor <init>([Ljava/nio/ByteBuffer;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 35
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->a([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 36
    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .registers 5

    .prologue
    .line 542
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 543
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 544
    const/4 v1, 0x0

    .line 545
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 546
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 553
    :goto_14
    invoke-virtual {p0, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 554
    return-void

    .line 549
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 550
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    .line 551
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_14
.end method

.method public static c(I)Ljava/nio/ByteBuffer;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 483
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->f:I

    if-gt p0, v0, :cond_56

    .line 484
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->r()Ljava/util/PriorityQueue;

    move-result-object v5

    .line 485
    if-eqz v5, :cond_56

    .line 486
    sget-object v6, Lcom/koushikdutta/async/ByteBufferList;->k:Ljava/lang/Object;

    monitor-enter v6

    .line 487
    :cond_f
    :try_start_f
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 488
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_24

    .line 490
    const/4 v1, 0x0

    sput v1, Lcom/koushikdutta/async/ByteBufferList;->f:I

    .line 491
    :cond_24
    sget v1, Lcom/koushikdutta/async/ByteBufferList;->e:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v1, v4

    sput v1, Lcom/koushikdutta/async/ByteBufferList;->e:I

    .line 492
    sget-boolean v1, Lcom/koushikdutta/async/ByteBufferList;->h:Z

    if-nez v1, :cond_4d

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-eqz v1, :cond_49

    move v4, v2

    :goto_38
    sget v1, Lcom/koushikdutta/async/ByteBufferList;->e:I

    if-nez v1, :cond_4b

    move v1, v2

    :goto_3d
    xor-int/2addr v1, v4

    if-nez v1, :cond_4d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 499
    :catchall_46
    move-exception v0

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_f .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    move v4, v3

    .line 492
    goto :goto_38

    :cond_4b
    move v1, v3

    goto :goto_3d

    .line 493
    :cond_4d
    :try_start_4d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v1, p0, :cond_f

    .line 495
    monitor-exit v6

    .line 505
    :goto_54
    return-object v0

    .line 499
    :cond_55
    monitor-exit v6
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_46

    .line 504
    :cond_56
    const/16 v0, 0x2000

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_54
.end method

.method public static c(Ljava/nio/ByteBuffer;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 478
    :cond_a
    :goto_a
    return-void

    .line 444
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_a

    .line 446
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v3, 0x2000

    if-lt v0, v3, :cond_a

    .line 448
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v3, Lcom/koushikdutta/async/ByteBufferList;->d:I

    if-gt v0, v3, :cond_a

    .line 451
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->r()Ljava/util/PriorityQueue;

    move-result-object v3

    .line 452
    if-eqz v3, :cond_a

    .line 455
    sget-object v4, Lcom/koushikdutta/async/ByteBufferList;->k:Ljava/lang/Object;

    monitor-enter v4

    .line 456
    :goto_35
    :try_start_35
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->e:I

    sget v5, Lcom/koushikdutta/async/ByteBufferList;->j:I

    if-le v0, v5, :cond_65

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_65

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v0, v5, :cond_65

    .line 458
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 459
    sget v5, Lcom/koushikdutta/async/ByteBufferList;->e:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int v0, v5, v0

    sput v0, Lcom/koushikdutta/async/ByteBufferList;->e:I

    goto :goto_35

    .line 477
    :catchall_62
    move-exception v0

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_35 .. :try_end_64} :catchall_62

    throw v0

    .line 462
    :cond_65
    :try_start_65
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->e:I

    sget v5, Lcom/koushikdutta/async/ByteBufferList;->j:I

    if-le v0, v5, :cond_6d

    .line 464
    monitor-exit v4

    goto :goto_a

    .line 467
    :cond_6d
    sget-boolean v0, Lcom/koushikdutta/async/ByteBufferList;->h:Z

    if-nez v0, :cond_7d

    invoke-static {p0}, Lcom/koushikdutta/async/ByteBufferList;->d(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_7d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 469
    :cond_7d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 470
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 471
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->e:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v0, v5

    sput v0, Lcom/koushikdutta/async/ByteBufferList;->e:I

    .line 473
    invoke-virtual {v3, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 474
    sget-boolean v0, Lcom/koushikdutta/async/ByteBufferList;->h:Z

    if-nez v0, :cond_b1

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-eqz v0, :cond_ad

    move v3, v1

    :goto_9f
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->e:I

    if-nez v0, :cond_af

    move v0, v1

    :goto_a4
    xor-int/2addr v0, v3

    if-nez v0, :cond_b1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_ad
    move v3, v2

    goto :goto_9f

    :cond_af
    move v0, v2

    goto :goto_a4

    .line 476
    :cond_b1
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->f:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/koushikdutta/async/ByteBufferList;->f:I

    .line 477
    monitor-exit v4
    :try_end_be
    .catchall {:try_start_65 .. :try_end_be} :catchall_62

    goto/16 :goto_a
.end method

.method private d(I)Ljava/nio/ByteBuffer;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-ge v0, p1, :cond_30

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_30
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 238
    :goto_38
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_54

    .line 239
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 240
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_38

    .line 243
    :cond_54
    if-nez v0, :cond_59

    .line 244
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->g:Ljava/nio/ByteBuffer;

    .line 271
    :goto_58
    return-object v0

    .line 247
    :cond_59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p1, :cond_66

    .line 248
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_58

    .line 251
    :cond_66
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 252
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 253
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 254
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    .line 256
    :cond_74
    :goto_74
    if-ge v2, p1, :cond_97

    .line 257
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 258
    sub-int v5, p1, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 259
    invoke-virtual {v0, v4, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 260
    add-int/2addr v2, v5

    .line 261
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_74

    .line 262
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    .line 263
    goto :goto_74

    .line 268
    :cond_97
    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_a4

    .line 269
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ArrayDeque;->a(Ljava/lang/Object;)V

    .line 270
    :cond_a4
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/ArrayDeque;->a(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_58
.end method

.method private static d(Ljava/nio/ByteBuffer;)Z
    .registers 3

    .prologue
    .line 434
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 435
    if-ne v0, p0, :cond_6

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private e(I)V
    .registers 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-ltz v0, :cond_b

    .line 336
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 337
    :cond_b
    return-void
.end method

.method private static r()Ljava/util/PriorityQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 416
    const/4 v0, 0x0

    .line 417
    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->c:Ljava/util/PriorityQueue;

    goto :goto_f
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    .registers 5

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_a

    .line 287
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 309
    :goto_9
    return-object p0

    .line 290
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->e(I)V

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_55

    .line 296
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 297
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 299
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 301
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 302
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 303
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->l()V

    goto :goto_9

    .line 307
    :cond_55
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->l()V

    goto :goto_9
.end method

.method public a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    .line 28
    return-object p0
.end method

.method public varargs a([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    .registers 5

    .prologue
    .line 45
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_c

    aget-object v2, p1, v0

    .line 46
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 47
    :cond_c
    return-object p0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 367
    if-nez p1, :cond_4

    .line 368
    sget-object p1, Lcom/koushikdutta/async/util/Charsets;->a:Ljava/nio/charset/Charset;

    .line 369
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 374
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 375
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v3, v1, [B

    .line 376
    const/4 v2, 0x0

    .line 377
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 378
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v0, v1

    move v1, v2

    move-object v2, v3

    .line 385
    :goto_32
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1, v0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 381
    :cond_3b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 382
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    .line 383
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_32

    .line 387
    :cond_4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 218
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-ge v0, p2, :cond_10

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move v1, v2

    .line 184
    :goto_11
    if-ge v1, p2, :cond_68

    .line 185
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 188
    if-nez v3, :cond_25

    .line 189
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_11

    .line 193
    :cond_25
    add-int v4, v1, v3

    if-le v4, p2, :cond_61

    .line 194
    sub-int v1, p2, v1

    .line 196
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 197
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 198
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 200
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ArrayDeque;->a(Ljava/lang/Object;)V

    .line 201
    sget-boolean v0, Lcom/koushikdutta/async/ByteBufferList;->h:Z

    if-nez v0, :cond_51

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_51

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_51
    sget-boolean v0, Lcom/koushikdutta/async/ByteBufferList;->h:Z

    if-nez v0, :cond_68

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_68

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_61
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 210
    add-int v0, v1, v3

    move v1, v0

    .line 211
    goto :goto_11

    .line 213
    :cond_68
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 214
    return-void
.end method

.method public a([B)V
    .registers 4

    .prologue
    .line 154
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->a([BII)V

    .line 155
    return-void
.end method

.method public a([BII)V
    .registers 8

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-ge v0, p3, :cond_f

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move v1, p3

    .line 162
    :goto_10
    if-lez v1, :cond_49

    .line 163
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 165
    if-eqz p1, :cond_27

    .line 166
    invoke-virtual {v0, p1, p2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 167
    :cond_27
    sub-int v2, v1, v3

    .line 168
    add-int/2addr p2, v3

    .line 169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_47

    .line 170
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 171
    sget-boolean v3, Lcom/koushikdutta/async/ByteBufferList;->h:Z

    if-nez v3, :cond_44

    if-eq v0, v1, :cond_44

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_44
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    :cond_47
    move v1, v2

    .line 174
    goto :goto_10

    .line 176
    :cond_49
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 177
    return-void
.end method

.method public a()[B
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v2

    if-ne v1, v2, :cond_31

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 76
    :goto_30
    return-object v0

    .line 73
    :cond_31
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    new-array v0, v0, [B

    .line 74
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->a([B)V

    goto :goto_30
.end method

.method public a(I)[B
    .registers 3

    .prologue
    .line 57
    new-array v0, p1, [B

    .line 58
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->a([B)V

    .line 59
    return-object v0
.end method

.method public b(I)Lcom/koushikdutta/async/ByteBufferList;
    .registers 4

    .prologue
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/koushikdutta/async/ByteBufferList;->a([BII)V

    .line 120
    return-object p0
.end method

.method public b(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 281
    return-object p0
.end method

.method public b(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 397
    return-object v0
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .registers 5

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_a

    .line 314
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 332
    :goto_9
    return-void

    .line 317
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->e(I)V

    .line 320
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 321
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 322
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_44

    .line 323
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 325
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 327
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_9

    .line 331
    :cond_44
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ArrayDeque;->a(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public b()[Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 81
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->clear()V

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 84
    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f()I
    .registers 3

    .prologue
    .line 124
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 125
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 126
    return v0
.end method

.method public g()C
    .registers 3

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    .line 131
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 132
    return v0
.end method

.method public h()S
    .registers 3

    .prologue
    .line 136
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 137
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 138
    return v0
.end method

.method public i()B
    .registers 3

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 143
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 144
    return v0
.end method

.method public j()J
    .registers 4

    .prologue
    .line 148
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 149
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 150
    return-wide v0
.end method

.method public k()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-nez v0, :cond_9

    .line 228
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->g:Ljava/nio/ByteBuffer;

    .line 230
    :goto_8
    return-object v0

    .line 229
    :cond_9
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->d(I)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_8
.end method

.method public l()V
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->d(I)Ljava/nio/ByteBuffer;

    .line 277
    return-void
.end method

.method public m()V
    .registers 2

    .prologue
    .line 340
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 341
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 343
    :cond_14
    sget-boolean v0, Lcom/koushikdutta/async/ByteBufferList;->h:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 344
    :cond_26
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 345
    return-void
.end method

.method public n()Ljava/nio/ByteBuffer;
    .registers 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 349
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->i:I

    .line 350
    return-object v0
.end method

.method public o()I
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
