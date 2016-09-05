.class public Lcz/msebera/android/httpclient/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/LineFormatter;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/message/BasicLineFormatter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcz/msebera/android/httpclient/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    .line 65
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->b:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/ProtocolVersion;)I
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 3

    .prologue
    .line 80
    .line 81
    if-eqz p1, :cond_6

    .line 82
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a()V

    .line 86
    :goto_5
    return-object p1

    .line 84
    :cond_6
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    goto :goto_5
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 4

    .prologue
    .line 277
    const-string/jumbo v0, "Header"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    instance-of v0, p2, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_11

    .line 282
    check-cast p2, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/FormattedHeader;->a()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    .line 287
    :goto_10
    return-object v0

    .line 284
    :cond_11
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)V

    goto :goto_10
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 4

    .prologue
    .line 111
    const-string/jumbo v0, "Protocol version"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    .line 115
    if-nez p1, :cond_39

    .line 116
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 121
    :goto_11
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/ProtocolVersion;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 122
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 123
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/ProtocolVersion;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 124
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 125
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/ProtocolVersion;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 127
    return-object p1

    .line 118
    :cond_39
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(I)V

    goto :goto_11
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 4

    .prologue
    .line 165
    const-string/jumbo v0, "Request line"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)V

    .line 169
    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/StatusLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 4

    .prologue
    .line 220
    const-string/jumbo v0, "Status line"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v0, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/StatusLine;)V

    .line 224
    return-object v0
.end method

.method protected b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)V
    .registers 7

    .prologue
    .line 302
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 306
    if-eqz v2, :cond_15

    .line 307
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 309
    :cond_15
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(I)V

    .line 311
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v0, ": "

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 313
    if-eqz v2, :cond_26

    .line 314
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 316
    :cond_26
    return-void
.end method

.method protected b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)V
    .registers 8

    .prologue
    const/16 v4, 0x20

    .line 183
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 188
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->b()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 189
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(I)V

    .line 191
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 193
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 195
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->b()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 196
    return-void
.end method

.method protected b(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/StatusLine;)V
    .registers 7

    .prologue
    const/16 v3, 0x20

    .line 239
    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->a()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 241
    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->c()Ljava/lang/String;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_1b

    .line 243
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    :cond_1b
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(I)V

    .line 247
    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->a()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 248
    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 249
    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(C)V

    .line 251
    if-eqz v1, :cond_3b

    .line 252
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 254
    :cond_3b
    return-void
.end method
