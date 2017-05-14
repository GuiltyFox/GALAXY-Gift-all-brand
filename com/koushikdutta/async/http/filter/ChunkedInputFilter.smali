.class public Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ChunkedInputFilter.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field d:Lcom/koushikdutta/async/ByteBufferList;

.field private f:I

.field private g:I

.field private h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->e:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 9
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    .line 10
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->g:I

    .line 11
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->a:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 46
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->d:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method private a(C)Z
    .registers 3

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(CC)Z

    move-result v0

    return v0
.end method

.method private a(CC)Z
    .registers 6

    .prologue
    .line 24
    if-eq p1, p2, :cond_24

    .line 25
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was expected, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b(Ljava/lang/Exception;)V

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method private b(C)Z
    .registers 3

    .prologue
    .line 36
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(CC)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 7

    .prologue
    .line 50
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-lez v0, :cond_29

    .line 51
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$1;->a:[I

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f0

    goto :goto_0

    .line 53
    :pswitch_14
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->g()C

    move-result v0

    .line 54
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2a

    .line 55
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->b:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 70
    :goto_20
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->g:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_0

    .line 115
    :catch_25
    move-exception v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b(Ljava/lang/Exception;)V

    .line 118
    :cond_29
    :goto_29
    return-void

    .line 58
    :cond_2a
    :try_start_2a
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    .line 59
    const/16 v1, 0x61

    if-lt v0, v1, :cond_42

    const/16 v1, 0x66

    if-gt v0, v1, :cond_42

    .line 60
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    goto :goto_20

    .line 61
    :cond_42
    const/16 v1, 0x30

    if-lt v0, v1, :cond_52

    const/16 v1, 0x39

    if-gt v0, v1, :cond_52

    .line 62
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    goto :goto_20

    .line 63
    :cond_52
    const/16 v1, 0x41

    if-lt v0, v1, :cond_64

    const/16 v1, 0x46

    if-gt v0, v1, :cond_64

    .line 64
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    goto :goto_20

    .line 66
    :cond_64
    new-instance v1, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid chunk length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b(Ljava/lang/Exception;)V

    goto :goto_29

    .line 73
    :pswitch_81
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->g()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(C)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 75
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->d:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto/16 :goto_0

    .line 78
    :pswitch_91
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    .line 79
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->g:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->g:I

    .line 81
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->g:I

    if-nez v1, :cond_a8

    .line 82
    sget-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->e:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 84
    :cond_a8
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->d:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->d:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto/16 :goto_0

    .line 90
    :pswitch_b6
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->g()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b(C)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 92
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->f:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto/16 :goto_0

    .line 95
    :pswitch_c6
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->g()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(C)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 97
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    if-lez v0, :cond_dd

    .line 98
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->a:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 105
    :goto_d8
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->f:I

    goto/16 :goto_0

    .line 102
    :cond_dd
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->g:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->b(Ljava/lang/Exception;)V

    goto :goto_d8

    .line 108
    :pswitch_e6
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->e:Z

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_f0} :catch_25

    .line 51
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_81
        :pswitch_91
        :pswitch_b6
        :pswitch_c6
        :pswitch_e6
    .end packed-switch
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 41
    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    sget-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->g:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    if-eq v0, v1, :cond_10

    .line 42
    new-instance p1, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    const-string/jumbo v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    .line 43
    :cond_10
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->b(Ljava/lang/Exception;)V

    .line 44
    return-void
.end method
