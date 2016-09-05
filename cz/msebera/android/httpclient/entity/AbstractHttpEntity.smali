.class public abstract Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# instance fields
.field protected a:Lcz/msebera/android/httpclient/Header;

.field protected b:Lcz/msebera/android/httpclient/Header;

.field protected c:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/Header;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->a:Lcz/msebera/android/httpclient/Header;

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    if-eqz p1, :cond_b

    .line 127
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string/jumbo v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_b
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->a(Lcz/msebera/android/httpclient/Header;)V

    .line 130
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 177
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->c:Z

    .line 178
    return-void
.end method

.method public b(Lcz/msebera/android/httpclient/Header;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->b:Lcz/msebera/android/httpclient/Header;

    .line 143
    return-void
.end method

.method public consumeContent()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    return-void
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->b:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->a:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x2c

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->a:Lcz/msebera/android/httpclient/Header;

    if-eqz v1, :cond_22

    .line 196
    const-string/jumbo v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->a:Lcz/msebera/android/httpclient/Header;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_22
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->b:Lcz/msebera/android/httpclient/Header;

    if-eqz v1, :cond_38

    .line 201
    const-string/jumbo v1, "Content-Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->b:Lcz/msebera/android/httpclient/Header;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_38
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->getContentLength()J

    move-result-wide v2

    .line 206
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4e

    .line 207
    const-string/jumbo v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    :cond_4e
    const-string/jumbo v1, "Chunked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
