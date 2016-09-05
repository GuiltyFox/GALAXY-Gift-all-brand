.class final Lokhttp3/CertificatePinner$Pin;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Lokio/ByteString;


# virtual methods
.method a(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 268
    :goto_a
    return v6

    .line 267
    :cond_b
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 268
    iget-object v2, p0, Lokhttp3/CertificatePinner$Pin;->a:Ljava/lang/String;

    const-string/jumbo v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lokhttp3/CertificatePinner$Pin;->a:Ljava/lang/String;

    const/4 v4, 0x2

    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->a:Ljava/lang/String;

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v5, v0, -0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_31

    move v1, v6

    :cond_31
    move v6, v1

    .line 268
    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 273
    instance-of v0, p1, Lokhttp3/CertificatePinner$Pin;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lokhttp3/CertificatePinner$Pin;->a:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lokhttp3/CertificatePinner$Pin;

    iget-object v0, v0, Lokhttp3/CertificatePinner$Pin;->a:Ljava/lang/String;

    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lokhttp3/CertificatePinner$Pin;->b:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lokhttp3/CertificatePinner$Pin;

    iget-object v0, v0, Lokhttp3/CertificatePinner$Pin;->b:Ljava/lang/String;

    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->c:Lokio/ByteString;

    check-cast p1, Lokhttp3/CertificatePinner$Pin;

    iget-object v1, p1, Lokhttp3/CertificatePinner$Pin;->c:Lokio/ByteString;

    .line 276
    invoke-virtual {v0, v1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 273
    :goto_2b
    return v0

    .line 276
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 280
    .line 281
    iget-object v0, p0, Lokhttp3/CertificatePinner$Pin;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 282
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/CertificatePinner$Pin;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/CertificatePinner$Pin;->c:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/CertificatePinner$Pin;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/CertificatePinner$Pin;->c:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
