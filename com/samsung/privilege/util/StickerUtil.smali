.class public Lcom/samsung/privilege/util/StickerUtil;
.super Ljava/lang/Object;
.source "StickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/StickerUtil$GetStickerOrderListener;,
        Lcom/samsung/privilege/util/StickerUtil$GetStickerSetListener;
    }
.end annotation


# static fields
.field private static final LOGCAT:Ljava/lang/String; = "buzzebees.sticker"

.field public static PREF_KEY_STICKER:Ljava/lang/String;

.field private static gStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/StickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static gStickersMapping:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "Sticker"

    sput-object v0, Lcom/samsung/privilege/util/StickerUtil;->PREF_KEY_STICKER:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetStickerSets(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v1, Lcom/samsung/privilege/util/StickerUtil;->PREF_KEY_STICKER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string v1, "StickerSets"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static InitStickerMapping(Landroid/content/Context;)V
    .registers 9
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 165
    if-eqz p0, :cond_14

    .line 166
    :try_start_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/samsung/privilege/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-static {p0}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_15

    .line 182
    .end local v1    # "i":I
    :cond_14
    :goto_14
    return-void

    .line 168
    .restart local v1    # "i":I
    :cond_15
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_16
    invoke-static {p0}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/StickerSet;

    iget-object v5, v5, Lcom/samsung/privilege/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_73

    move-result v5

    if-lt v2, v5, :cond_2b

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 170
    :cond_2b
    :try_start_2b
    invoke-static {p0}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/StickerSet;

    iget-object v5, v5, Lcom/samsung/privilege/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/Sticker;

    iget-object v4, v5, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    .line 171
    .local v4, "text":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/StickerSet;

    iget-object v5, v5, Lcom/samsung/privilege/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/Sticker;

    .line 172
    .local v3, "sticker":Lcom/samsung/privilege/bean/Sticker;
    sget-object v5, Lcom/samsung/privilege/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_56} :catch_59

    .line 168
    .end local v3    # "sticker":Lcom/samsung/privilege/bean/Sticker;
    .end local v4    # "text":Ljava/lang/String;
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 173
    :catch_59
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5a
    const-string v5, "buzzebees.sticker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(InitStickerMapping|Exception|skip):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_72} :catch_73

    goto :goto_56

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :catch_73
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "buzzebees.sticker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(InitStickerMapping|Exception):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private static InitStickerSets(Ljava/lang/String;Landroid/content/Context;)V
    .registers 19
    .param p0, "sticker_sets"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 91
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sput-object v14, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    .line 92
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v7, "stickerSetsTemp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v8, "stickerSetsTemp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    new-instance v5, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 95
    .local v5, "jsonRoot":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_5a

    .line 99
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/UserLogin;->GetStickerOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "strStickerOrder":Ljava/lang/String;
    const-string v14, "["

    const-string v15, ""

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 102
    const-string v14, "]"

    const-string v15, ""

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 103
    const-string v14, "\""

    const-string v15, ""

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 104
    const-string v14, ","

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, "strStickerOrderArray":[Ljava/lang/String;
    array-length v14, v11

    if-lez v14, :cond_fa

    .line 107
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_5b

    .line 116
    const/4 v3, 0x0

    :goto_4b
    array-length v14, v11

    if-lt v3, v14, :cond_9e

    .line 126
    const/4 v3, 0x0

    :goto_4f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v3, v14, :cond_c6

    .line 142
    sput-object v8, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    .line 154
    :cond_57
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/util/StickerUtil;->InitStickerMapping(Landroid/content/Context;)V
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_12c

    .line 161
    .end local v3    # "i":I
    .end local v5    # "jsonRoot":Lorg/json/JSONArray;
    .end local v7    # "stickerSetsTemp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .end local v8    # "stickerSetsTemp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .end local v10    # "strStickerOrder":Ljava/lang/String;
    .end local v11    # "strStickerOrderArray":[Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-void

    .line 109
    .restart local v3    # "i":I
    .restart local v5    # "jsonRoot":Lorg/json/JSONArray;
    .restart local v7    # "stickerSetsTemp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .restart local v8    # "stickerSetsTemp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .restart local v10    # "strStickerOrder":Ljava/lang/String;
    .restart local v11    # "strStickerOrderArray":[Ljava/lang/String;
    :cond_5b
    :try_start_5b
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 110
    .local v6, "json_stickerset":Lorg/json/JSONObject;
    new-instance v14, Lcom/samsung/privilege/bean/StickerSet;

    invoke-direct {v14, v6}, Lcom/samsung/privilege/bean/StickerSet;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_67} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_67} :catch_12c

    .line 107
    .end local v6    # "json_stickerset":Lorg/json/JSONObject;
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 111
    :catch_6a
    move-exception v2

    .line 112
    .local v2, "e":Lorg/json/JSONException;
    :try_start_6b
    const-string v14, "buzzebees.sticker"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(InitStickerSets|JSONException|for|1):"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_83} :catch_84
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_83} :catch_12c

    goto :goto_67

    .line 156
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v5    # "jsonRoot":Lorg/json/JSONArray;
    .end local v7    # "stickerSetsTemp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .end local v8    # "stickerSetsTemp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .end local v10    # "strStickerOrder":Ljava/lang/String;
    .end local v11    # "strStickerOrderArray":[Ljava/lang/String;
    :catch_84
    move-exception v2

    .line 157
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string v14, "buzzebees.sticker"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(InitStickerSets|JSONException):"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 117
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "i":I
    .restart local v5    # "jsonRoot":Lorg/json/JSONArray;
    .restart local v7    # "stickerSetsTemp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .restart local v8    # "stickerSetsTemp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .restart local v10    # "strStickerOrder":Ljava/lang/String;
    .restart local v11    # "strStickerOrderArray":[Ljava/lang/String;
    :cond_9e
    :try_start_9e
    aget-object v9, v11, v3

    .line 118
    .local v9, "strOrder":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_a1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v4, v14, :cond_aa

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 119
    :cond_aa
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/privilege/bean/StickerSet;

    .line 120
    .local v12, "temp1":Lcom/samsung/privilege/bean/StickerSet;
    iget-object v14, v12, Lcom/samsung/privilege/bean/StickerSet;->Name:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c3

    .line 121
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 127
    .end local v4    # "j":I
    .end local v9    # "strOrder":Ljava/lang/String;
    .end local v12    # "temp1":Lcom/samsung/privilege/bean/StickerSet;
    :cond_c6
    const/4 v1, 0x0

    .line 128
    .local v1, "blnAdded":Z
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/privilege/bean/StickerSet;

    .line 129
    .restart local v12    # "temp1":Lcom/samsung/privilege/bean/StickerSet;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_ce
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v4, v14, :cond_dd

    .line 137
    :goto_d4
    if-nez v1, :cond_d9

    .line 138
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_d9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4f

    .line 130
    :cond_dd
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/privilege/bean/StickerSet;

    .line 131
    .local v13, "temp2":Lcom/samsung/privilege/bean/StickerSet;
    iget-object v14, v13, Lcom/samsung/privilege/bean/StickerSet;->Name:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v12, Lcom/samsung/privilege/bean/StickerSet;->Name:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f7

    .line 132
    const/4 v1, 0x1

    .line 133
    goto :goto_d4

    .line 129
    :cond_f7
    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 144
    .end local v1    # "blnAdded":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v12    # "temp1":Lcom/samsung/privilege/bean/StickerSet;
    .end local v13    # "temp2":Lcom/samsung/privilege/bean/StickerSet;
    :cond_fa
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_fb
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_fe
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_fe} :catch_84
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_fe} :catch_12c

    move-result v14

    if-ge v3, v14, :cond_57

    .line 146
    :try_start_101
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 147
    .restart local v6    # "json_stickerset":Lorg/json/JSONObject;
    sget-object v14, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    new-instance v15, Lcom/samsung/privilege/bean/StickerSet;

    invoke-direct {v15, v6}, Lcom/samsung/privilege/bean/StickerSet;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10f
    .catch Lorg/json/JSONException; {:try_start_101 .. :try_end_10f} :catch_112
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_10f} :catch_12c

    .line 144
    .end local v6    # "json_stickerset":Lorg/json/JSONObject;
    :goto_10f
    add-int/lit8 v3, v3, 0x1

    goto :goto_fb

    .line 148
    :catch_112
    move-exception v2

    .line 149
    .restart local v2    # "e":Lorg/json/JSONException;
    :try_start_113
    const-string v14, "buzzebees.sticker"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(InitStickerSets|JSONException|for|2):"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12b
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_12b} :catch_84
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_12b} :catch_12c

    goto :goto_10f

    .line 158
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v5    # "jsonRoot":Lorg/json/JSONArray;
    .end local v7    # "stickerSetsTemp1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .end local v8    # "stickerSetsTemp2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/StickerSet;>;"
    .end local v10    # "strStickerOrder":Ljava/lang/String;
    .end local v11    # "strStickerOrderArray":[Ljava/lang/String;
    :catch_12c
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/Exception;
    const-string v14, "buzzebees.sticker"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(InitStickerSets|Exception):"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a
.end method

.method public static STICKERS_MAPPING(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 2
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/privilege/bean/Sticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/privilege/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/privilege/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 58
    sget-object v0, Lcom/samsung/privilege/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    .line 61
    :goto_e
    return-object v0

    .line 60
    :cond_f
    invoke-static {p0}, Lcom/samsung/privilege/util/StickerUtil;->InitStickerMapping(Landroid/content/Context;)V

    .line 61
    sget-object v0, Lcom/samsung/privilege/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    goto :goto_e
.end method

.method public static STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/StickerSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v1, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 40
    sget-object v1, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    .line 51
    :goto_e
    return-object v1

    .line 42
    :cond_f
    if-eqz p0, :cond_2c

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    .line 44
    invoke-static {p0}, Lcom/samsung/privilege/util/StickerUtil;->GetStickerSets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "sticker_sets":Ljava/lang/String;
    if-eqz v0, :cond_29

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 46
    invoke-static {v0, p0}, Lcom/samsung/privilege/util/StickerUtil;->InitStickerSets(Ljava/lang/String;Landroid/content/Context;)V

    .line 49
    :cond_29
    sget-object v1, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    goto :goto_e

    .line 51
    .end local v0    # "sticker_sets":Ljava/lang/String;
    :cond_2c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e
.end method

.method public static SetStickerSets(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "sticker_sets"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v1, Lcom/samsung/privilege/util/StickerUtil;->PREF_KEY_STICKER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "StickerSets"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method static synthetic access$0(Ljava/lang/String;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/StickerUtil;->InitStickerSets(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static loadStickerSet(Landroid/content/Context;)V
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/config/samsunggift_sticker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/samsung/privilege/util/StickerUtil$GetStickerOrderListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/StickerUtil$GetStickerOrderListener;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 190
    return-void
.end method
