.class public Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;
.super Ljava/lang/Object;
.source "ValidateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils$JSON_TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoDecimalValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "decimalFormat"    # Z

    .prologue
    .line 193
    if-eqz p0, :cond_29

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 195
    sget-object v0, Lcom/bzbs/marketplace/util/lib_utils/FormatterUtils;->formatter2Digit:Ljava/text/DecimalFormat;

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

    .line 203
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object p1

    .line 197
    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_29
.end method

.method public static autoValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 168
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->autoValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static autoValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->autoValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static autoValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "decimalFormat"    # Z

    .prologue
    .line 178
    if-eqz p0, :cond_29

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 180
    sget-object v0, Lcom/bzbs/marketplace/util/lib_utils/FormatterUtils;->formatter:Ljava/text/DecimalFormat;

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
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object p1

    .line 182
    .restart local p1    # "defaultValue":Ljava/lang/String;
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

.method public static autoValueFloat(F)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # F

    .prologue
    .line 135
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->autoValueNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static autoValueImage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->autoValueNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static autoValueInt(I)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # I

    .prologue
    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->autoValueNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static autoValueNull(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/Object;

    .prologue
    .line 103
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->autoValueNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static autoValueNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 107
    if-nez p0, :cond_3

    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static autoValueNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p0, :cond_6

    const-string/jumbo v0, ""

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static byteToString([B)Ljava/lang/String;
    .registers 2
    .param p0, "responseBody"    # [B

    .prologue
    .line 172
    if-nez p0, :cond_6

    .line 173
    const-string/jumbo v0, ""

    .line 174
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_5
.end method

.method public static castResponse([B)Ljava/lang/String;
    .registers 2
    .param p0, "response"    # [B

    .prologue
    .line 127
    if-eqz p0, :cond_8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v0, ""

    goto :goto_7
.end method

.method public static checkIdentityCard(Ljava/lang/String;)Z
    .registers 8
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_c

    .line 38
    :cond_b
    :goto_b
    return v2

    .line 30
    :cond_c
    const/4 v1, 0x0

    .line 31
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v6, :cond_26

    .line 32
    int-to-float v3, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    rsub-int/lit8 v5, v0, 0xd

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 35
    :cond_26
    rem-int/lit8 v3, v1, 0xb

    rsub-int/lit8 v3, v3, 0xb

    rem-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_b

    .line 38
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public static empty(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-static {p0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 119
    :cond_7
    :goto_7
    return v0

    .line 117
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 119
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static formatPhone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 79
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2f

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 81
    .local v4, "s":C
    const/16 v5, 0x78

    if-ne v4, v5, :cond_2b

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_27

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 84
    .local v2, "n":C
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 79
    .end local v2    # "n":C
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 87
    :cond_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 89
    :cond_2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 91
    .end local v4    # "s":C
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static hasText(Ljava/lang/String;)Z
    .registers 3
    .param p0, "msgCheck"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 65
    const/4 v1, 0x0

    .line 68
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public static isJSONValid(Ljava/lang/String;)Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils$JSON_TYPE;
    .registers 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    sget-object v2, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils$JSON_TYPE;->Object:Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils$JSON_TYPE;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    .line 222
    :goto_7
    return-object v2

    .line 215
    :catch_8
    move-exception v0

    .line 219
    .local v0, "ex":Lorg/json/JSONException;
    :try_start_9
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 220
    sget-object v2, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils$JSON_TYPE;->Array:Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils$JSON_TYPE;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_7

    .line 221
    :catch_11
    move-exception v1

    .line 222
    .local v1, "ex1":Lorg/json/JSONException;
    sget-object v2, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils$JSON_TYPE;->Invalid:Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils$JSON_TYPE;

    goto :goto_7
.end method

.method public static isNotNull(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 123
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 111
    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string/jumbo v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValueEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 147
    if-nez p0, :cond_6

    const-string/jumbo v0, ""

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static isValueNull(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static validateEmail(Ljava/lang/String;)Z
    .registers 5
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string/jumbo v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 22
    .local v0, "EMAIL_PATTERN":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 23
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 24
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static validateEqualLength(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static validateLessLength(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static validateMoreLength(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static validatePhone(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "regEx"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static validatePhone(Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "msgCheck"    # Ljava/lang/String;
    .param p1, "required"    # Z

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "text":Ljava/lang/String;
    if-eqz p1, :cond_e

    invoke-static {p0}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 55
    :cond_d
    :goto_d
    return v1

    .line 51
    :cond_e
    if-eqz p1, :cond_19

    const-string/jumbo v2, "([0\\\\+]+[0-9]{9})"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 55
    :cond_19
    const/4 v1, 0x1

    goto :goto_d
.end method
