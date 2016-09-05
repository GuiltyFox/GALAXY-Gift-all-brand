.class public abstract Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;
.super Ljava/lang/Object;
.source "AbstractMessageWriter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcz/msebera/android/httpclient/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageWriter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field protected final b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field protected final c:Lcz/msebera/android/httpclient/message/LineFormatter;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 76
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 77
    if-eqz p2, :cond_19

    :goto_16
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->c:Lcz/msebera/android/httpclient/message/LineFormatter;

    .line 78
    return-void

    .line 77
    :cond_19
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->b:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    goto :goto_16
.end method


# virtual methods
.method protected abstract a(Lcz/msebera/android/httpclient/HttpMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b(Lcz/msebera/android/httpclient/HttpMessage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v0, "HTTP message"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->a(Lcz/msebera/android/httpclient/HttpMessage;)V

    .line 110
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpMessage;->headerIterator()Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 111
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->a()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->c:Lcz/msebera/android/httpclient/message/LineFormatter;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 113
    invoke-interface {v3, v4, v1}, Lcz/msebera/android/httpclient/message/LineFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    invoke-interface {v2, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    goto :goto_d

    .line 115
    :cond_25
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a()V

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageWriter;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    .line 117
    return-void
.end method
