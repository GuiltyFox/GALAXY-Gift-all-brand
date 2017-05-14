.class final Lcom/koushikdutta/async/http/cache/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method public static a(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-wide v0

    .line 102
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    .line 103
    const v0, 0x7fffffff

    .line 110
    :goto_e
    return v0

    .line 104
    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    .line 105
    const/4 v0, 0x0

    goto :goto_e

    .line 107
    :cond_17
    long-to-int v0, v0

    goto :goto_e

    .line 109
    :catch_19
    move-exception v0

    .line 110
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 86
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 92
    :cond_12
    return p1

    .line 86
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    .prologue
    .line 73
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 78
    :cond_11
    return p1

    .line 73
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V
    .registers 7

    .prologue
    .line 29
    if-nez p0, :cond_3

    .line 65
    :cond_2
    return-void

    .line 31
    :cond_3
    const/4 v0, 0x0

    .line 32
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 34
    const-string/jumbo v1, "=,"

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_2e

    .line 38
    :cond_27
    add-int/lit8 v0, v1, 0x1

    .line 39
    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 43
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    .line 44
    invoke-static {p0, v0}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;I)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_58

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_58

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    const-string/jumbo v1, "\""

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 53
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    add-int/lit8 v1, v1, 0x1

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 63
    :goto_54
    invoke-interface {p1, v2, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 59
    :cond_58
    const-string/jumbo v1, ","

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/http/cache/HeaderParser;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 60
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_54
.end method
