.class final Lcom/koushikdutta/async/http/cache/RawHeaders;
.super Ljava/lang/Object;
.source "RawHeaders.java"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders$1;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/cache/RawHeaders;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->d:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->e:I

    .line 68
    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/koushikdutta/async/http/cache/RawHeaders;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/koushikdutta/async/http/cache/RawHeaders;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v2, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    .line 291
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 294
    if-eqz v1, :cond_2b

    .line 295
    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_d

    .line 296
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 297
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;)V

    goto :goto_d

    .line 300
    :cond_41
    return-object v2
.end method


# virtual methods
.method public a(Ljava/util/Set;)Lcom/koushikdutta/async/http/cache/RawHeaders;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/koushikdutta/async/http/cache/RawHeaders;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v3, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    .line 240
    const/4 v0, 0x0

    move v2, v0

    :goto_7
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2e

    .line 241
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 243
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_2a
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_7

    .line 246
    :cond_2e
    return-object v3
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 205
    mul-int/lit8 v0, p1, 0x2

    .line 206
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 207
    :cond_c
    const/4 v0, 0x0

    .line 209
    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->c:Ljava/lang/String;

    .line 90
    if-eqz v0, :cond_11

    const-string/jumbo v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 109
    :cond_11
    :goto_11
    return-void

    .line 93
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 95
    if-eqz v2, :cond_11

    .line 98
    add-int/lit8 v0, v2, -0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-eq v0, v3, :cond_2e

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->d:I

    .line 101
    :cond_2e
    add-int/lit8 v0, v2, 0x3

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_3a

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 105
    :cond_3a
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->e:I

    .line 106
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_11

    .line 107
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->f:Ljava/lang/String;

    goto :goto_11
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 154
    if-nez p1, :cond_b

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fieldName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_b
    if-nez p2, :cond_2e

    .line 163
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring HTTP header field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' because its value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    :goto_2d
    return-void

    .line 166
    :cond_2e
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 183
    :cond_14
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->e:I

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 216
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 217
    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 218
    :cond_e
    const/4 v0, 0x0

    .line 220
    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_f
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 142
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 143
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 144
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_10
    return-void

    .line 146
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->c(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 171
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 173
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 171
    :cond_22
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_2

    .line 177
    :cond_26
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_9
    if-ltz v1, :cond_28

    .line 228
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    :goto_23
    return-object v0

    .line 227
    :cond_24
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_9

    .line 232
    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public e()Ljava/lang/String;
    .registers 6

    .prologue
    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_48

    .line 253
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_15

    .line 256
    :cond_48
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v4, Ljava/util/TreeMap;

    sget-object v0, Lcom/koushikdutta/async/http/cache/RawHeaders;->a:Ljava/util/Comparator;

    invoke-direct {v4, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 266
    const/4 v0, 0x0

    move v3, v0

    :goto_9
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_41

    .line 267
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->b:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 272
    if-eqz v2, :cond_33

    .line 273
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    :cond_33
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_9

    .line 278
    :cond_41
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->c:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 279
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/RawHeaders;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_53
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
