.class public Lcz/msebera/android/httpclient/message/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/LineParser;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/message/BasicLineParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcz/msebera/android/httpclient/message/BasicLineParser;


# instance fields
.field protected final c:Lcz/msebera/android/httpclient/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicLineParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicLineParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicLineParser;->a:Lcz/msebera/android/httpclient/message/BasicLineParser;

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicLineParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicLineParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicLineParser;->b:Lcz/msebera/android/httpclient/message/BasicLineParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/message/BasicLineParser;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_8

    :goto_5
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicLineParser;->c:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 91
    return-void

    .line 90
    :cond_8
    sget-object p1, Lcz/msebera/android/httpclient/HttpVersion;->c:Lcz/msebera/android/httpclient/HttpVersion;

    goto :goto_5
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/Header;
    .registers 3

    .prologue
    .line 439
    new-instance v0, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v0
.end method

.method protected a(II)Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicLineParser;->c:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/ProtocolVersion;->a(II)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 14

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicLineParser;->c:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->a()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 123
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v7

    .line 124
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->a()I

    move-result v3

    .line 126
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->d(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 128
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v8

    .line 131
    add-int v0, v8, v6

    add-int/lit8 v0, v0, 0x4

    if-le v0, v3, :cond_4c

    .line 132
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a valid protocol version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-virtual {p1, v7, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    move v4, v2

    move v0, v1

    .line 139
    :goto_4e
    if-eqz v0, :cond_64

    if-ge v4, v6, :cond_64

    .line 140
    add-int v0, v8, v4

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v0, v9, :cond_62

    move v0, v1

    .line 139
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_62
    move v0, v2

    .line 140
    goto :goto_5f

    .line 142
    :cond_64
    if-eqz v0, :cond_11c

    .line 143
    add-int v0, v8, v6

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_90

    .line 145
    :goto_70
    if-nez v1, :cond_92

    .line 146
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a valid protocol version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {p1, v7, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    move v1, v2

    .line 143
    goto :goto_70

    .line 151
    :cond_92
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v0, v8

    .line 153
    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(III)I

    move-result v1

    .line 154
    if-ne v1, v10, :cond_bb

    .line 155
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid protocol version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    invoke-virtual {p1, v7, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_bb
    :try_start_bb
    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/NumberFormatException; {:try_start_bb .. :try_end_c2} :catch_de

    move-result v2

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 169
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(III)I

    move-result v0

    .line 170
    if-ne v0, v10, :cond_ce

    move v0, v3

    .line 175
    :cond_ce
    :try_start_ce
    invoke-virtual {p1, v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_d5} :catch_fd

    move-result v1

    .line 182
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 184
    invoke-virtual {p0, v2, v1}, Lcz/msebera/android/httpclient/message/BasicLineParser;->a(II)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    return-object v0

    .line 162
    :catch_de
    move-exception v0

    .line 163
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid protocol major version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {p1, v7, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catch_fd
    move-exception v0

    .line 177
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid protocol minor version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {p1, v7, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11c
    move v1, v0

    goto/16 :goto_70
.end method

.method protected a(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)Lcz/msebera/android/httpclient/StatusLine;
    .registers 5

    .prologue
    .line 417
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    return-object v0
.end method

.method public b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v0

    .line 211
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicLineParser;->c:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->a()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 214
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v1

    add-int/lit8 v4, v6, 0x4

    if-ge v1, v4, :cond_25

    .line 246
    :cond_24
    :goto_24
    return v3

    .line 219
    :cond_25
    if-gez v0, :cond_4e

    .line 222
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    sub-int/2addr v0, v6

    .line 232
    :cond_2e
    add-int v1, v0, v6

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v4

    if-gt v1, v4, :cond_24

    move v4, v3

    move v1, v2

    .line 239
    :goto_3a
    if-eqz v1, :cond_65

    if-ge v4, v6, :cond_65

    .line 240
    add-int v1, v0, v4

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v1, v7, :cond_63

    move v1, v2

    .line 239
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 223
    :cond_4e
    if-nez v0, :cond_2e

    .line 225
    :goto_50
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 226
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_63
    move v1, v3

    .line 240
    goto :goto_4b

    .line 242
    :cond_65
    if-eqz v1, :cond_74

    .line 243
    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_72

    :goto_70
    move v3, v2

    .line 246
    goto :goto_24

    :cond_72
    move v2, v3

    .line 243
    goto :goto_70

    :cond_74
    move v2, v1

    goto :goto_70
.end method

.method public c(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;
    .registers 10

    .prologue
    .line 354
    const-string/jumbo v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    const-string/jumbo v0, "Parser cursor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v3

    .line 357
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->a()I

    move-result v2

    .line 361
    :try_start_14
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v4

    .line 364
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineParser;->d(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    .line 365
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v5

    .line 367
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v5, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(III)I

    move-result v0

    .line 368
    if-gez v0, :cond_af

    move v1, v2

    .line 372
    :goto_28
    invoke-virtual {p1, v5, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v5

    .line 373
    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7d

    .line 374
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 375
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Status line contains invalid status code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    invoke-virtual {p1, v3, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_5b} :catch_5b

    .line 397
    :catch_5b
    move-exception v0

    .line 398
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid status line: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-virtual {p1, v3, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 381
    :cond_7d
    :try_start_7d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_80} :catch_8c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7d .. :try_end_80} :catch_5b

    move-result v5

    .line 390
    if-ge v1, v2, :cond_ab

    .line 391
    :try_start_83
    invoke-virtual {p1, v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_87
    invoke-virtual {p0, v4, v5, v0}, Lcz/msebera/android/httpclient/message/BasicLineParser;->a(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    return-object v0

    .line 382
    :catch_8c
    move-exception v0

    .line 383
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Status line contains invalid status code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    invoke-virtual {p1, v3, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_ab
    const-string/jumbo v0, ""
    :try_end_ae
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_83 .. :try_end_ae} :catch_5b

    goto :goto_87

    :cond_af
    move v1, v0

    goto/16 :goto_28
.end method

.method protected d(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V
    .registers 6

    .prologue
    .line 447
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->b()I

    move-result v0

    .line 448
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->a()I

    move-result v1

    .line 449
    :goto_8
    if-ge v0, v1, :cond_17

    .line 450
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(I)C

    move-result v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/protocol/HTTP;->a(C)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 453
    :cond_17
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->a(I)V

    .line 454
    return-void
.end method
