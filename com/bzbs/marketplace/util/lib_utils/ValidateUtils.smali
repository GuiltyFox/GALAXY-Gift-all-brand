.class public Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;
.super Ljava/lang/Object;
.source "ValidateUtils.java"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .prologue
    .line 178
    if-eqz p0, :cond_29

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 180
    sget-object v0, Lcom/bzbs/marketplace/util/lib_utils/FormatterUtils;->a:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 188
    :cond_29
    :goto_29
    return-object p1

    .line 182
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_29
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 207
    const-string/jumbo v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
