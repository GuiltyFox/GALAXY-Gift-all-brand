.class public abstract Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcz/msebera/android/httpclient/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field protected final b:Lcz/msebera/android/httpclient/message/LineParser;

.field private final c:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/util/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcz/msebera/android/httpclient/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 91
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpParamConfig;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->c:Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 92
    if-eqz p2, :cond_26

    :goto_19
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->b:Lcz/msebera/android/httpclient/message/LineParser;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->d:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->e:I

    .line 95
    return-void

    .line 92
    :cond_26
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicLineParser;->b:Lcz/msebera/android/httpclient/message/BasicLineParser;

    goto :goto_19
.end method

.method public static a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;)[Lcz/msebera/android/httpclient/Header;
    .registers 5

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    if-eqz p3, :cond_c

    :goto_7
    invoke-static {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;Ljava/util/List;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0

    :cond_c
    sget-object p3, Lcz/msebera/android/httpclient/message/BasicLineParser;->b:Lcz/msebera/android/httpclient/message/BasicLineParser;

    goto :goto_7
.end method

.method public static a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;Ljava/util/List;)[Lcz/msebera/android/httpclient/Header;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            "II",
            "Lcz/msebera/android/httpclient/message/LineParser;",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/util/CharArrayBuffer;",
            ">;)[",
            "Lcz/msebera/android/httpclient/Header;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x9

    const/4 v4, 0x0

    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 180
    const-string/jumbo v0, "Session input buffer"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v0, "Line parser"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v0, "Header line list"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v4

    move-object v0, v4

    .line 187
    :goto_1a
    if-nez v0, :cond_4c

    .line 188
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 192
    :goto_23
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v1

    .line 193
    const/4 v5, -0x1

    if-eq v1, v5, :cond_31

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v1

    const/4 v5, 0x1

    if-ge v1, v5, :cond_50

    .line 226
    :cond_31
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcz/msebera/android/httpclient/Header;

    .line 227
    :goto_37
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_bb

    .line 228
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 230
    :try_start_43
    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/message/LineParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_49
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_43 .. :try_end_49} :catch_b0

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 190
    :cond_4c
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a()V

    goto :goto_23

    .line 200
    :cond_50
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v1

    if-eq v1, v7, :cond_5c

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v1

    if-ne v1, v8, :cond_a7

    :cond_5c
    if-eqz v3, :cond_a7

    move v1, v2

    .line 204
    :goto_5f
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v5

    if-ge v1, v5, :cond_6d

    .line 205
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v5

    .line 206
    if-eq v5, v7, :cond_86

    if-eq v5, v8, :cond_86

    .line 211
    :cond_6d
    if-lez p2, :cond_89

    .line 212
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    if-le v5, p2, :cond_89

    .line 213
    new-instance v0, Lcz/msebera/android/httpclient/MessageConstraintException;

    const-string/jumbo v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_86
    add-int/lit8 v1, v1, 0x1

    .line 210
    goto :goto_5f

    .line 215
    :cond_89
    invoke-virtual {v3, v7}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 216
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    move-object v1, v0

    move-object v0, v3

    .line 222
    :goto_96
    if-lez p1, :cond_ac

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, p1, :cond_ac

    .line 223
    new-instance v0, Lcz/msebera/android/httpclient/MessageConstraintException;

    const-string/jumbo v1, "Maximum header count exceeded"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_a7
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    .line 220
    goto :goto_96

    :cond_ac
    move-object v3, v0

    move-object v0, v1

    .line 225
    goto/16 :goto_1a

    .line 231
    :catch_b0
    move-exception v0

    .line 232
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_bb
    return-object v1
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/HttpMessage;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->e:I

    .line 257
    packed-switch v0, :pswitch_data_4e

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Inconsistent parser state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_e
    :try_start_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->b(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->f:Lcz/msebera/android/httpclient/HttpMessage;
    :try_end_16
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_e .. :try_end_16} :catch_42

    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->e:I

    .line 267
    :pswitch_19
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->c:Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 269
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/MessageConstraints;->b()I

    move-result v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->c:Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 270
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/config/MessageConstraints;->a()I

    move-result v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->b:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->d:Ljava/util/List;

    .line 267
    invoke-static {v0, v1, v2, v3, v4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;Ljava/util/List;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->f:Lcz/msebera/android/httpclient/HttpMessage;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 274
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->f:Lcz/msebera/android/httpclient/HttpMessage;

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->f:Lcz/msebera/android/httpclient/HttpMessage;

    .line 276
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 277
    const/4 v1, 0x0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->e:I

    .line 278
    return-object v0

    .line 261
    :catch_42
    move-exception v0

    .line 262
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 257
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_19
    .end packed-switch
.end method

.method protected abstract b(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            ")TT;"
        }
    .end annotation
.end method
