.class public Lcz/msebera/android/httpclient/message/BasicHttpResponse;
.super Lcz/msebera/android/httpclient/message/AbstractHttpMessage;
.source "BasicHttpResponse.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponse;


# instance fields
.field private a:Lcz/msebera/android/httpclient/StatusLine;

.field private b:Lcz/msebera/android/httpclient/ProtocolVersion;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcz/msebera/android/httpclient/HttpEntity;

.field private final f:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

.field private g:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .registers 5

    .prologue
    .line 73
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;-><init>()V

    .line 74
    const-string/jumbo v0, "Status line"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/StatusLine;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->a:Lcz/msebera/android/httpclient/StatusLine;

    .line 75
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->a()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->b:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 76
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->c:I

    .line 77
    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->d:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->f:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    .line 79
    iput-object p3, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->g:Ljava/util/Locale;

    .line 80
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/StatusLine;
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->a:Lcz/msebera/android/httpclient/StatusLine;

    if-nez v0, :cond_19

    .line 131
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->b:Lcz/msebera/android/httpclient/ProtocolVersion;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->b:Lcz/msebera/android/httpclient/ProtocolVersion;

    :goto_c
    iget v3, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->c:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->d:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->d:Ljava/lang/String;

    .line 134
    :goto_14
    invoke-direct {v2, v0, v3, v1}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    iput-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->a:Lcz/msebera/android/httpclient/StatusLine;

    .line 136
    :cond_19
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->a:Lcz/msebera/android/httpclient/StatusLine;

    return-object v0

    .line 131
    :cond_1c
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->c:Lcz/msebera/android/httpclient/HttpVersion;

    goto :goto_c

    :cond_1f
    iget v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->c:I

    .line 134
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method

.method protected a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->f:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->f:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->g:Ljava/util/Locale;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->g:Ljava/util/Locale;

    :goto_c
    invoke-interface {v1, p1, v0}, Lcz/msebera/android/httpclient/ReasonPhraseCatalog;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    .line 210
    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_c

    .line 209
    :cond_16
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public a(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->e:Lcz/msebera/android/httpclient/HttpEntity;

    .line 192
    return-void
.end method

.method public b()Lcz/msebera/android/httpclient/HttpEntity;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->e:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->b:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->e:Lcz/msebera/android/httpclient/HttpEntity;

    if-eqz v1, :cond_22

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;->e:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
