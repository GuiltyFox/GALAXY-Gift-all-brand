.class public Lcom/bzbs/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBigDecimal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 9
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 104
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 105
    :cond_1b
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/math/BigDecimal;-><init>(I)V

    .line 115
    .local v1, "sPrice":Ljava/math/BigDecimal;
    :goto_21
    return-object v1

    .line 108
    .end local v1    # "sPrice":Ljava/math/BigDecimal;
    :cond_22
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "temp":Ljava/lang/String;
    const-string/jumbo v4, ","

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "temp2":Ljava/lang/String;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_35} :catch_36

    .line 111
    .restart local v1    # "sPrice":Ljava/math/BigDecimal;
    goto :goto_21

    .line 113
    .end local v1    # "sPrice":Ljava/math/BigDecimal;
    .end local v2    # "temp":Ljava/lang/String;
    .end local v3    # "temp2":Ljava/lang/String;
    :catch_36
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v6}, Ljava/math/BigDecimal;-><init>(I)V

    .line 115
    .restart local v1    # "sPrice":Ljava/math/BigDecimal;
    goto :goto_21
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 72
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 73
    :cond_1b
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 86
    :goto_20
    return-object v2

    .line 77
    :cond_21
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 79
    :cond_3f
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_20

    .line 81
    :cond_45
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_49} :catch_4b

    move-result-object v2

    goto :goto_20

    .line 85
    .end local v1    # "value":Ljava/lang/String;
    :catch_4b
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_20
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 92
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 98
    :cond_1c
    :goto_1c
    return-wide v2

    .line 95
    :cond_1d
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_20} :catch_22

    move-result-wide v2

    goto :goto_1c

    .line 97
    :catch_22
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1c
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .registers 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 24
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 30
    :cond_1b
    :goto_1b
    return v1

    .line 27
    :cond_1c
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1f} :catch_21

    move-result v1

    goto :goto_1b

    .line 29
    :catch_21
    move-exception v0

    .line 30
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1b
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .registers 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value_default"    # I

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 42
    .end local p2    # "value_default":I
    :cond_1a
    :goto_1a
    return p2

    .line 39
    .restart local p2    # "value_default":I
    :cond_1b
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_20

    move-result p2

    goto :goto_1a

    .line 41
    :catch_20
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1a
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 48
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 54
    :cond_1c
    :goto_1c
    return-wide v2

    .line 51
    :cond_1d
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_20} :catch_22

    move-result-wide v2

    goto :goto_1c

    .line 53
    :catch_22
    move-exception v0

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1c
.end method

.method public static getLongNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .registers 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 66
    :cond_1b
    :goto_1b
    return-object v1

    .line 63
    :cond_1c
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_25

    move-result-object v1

    goto :goto_1b

    .line 65
    :catch_25
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1b
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 13
    :cond_1a
    const-string/jumbo v1, ""

    .line 18
    :goto_1d
    return-object v1

    .line 15
    :cond_1e
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_21} :catch_23

    move-result-object v1

    goto :goto_1d

    .line 17
    :catch_23
    move-exception v0

    .line 18
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, ""

    goto :goto_1d
.end method
