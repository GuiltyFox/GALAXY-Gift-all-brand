.class public final Lcz/msebera/android/httpclient/util/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36
    if-nez p0, :cond_4

    .line 39
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static b(Ljava/lang/CharSequence;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    if-nez p0, :cond_6

    move v1, v2

    .line 51
    :cond_5
    :goto_5
    return v1

    :cond_6
    move v0, v1

    .line 46
    :goto_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_1a

    .line 47
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    move v1, v2

    .line 51
    goto :goto_5
.end method
