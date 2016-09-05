.class public Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;
.super Ljava/lang/Object;
.source "BasicClientCookie.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/ClientCookie;
.implements Lcz/msebera/android/httpclient/cookie/SetCookie;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->a:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->b:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->c:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 273
    iput p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->i:I

    .line 274
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 239
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->h:Z

    .line 240
    return-void
.end method

.method public a(Ljava/util/Date;)Z
    .registers 6

    .prologue
    .line 283
    const-string/jumbo v0, "Date"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->f:Ljava/util/Date;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->f:Ljava/util/Date;

    .line 285
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/util/Date;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->f:Ljava/util/Date;

    .line 153
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->d:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 302
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    .line 303
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->b:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->b:Ljava/util/Map;

    .line 304
    return-object v0
.end method

.method public d()Ljava/util/Date;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->f:Ljava/util/Date;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 187
    if-eqz p1, :cond_b

    .line 188
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->e:Ljava/lang/String;

    .line 192
    :goto_a
    return-void

    .line 190
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->e:Ljava/lang/String;

    goto :goto_a
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 215
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->g:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->f:Ljava/util/Date;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()[I
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->h:Z

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    const-string/jumbo v1, "[version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v1, "[name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v1, "[value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string/jumbo v1, "[domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v1, "[path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v1, "[expiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->f:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
