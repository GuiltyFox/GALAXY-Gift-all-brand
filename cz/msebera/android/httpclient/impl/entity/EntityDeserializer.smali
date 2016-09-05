.class public Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "Content length strategy"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;->a:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    .line 73
    return-void
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/entity/BasicHttpEntity;
    .registers 12

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 93
    new-instance v0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;-><init>()V

    .line 95
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;->a:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    invoke-interface {v1, p2}, Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;->a(Lcz/msebera/android/httpclient/HttpMessage;)J

    move-result-wide v2

    .line 96
    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_3c

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(Z)V

    .line 98
    invoke-virtual {v0, v6, v7}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(J)V

    .line 99
    new-instance v1, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(Ljava/io/InputStream;)V

    .line 110
    :goto_23
    const-string/jumbo v1, "Content-Type"

    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_2f

    .line 112
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(Lcz/msebera/android/httpclient/Header;)V

    .line 114
    :cond_2f
    const-string/jumbo v1, "Content-Encoding"

    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_3b

    .line 116
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->b(Lcz/msebera/android/httpclient/Header;)V

    .line 118
    :cond_3b
    return-object v0

    .line 100
    :cond_3c
    cmp-long v1, v2, v6

    if-nez v1, :cond_4f

    .line 101
    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(Z)V

    .line 102
    invoke-virtual {v0, v6, v7}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(J)V

    .line 103
    new-instance v1, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(Ljava/io/InputStream;)V

    goto :goto_23

    .line 105
    :cond_4f
    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(Z)V

    .line 106
    invoke-virtual {v0, v2, v3}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(J)V

    .line 107
    new-instance v1, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;

    invoke-direct {v1, p1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;J)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->a(Ljava/io/InputStream;)V

    goto :goto_23
.end method

.method public b(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/HttpEntity;
    .registers 4

    .prologue
    .line 138
    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v0, "HTTP message"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;->a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/entity/BasicHttpEntity;

    move-result-object v0

    return-object v0
.end method
