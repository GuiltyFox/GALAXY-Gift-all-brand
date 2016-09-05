.class public Lcom/bzbs/marketplace/sticker/StickerUtil;
.super Ljava/lang/Object;
.source "StickerUtil.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/sticker/StickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/sticker/StickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/sticker/StickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string/jumbo v0, "Sticker"

    sput-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 29
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "StickerSets"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/bzbs/marketplace/sticker/StickerUtil;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 34
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "StickerSets"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/sticker/StickerSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 46
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    .line 57
    :goto_e
    return-object v0

    .line 48
    :cond_f
    if-eqz p0, :cond_2d

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    .line 50
    invoke-static {p0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_2a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 52
    invoke-static {v0, p0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 55
    :cond_2a
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    goto :goto_e

    .line 57
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 94
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->c:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->d:Ljava/util/ArrayList;

    .line 97
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_12f

    .line 102
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string/jumbo v2, "["

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string/jumbo v2, "]"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string/jumbo v2, "\""

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 111
    if-eqz v0, :cond_114

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    move v2, v1

    .line 113
    :goto_56
    array-length v0, v4

    if-ge v2, v0, :cond_88

    move v0, v1

    .line 114
    :goto_5a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_5d} :catch_132
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5d} :catch_130

    move-result v5

    if-ge v0, v5, :cond_84

    .line 116
    :try_start_60
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 117
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    const-string/jumbo v7, "PartitionKey"

    invoke-static {v5, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 120
    sget-object v6, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    new-instance v7, Lcom/bzbs/marketplace/sticker/StickerSet;

    invoke-direct {v7, v5}, Lcom/bzbs/marketplace/sticker/StickerSet;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_81} :catch_139
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_81} :catch_130

    .line 114
    :cond_81
    :goto_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 113
    :cond_84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_56

    :cond_88
    move v0, v1

    .line 128
    :goto_89
    :try_start_89
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_8c
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_8c} :catch_132
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_130

    move-result v2

    if-ge v0, v2, :cond_a0

    .line 130
    :try_start_8f
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 131
    sget-object v4, Lcom/bzbs/marketplace/sticker/StickerUtil;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/bzbs/marketplace/sticker/StickerSet;

    invoke-direct {v5, v2}, Lcom/bzbs/marketplace/sticker/StickerSet;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_9d} :catch_136
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9d} :catch_130

    .line 128
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 137
    :cond_a0
    :try_start_a0
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f6

    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f6

    .line 139
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_b9
    if-ltz v3, :cond_f6

    .line 141
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_c4
    if-ltz v2, :cond_13c

    .line 142
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/StickerSet;

    iget-object v4, v0, Lcom/bzbs/marketplace/sticker/StickerSet;->d:Ljava/lang/String;

    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/StickerSet;

    iget-object v0, v0, Lcom/bzbs/marketplace/sticker/StickerSet;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 144
    const/4 v0, 0x1

    .line 148
    :goto_e1
    if-nez v0, :cond_ee

    .line 149
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->d:Ljava/util/ArrayList;

    sget-object v2, Lcom/bzbs/marketplace/sticker/StickerUtil;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_ee
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_b9

    .line 141
    :cond_f2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_c4

    .line 157
    :cond_f6
    :goto_f6
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12c

    .line 158
    sget-object v2, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/StickerSet;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/sticker/StickerSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/StickerSet;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    :cond_114
    move v0, v1

    .line 163
    :goto_115
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_118
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_118} :catch_132
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_118} :catch_130

    move-result v1

    if-ge v0, v1, :cond_12c

    .line 165
    :try_start_11b
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 166
    sget-object v2, Lcom/bzbs/marketplace/sticker/StickerUtil;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/bzbs/marketplace/sticker/StickerSet;

    invoke-direct {v4, v1}, Lcom/bzbs/marketplace/sticker/StickerSet;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_129
    .catch Lorg/json/JSONException; {:try_start_11b .. :try_end_129} :catch_134
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_129} :catch_130

    .line 163
    :goto_129
    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    .line 176
    :cond_12c
    :try_start_12c
    invoke-static {p1}, Lcom/bzbs/marketplace/sticker/StickerUtil;->e(Landroid/content/Context;)V
    :try_end_12f
    .catch Lorg/json/JSONException; {:try_start_12c .. :try_end_12f} :catch_132
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_12f} :catch_130

    .line 183
    :cond_12f
    :goto_12f
    return-void

    .line 180
    :catch_130
    move-exception v0

    goto :goto_12f

    .line 178
    :catch_132
    move-exception v0

    goto :goto_12f

    .line 167
    :catch_134
    move-exception v1

    goto :goto_129

    .line 132
    :catch_136
    move-exception v2

    goto/16 :goto_9d

    .line 122
    :catch_139
    move-exception v5

    goto/16 :goto_81

    :cond_13c
    move v0, v1

    goto :goto_e1
.end method

.method public static c(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bzbs/marketplace/sticker/Sticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 64
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->e:Ljava/util/HashMap;

    .line 67
    :goto_e
    return-object v0

    .line 66
    :cond_f
    invoke-static {p0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->e(Landroid/content/Context;)V

    .line 67
    sget-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->e:Ljava/util/HashMap;

    goto :goto_e
.end method

.method public static d(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/api/config/buzzebees"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    new-instance v2, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerOrderListener;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/sticker/StickerUtil$GetStickerOrderListener;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/asynctask/BuzzbeesRestClient;->a(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 213
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 187
    if-eqz p0, :cond_5c

    .line 188
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bzbs/marketplace/sticker/StickerUtil;->e:Ljava/util/HashMap;

    move v3, v2

    .line 189
    :goto_b
    invoke-static {p0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5c

    move v1, v2

    .line 190
    :goto_16
    invoke-static {p0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/StickerSet;

    iget-object v0, v0, Lcom/bzbs/marketplace/sticker/StickerSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_5b

    move-result v0

    if-ge v1, v0, :cond_57

    .line 192
    :try_start_28
    invoke-static {p0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/StickerSet;

    iget-object v0, v0, Lcom/bzbs/marketplace/sticker/StickerSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/Sticker;

    iget-object v4, v0, Lcom/bzbs/marketplace/sticker/Sticker;->a:Ljava/lang/String;

    .line 193
    invoke-static {p0}, Lcom/bzbs/marketplace/sticker/StickerUtil;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/StickerSet;

    iget-object v0, v0, Lcom/bzbs/marketplace/sticker/StickerSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/sticker/Sticker;

    .line 194
    sget-object v5, Lcom/bzbs/marketplace/sticker/StickerUtil;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_53} :catch_5d

    .line 190
    :goto_53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 189
    :cond_57
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    .line 201
    :catch_5b
    move-exception v0

    .line 204
    :cond_5c
    return-void

    .line 195
    :catch_5d
    move-exception v0

    goto :goto_53
.end method
