.class public Lcz/msebera/android/httpclient/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final d:Ljava/lang/String;

.field protected final e:I

.field protected final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, "Protocol name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "Protocol minor version"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->e:I

    .line 73
    const-string/jumbo v0, "Protocol minor version"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->f:I

    .line 74
    return-void
.end method


# virtual methods
.method public a(II)Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 5

    .prologue
    .line 121
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->e:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->f:I

    if-ne p2, v0, :cond_9

    .line 126
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolVersion;

    iget-object v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcz/msebera/android/httpclient/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    move-object p0, v0

    goto :goto_8
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/ProtocolVersion;)Z
    .registers 4

    .prologue
    .line 181
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    iget-object v1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->e:I

    return v0
.end method

.method public b(Lcz/msebera/android/httpclient/ProtocolVersion;)I
    .registers 6

    .prologue
    .line 202
    const-string/jumbo v0, "Protocol version"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    iget-object v1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "Versions for different protocols cannot be compared: %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/ProtocolVersion;->b()I

    move-result v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 206
    if-nez v0, :cond_31

    .line 207
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/ProtocolVersion;->c()I

    move-result v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 209
    :cond_31
    return v0
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->f:I

    return v0
.end method

.method public final c(Lcz/msebera/android/httpclient/ProtocolVersion;)Z
    .registers 3

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->a(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->b(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 261
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    if-ne p0, p1, :cond_5

    .line 164
    :cond_4
    :goto_4
    return v0

    .line 159
    :cond_5
    instance-of v2, p1, Lcz/msebera/android/httpclient/ProtocolVersion;

    if-nez v2, :cond_b

    move v0, v1

    .line 160
    goto :goto_4

    .line 162
    :cond_b
    check-cast p1, Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 164
    iget-object v2, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->e:I

    iget v3, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->e:I

    if-ne v2, v3, :cond_23

    iget v2, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->f:I

    iget v3, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->f:I

    if-eq v2, v3, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->e:I

    const v2, 0x186a0

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->f:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    iget-object v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
