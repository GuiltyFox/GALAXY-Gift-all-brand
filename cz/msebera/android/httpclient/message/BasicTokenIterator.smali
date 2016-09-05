.class public Lcz/msebera/android/httpclient/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/TokenIterator;


# instance fields
.field protected final a:Lcz/msebera/android/httpclient/HeaderIterator;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HeaderIterator;)V
    .registers 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string/jumbo v0, "Header iterator"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HeaderIterator;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a(I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->d:I

    .line 87
    return-void
.end method


# virtual methods
.method protected a(I)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 164
    .line 165
    if-gez p1, :cond_25

    .line 167
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 185
    :goto_c
    return v0

    .line 170
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->a()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    .line 177
    :goto_1a
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b(I)I

    move-result v2

    .line 178
    if-gez v2, :cond_2a

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c:Ljava/lang/String;

    move v0, v1

    .line 180
    goto :goto_c

    .line 174
    :cond_25
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c(I)I

    move-result v0

    goto :goto_1a

    .line 183
    :cond_2a
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->d(I)I

    move-result v0

    .line 184
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c:Ljava/lang/String;

    goto :goto_c
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 108
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c:Ljava/lang/String;

    .line 113
    iget v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->d:I

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a(I)I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->d:I

    .line 115
    return-object v0
.end method

.method protected a(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 210
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(C)Z
    .registers 3

    .prologue
    .line 336
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected b(I)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 225
    const-string/jumbo v0, "Search position"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    move-result v0

    move v1, v2

    .line 227
    :goto_9
    if-nez v1, :cond_85

    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    if-eqz v3, :cond_85

    .line 229
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v6, v1

    move v1, v0

    move v0, v6

    .line 230
    :goto_18
    if-nez v0, :cond_66

    if-ge v1, v3, :cond_66

    .line 232
    iget-object v4, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 233
    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a(C)Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b(C)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 235
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 236
    :cond_31
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c(C)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 238
    const/4 v0, 0x1

    goto :goto_18

    .line 240
    :cond_3f
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid character before token (pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_66
    if-nez v0, :cond_7d

    .line 246
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 247
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->a()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    move v1, v2

    :cond_7d
    :goto_7d
    move v6, v0

    move v0, v1

    move v1, v6

    .line 253
    goto :goto_9

    .line 250
    :cond_81
    const/4 v3, 0x0

    iput-object v3, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    goto :goto_7d

    .line 255
    :cond_85
    if-eqz v1, :cond_88

    :goto_87
    return v0

    :cond_88
    const/4 v0, -0x1

    goto :goto_87
.end method

.method protected b(C)Z
    .registers 3

    .prologue
    .line 355
    const/16 v0, 0x9

    if-eq p1, v0, :cond_a

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected c(I)I
    .registers 7

    .prologue
    .line 277
    const-string/jumbo v0, "Search position"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    move-result v1

    .line 278
    const/4 v0, 0x0

    .line 279
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 280
    :goto_e
    if-nez v0, :cond_7d

    if-ge v1, v2, :cond_7d

    .line 281
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 282
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a(C)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 283
    const/4 v0, 0x1

    goto :goto_e

    .line 284
    :cond_20
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b(C)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 286
    :cond_29
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c(C)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 287
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tokens without separator (pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_56
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid character after token (pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_7d
    return v1
.end method

.method protected c(C)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 394
    :cond_8
    :goto_8
    return v0

    .line 379
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 380
    goto :goto_8

    .line 384
    :cond_11
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->d(C)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 385
    goto :goto_8
.end method

.method protected d(I)I
    .registers 5

    .prologue
    .line 313
    const-string/jumbo v0, "Search position"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 315
    add-int/lit8 v0, p1, 0x1

    .line 316
    :goto_e
    if-ge v0, v1, :cond_1f

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 320
    :cond_1f
    return v0
.end method

.method protected d(C)Z
    .registers 3

    .prologue
    .line 409
    const-string/jumbo v0, " ,;=()<>@:\\\"/[]?{}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
