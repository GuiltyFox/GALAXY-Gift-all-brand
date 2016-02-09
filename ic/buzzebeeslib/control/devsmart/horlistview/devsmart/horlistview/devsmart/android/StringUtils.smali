.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils$ClickSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    .line 24
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_30

    .line 25
    .local v0, "hexArray":[C
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 27
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    array-length v4, p0

    if-lt v2, v4, :cond_16

    .line 32
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 28
    :cond_16
    aget-byte v4, p0, v2

    and-int/lit16 v3, v4, 0xff

    .line 29
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 30
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 24
    nop

    :array_30
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static clickify(Landroid/widget/TextView;Ljava/lang/String;Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils$ClickSpan;)V
    .registers 11
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "clickableText"    # Ljava/lang/String;
    .param p2, "span"    # Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils$ClickSpan;

    .prologue
    const/16 v7, 0x21

    .line 111
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 112
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 115
    .local v3, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v0, v3, v6

    .line 116
    .local v0, "end":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    .line 130
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_17
    :goto_17
    return-void

    .line 118
    .restart local v5    # "text":Ljava/lang/CharSequence;
    :cond_18
    instance-of v6, v5, Landroid/text/Spannable;

    if-eqz v6, :cond_33

    .line 119
    check-cast v5, Landroid/text/Spannable;

    .end local v5    # "text":Ljava/lang/CharSequence;
    invoke-interface {v5, p2, v3, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 126
    :goto_21
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 127
    .local v1, "m":Landroid/text/method/MovementMethod;
    if-eqz v1, :cond_2b

    instance-of v6, v1, Landroid/text/method/LinkMovementMethod;

    if-nez v6, :cond_17

    .line 128
    :cond_2b
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_17

    .line 121
    .end local v1    # "m":Landroid/text/method/MovementMethod;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    :cond_33
    invoke-static {v5}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 122
    .local v2, "s":Landroid/text/SpannableString;
    invoke-virtual {v2, p2, v3, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 123
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method

.method public static intersection([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "blist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 94
    .local v3, "retval":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v4, p0

    if-lt v1, v4, :cond_17

    .line 100
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 101
    .local v2, "retarray":[Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    return-object v2

    .line 95
    .end local v2    # "retarray":[Ljava/lang/String;
    :cond_17
    aget-object v4, p0, v1

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 96
    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static isEmptyString(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static loadAssetString(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 58
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils;->loadString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadRawResourceString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 53
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils;->loadString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 64
    .local v3, "reader":Ljava/io/InputStreamReader;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 65
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 66
    .local v2, "numRead":I
    :goto_f
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1b

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 67
    :cond_1b
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_f
.end method

.method public static sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 37
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 38
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 39
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 40
    .local v2, "sha1hash":[B
    invoke-static {v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils;->bytesToHex([B)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v3

    .line 43
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "sha1hash":[B
    :goto_1c
    return-object v3

    .line 41
    :catch_1d
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-class v3, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/StringUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public static union([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .prologue
    .line 73
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 74
    .local v2, "retval":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v3, p0

    if-lt v0, v3, :cond_17

    .line 78
    const/4 v0, 0x0

    :goto_a
    array-length v3, p1

    if-lt v0, v3, :cond_1f

    .line 84
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 85
    .local v1, "retarray":[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    return-object v1

    .line 75
    .end local v1    # "retarray":[Ljava/lang/String;
    :cond_17
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 79
    :cond_1f
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 80
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
