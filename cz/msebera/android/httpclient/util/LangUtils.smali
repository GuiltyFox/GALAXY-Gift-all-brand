.class public final Lcz/msebera/android/httpclient/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# direct methods
.method public static a(II)I
    .registers 3

    .prologue
    .line 47
    mul-int/lit8 v0, p0, 0x25

    add-int/2addr v0, p1

    return v0
.end method

.method public static a(ILjava/lang/Object;)I
    .registers 3

    .prologue
    .line 55
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/LangUtils;->a(II)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(IZ)I
    .registers 3

    .prologue
    .line 51
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/LangUtils;->a(II)I

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 66
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static a([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    if-nez p0, :cond_9

    .line 86
    if-nez p1, :cond_7

    .line 96
    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 86
    goto :goto_6

    .line 88
    :cond_9
    if-eqz p1, :cond_22

    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_22

    move v2, v1

    .line 89
    :goto_10
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 90
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    move v0, v1

    .line 91
    goto :goto_6

    .line 89
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_22
    move v0, v1

    .line 96
    goto :goto_6
.end method
