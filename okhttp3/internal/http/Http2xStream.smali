.class public final Lokhttp3/internal/http/Http2xStream;
.super Ljava/lang/Object;
.source "Http2xStream.java"

# interfaces
.implements Lokhttp3/internal/http/HttpStream;


# static fields
.field private static final a:Lokio/ByteString;

.field private static final b:Lokio/ByteString;

.field private static final c:Lokio/ByteString;

.field private static final d:Lokio/ByteString;

.field private static final e:Lokio/ByteString;

.field private static final f:Lokio/ByteString;

.field private static final g:Lokio/ByteString;

.field private static final h:Lokio/ByteString;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:Lokhttp3/internal/http/StreamAllocation;

.field private final n:Lokhttp3/internal/framed/FramedConnection;

.field private o:Lokhttp3/internal/http/HttpEngine;

.field private p:Lokhttp3/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string/jumbo v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->a:Lokio/ByteString;

    .line 54
    const-string/jumbo v0, "host"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->b:Lokio/ByteString;

    .line 55
    const-string/jumbo v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->c:Lokio/ByteString;

    .line 56
    const-string/jumbo v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->d:Lokio/ByteString;

    .line 57
    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->e:Lokio/ByteString;

    .line 58
    const-string/jumbo v0, "te"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->f:Lokio/ByteString;

    .line 59
    const-string/jumbo v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->g:Lokio/ByteString;

    .line 60
    const-string/jumbo v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->h:Lokio/ByteString;

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->e:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/framed/Header;->b:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/framed/Header;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/framed/Header;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/Header;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/Header;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/Header;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->i:Ljava/util/List;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->e:Lokio/ByteString;

    aput-object v1, v0, v7

    invoke-static {v0}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->j:Ljava/util/List;

    .line 83
    const/16 v0, 0xe

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->f:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/Header;->b:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/Header;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/Header;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/internal/framed/Header;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/internal/framed/Header;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lokhttp3/internal/framed/Header;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->k:Ljava/util/List;

    .line 98
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->f:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/framed/FramedConnection;)V
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lokhttp3/internal/http/Http2xStream;->m:Lokhttp3/internal/http/StreamAllocation;

    .line 115
    iput-object p2, p0, Lokhttp3/internal/http/Http2xStream;->n:Lokhttp3/internal/framed/FramedConnection;

    .line 116
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lokhttp3/Response$Builder;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 219
    const/4 v2, 0x0

    .line 220
    const-string/jumbo v1, "HTTP/1.1"

    .line 221
    new-instance v6, Lokhttp3/Headers$Builder;

    invoke-direct {v6}, Lokhttp3/Headers$Builder;-><init>()V

    .line 222
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_f
    if-ge v5, v7, :cond_6d

    .line 223
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v8, v0, Lokhttp3/internal/framed/Header;->h:Lokio/ByteString;

    .line 225
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v9

    move-object v0, v1

    move v1, v3

    .line 226
    :goto_27
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_68

    .line 227
    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 228
    const/4 v10, -0x1

    if-ne v4, v10, :cond_38

    .line 229
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 231
    :cond_38
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 232
    sget-object v10, Lokhttp3/internal/framed/Header;->a:Lokio/ByteString;

    invoke-virtual {v8, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 239
    :goto_44
    add-int/lit8 v2, v4, 0x1

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 240
    goto :goto_27

    .line 234
    :cond_4a
    sget-object v10, Lokhttp3/internal/framed/Header;->g:Lokio/ByteString;

    invoke-virtual {v8, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    move-object v0, v1

    move-object v1, v2

    .line 235
    goto :goto_44

    .line 236
    :cond_55
    sget-object v10, Lokhttp3/internal/http/Http2xStream;->j:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_66

    .line 237
    sget-object v10, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    invoke-virtual {v8}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11, v1}, Lokhttp3/internal/Internal;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    move-object v1, v2

    goto :goto_44

    .line 222
    :cond_68
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_f

    .line 242
    :cond_6d
    if-nez v2, :cond_78

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->a(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 245
    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v2, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    .line 246
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget v2, v0, Lokhttp3/internal/http/StatusLine;->b:I

    .line 247
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(I)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->c:Ljava/lang/String;

    .line 248
    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method static synthetic a(Lokhttp3/internal/http/Http2xStream;)Lokhttp3/internal/http/StreamAllocation;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->m:Lokhttp3/internal/http/StreamAllocation;

    return-object v0
.end method

.method public static b(Lokhttp3/Request;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v4

    .line 161
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lokhttp3/Headers;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    new-instance v0, Lokhttp3/internal/framed/Header;

    sget-object v1, Lokhttp3/internal/framed/Header;->b:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lokhttp3/internal/framed/Header;

    sget-object v1, Lokhttp3/internal/framed/Header;->c:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/http/RequestLine;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lokhttp3/internal/framed/Header;

    sget-object v1, Lokhttp3/internal/framed/Header;->g:Lokio/ByteString;

    const-string/jumbo v3, "HTTP/1.1"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lokhttp3/internal/framed/Header;

    sget-object v1, Lokhttp3/internal/framed/Header;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v3, v2}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lokhttp3/internal/framed/Header;

    sget-object v1, Lokhttp3/internal/framed/Header;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 169
    invoke-virtual {v4}, Lokhttp3/Headers;->a()I

    move-result v7

    move v3, v2

    :goto_6b
    if-ge v3, v7, :cond_cc

    .line 171
    invoke-virtual {v4, v3}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v8

    .line 174
    sget-object v0, Lokhttp3/internal/http/Http2xStream;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 169
    :cond_83
    :goto_83
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6b

    .line 177
    :cond_87
    invoke-virtual {v4, v3}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 178
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 179
    new-instance v0, Lokhttp3/internal/framed/Header;

    invoke-direct {v0, v8, v9}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_9a
    move v1, v2

    .line 184
    :goto_9b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_83

    .line 185
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->h:Lokio/ByteString;

    invoke-virtual {v0, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 186
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lokhttp3/internal/http/Http2xStream;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v9, Lokhttp3/internal/framed/Header;

    invoke-direct {v9, v8, v0}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 184
    :cond_c8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9b

    .line 192
    :cond_cc
    return-object v5
.end method

.method public static b(Ljava/util/List;)Lokhttp3/Response$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 256
    new-instance v3, Lokhttp3/Headers$Builder;

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    .line 257
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_c
    if-ge v2, v4, :cond_42

    .line 258
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v5, v0, Lokhttp3/internal/framed/Header;->h:Lokio/ByteString;

    .line 260
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    .line 261
    sget-object v6, Lokhttp3/internal/framed/Header;->a:Lokio/ByteString;

    invoke-virtual {v5, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 257
    :goto_2a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_c

    .line 263
    :cond_2f
    sget-object v6, Lokhttp3/internal/http/Http2xStream;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 264
    sget-object v6, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    invoke-virtual {v5}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v3, v5, v0}, Lokhttp3/internal/Internal;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    move-object v0, v1

    goto :goto_2a

    .line 267
    :cond_42
    if-nez v1, :cond_4d

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HTTP/1.1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->a(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 270
    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 271
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget v2, v0, Lokhttp3/internal/http/StatusLine;->b:I

    .line 272
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->a(I)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->c:Ljava/lang/String;

    .line 273
    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->a(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 270
    return-object v0
.end method

.method public static c(Lokhttp3/Request;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lokhttp3/Headers;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    new-instance v3, Lokhttp3/internal/framed/Header;

    sget-object v4, Lokhttp3/internal/framed/Header;->b:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v3, Lokhttp3/internal/framed/Header;

    sget-object v4, Lokhttp3/internal/framed/Header;->c:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/http/RequestLine;->a(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v3, Lokhttp3/internal/framed/Header;

    sget-object v4, Lokhttp3/internal/framed/Header;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-static {v5, v0}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v3, Lokhttp3/internal/framed/Header;

    sget-object v4, Lokhttp3/internal/framed/Header;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v1}, Lokhttp3/Headers;->a()I

    move-result v3

    :goto_58
    if-ge v0, v3, :cond_7f

    .line 209
    invoke-virtual {v1, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    .line 210
    sget-object v5, Lokhttp3/internal/http/Http2xStream;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 211
    new-instance v5, Lokhttp3/internal/framed/Header;

    invoke-virtual {v1, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 214
    :cond_7f
    return-object v2
.end method


# virtual methods
.method public a()Lokhttp3/Response$Builder;
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->n:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->a()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    .line 150
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/Http2xStream;->b(Ljava/util/List;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 149
    :goto_14
    return-object v0

    .line 150
    :cond_15
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    .line 151
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/Http2xStream;->a(Ljava/util/List;)Lokhttp3/Response$Builder;

    move-result-object v0

    goto :goto_14
.end method

.method public a(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 5

    .prologue
    .line 278
    new-instance v0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;

    iget-object v1, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream;->g()Lokio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;-><init>(Lokhttp3/internal/http/Http2xStream;Lokio/Source;)V

    .line 279
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public a(Lokhttp3/Request;J)Lokio/Sink;
    .registers 5

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->h()Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/Request;)V
    .registers 6

    .prologue
    .line 127
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    if-eqz v0, :cond_5

    .line 138
    :goto_4
    return-void

    .line 129
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->o:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->b()V

    .line 130
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->o:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http/HttpEngine;->a(Lokhttp3/Request;)Z

    move-result v1

    .line 131
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->n:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->a()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    if-ne v0, v2, :cond_50

    .line 132
    invoke-static {p1}, Lokhttp3/internal/http/Http2xStream;->c(Lokhttp3/Request;)Ljava/util/List;

    move-result-object v0

    .line 134
    :goto_1e
    const/4 v2, 0x1

    .line 135
    iget-object v3, p0, Lokhttp3/internal/http/Http2xStream;->n:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v3, v0, v1, v2}, Lokhttp3/internal/framed/FramedConnection;->a(Ljava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    .line 136
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->e()Lokio/Timeout;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/Http2xStream;->o:Lokhttp3/internal/http/HttpEngine;

    iget-object v1, v1, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 137
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->f()Lokio/Timeout;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/Http2xStream;->o:Lokhttp3/internal/http/HttpEngine;

    iget-object v1, v1, Lokhttp3/internal/http/HttpEngine;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto :goto_4

    .line 133
    :cond_50
    invoke-static {p1}, Lokhttp3/internal/http/Http2xStream;->b(Lokhttp3/Request;)Ljava/util/List;

    move-result-object v0

    goto :goto_1e
.end method

.method public a(Lokhttp3/internal/http/HttpEngine;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lokhttp3/internal/http/Http2xStream;->o:Lokhttp3/internal/http/HttpEngine;

    .line 120
    return-void
.end method

.method public a(Lokhttp3/internal/http/RetryableSink;)V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->h()Lokio/Sink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RetryableSink;->a(Lokio/Sink;)V

    .line 142
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->p:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->h()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 146
    return-void
.end method
