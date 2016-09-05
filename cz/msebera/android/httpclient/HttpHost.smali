.class public final Lcz/msebera/android/httpclient/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:I

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v0, "Host name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->a:Ljava/lang/String;

    .line 82
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->b:Ljava/lang/String;

    .line 83
    if-eqz p3, :cond_26

    .line 84
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->d:Ljava/lang/String;

    .line 88
    :goto_20
    iput p2, p0, Lcz/msebera/android/httpclient/HttpHost;->c:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->e:Ljava/net/InetAddress;

    .line 90
    return-void

    .line 86
    :cond_26
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->d:Ljava/lang/String;

    goto :goto_20
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lcz/msebera/android/httpclient/HttpHost;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->d:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 287
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 226
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 239
    iget v0, p0, Lcz/msebera/android/httpclient/HttpHost;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->a:Ljava/lang/String;

    goto :goto_2a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    if-ne p0, p1, :cond_5

    .line 269
    :cond_4
    :goto_4
    return v0

    .line 263
    :cond_5
    instance-of v2, p1, Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v2, :cond_27

    .line 264
    check-cast p1, Lcz/msebera/android/httpclient/HttpHost;

    .line 265
    iget-object v2, p0, Lcz/msebera/android/httpclient/HttpHost;->b:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/HttpHost;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Lcz/msebera/android/httpclient/HttpHost;->c:I

    iget v3, p1, Lcz/msebera/android/httpclient/HttpHost;->c:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcz/msebera/android/httpclient/HttpHost;->d:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/HttpHost;->d:Ljava/lang/String;

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4

    :cond_27
    move v0, v1

    .line 269
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 278
    const/16 v0, 0x11

    .line 279
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 280
    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->c:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(II)I

    move-result v0

    .line 281
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 282
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/HttpHost;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
