.class public Lcom/bzbs/lib/survey/util/StickerUtil;
.super Ljava/lang/Object;
.source "StickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/StickerUtil$GetStickerSetListener;
    }
.end annotation


# static fields
.field private static final LOGCAT:Ljava/lang/String; = "buzzebees.sticker"

.field public static PREF_KEY_STICKER:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static gStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static gStickersMapping:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string/jumbo v0, "Sticker"

    sput-object v0, Lcom/bzbs/lib/survey/util/StickerUtil;->PREF_KEY_STICKER:Ljava/lang/String;

    .line 23
    const-class v0, Lcom/bzbs/lib/survey/util/StickerUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/StickerUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetStickerSets(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v1, Lcom/bzbs/lib/survey/util/StickerUtil;->PREF_KEY_STICKER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "StickerSets"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static InitStickerMapping(Landroid/content/Context;)V
    .registers 9
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 93
    if-eqz p0, :cond_94

    .line 94
    :try_start_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_94

    .line 96
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_15
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/StickerSet;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_75

    move-result v5

    if-ge v2, v5, :cond_95

    .line 98
    :try_start_27
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/StickerSet;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/Sticker;

    iget-object v4, v5, Lcom/bzbs/lib/survey/bean/Sticker;->Text:Ljava/lang/String;

    .line 99
    .local v4, "text":Ljava/lang/String;
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bzbs/lib/survey/bean/StickerSet;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/Sticker;

    .line 100
    .local v3, "sticker":Lcom/bzbs/lib/survey/bean/Sticker;
    sget-object v5, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_52} :catch_55

    .line 96
    .end local v3    # "sticker":Lcom/bzbs/lib/survey/bean/Sticker;
    .end local v4    # "text":Ljava/lang/String;
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 101
    :catch_55
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :try_start_56
    const-string/jumbo v5, "buzzebees.sticker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(InitStickerMapping|Exception|skip):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_74} :catch_75

    goto :goto_52

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :catch_75
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "buzzebees.sticker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(InitStickerMapping|Exception):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_94
    return-void

    .line 95
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a
.end method

.method public static InitStickerSets(Ljava/lang/String;Landroid/content/Context;)V
    .registers 9
    .param p0, "sticker_sets"    # Ljava/lang/String;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 69
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    .line 71
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "jsonRoot":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_69

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_6e

    move-result v4

    if-ge v1, v4, :cond_6a

    .line 75
    :try_start_19
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 76
    .local v3, "json_stickerset":Lorg/json/JSONObject;
    sget-object v4, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    new-instance v5, Lcom/bzbs/lib/survey/bean/StickerSet;

    invoke-direct {v5, v3}, Lcom/bzbs/lib/survey/bean/StickerSet;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_27} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_6e

    .line 73
    .end local v3    # "json_stickerset":Lorg/json/JSONObject;
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 77
    :catch_2a
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2b
    const-string/jumbo v4, "buzzebees.sticker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(InitStickerSets|JSONException|for):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_49} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_49} :catch_6e

    goto :goto_27

    .line 84
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v2    # "jsonRoot":Lorg/json/JSONArray;
    :catch_4a
    move-exception v0

    .line 85
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v4, "buzzebees.sticker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(InitStickerSets|JSONException):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_69
    :goto_69
    return-void

    .line 82
    .restart local v1    # "i":I
    .restart local v2    # "jsonRoot":Lorg/json/JSONArray;
    :cond_6a
    :try_start_6a
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/StickerUtil;->InitStickerMapping(Landroid/content/Context;)V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_6d} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_69

    .line 86
    .end local v1    # "i":I
    .end local v2    # "jsonRoot":Lorg/json/JSONArray;
    :catch_6e
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "buzzebees.sticker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(InitStickerSets|Exception):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69
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
            "Lcom/bzbs/lib/survey/bean/Sticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 60
    sget-object v0, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

    .line 63
    :goto_e
    return-object v0

    .line 62
    :cond_f
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/StickerUtil;->InitStickerMapping(Landroid/content/Context;)V

    .line 63
    sget-object v0, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickersMapping:Ljava/util/HashMap;

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
            "Lcom/bzbs/lib/survey/bean/StickerSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v1, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 42
    sget-object v1, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    .line 53
    :goto_e
    return-object v1

    .line 44
    :cond_f
    if-eqz p0, :cond_2d

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    .line 46
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/StickerUtil;->GetStickerSets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "sticker_sets":Ljava/lang/String;
    if-eqz v0, :cond_2a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 48
    invoke-static {v0, p0}, Lcom/bzbs/lib/survey/util/StickerUtil;->InitStickerSets(Ljava/lang/String;Landroid/content/Context;)V

    .line 51
    :cond_2a
    sget-object v1, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    goto :goto_e

    .line 53
    .end local v0    # "sticker_sets":Ljava/lang/String;
    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e
.end method

.method public static SetStickerSets(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "sticker_sets"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v1, Lcom/bzbs/lib/survey/util/StickerUtil;->PREF_KEY_STICKER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "StickerSets"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/bzbs/lib/survey/util/StickerUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static loadStickerSet(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/stickerset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/bzbs/lib/survey/util/StickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadStickerSet|url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/bzbs/lib/survey/util/StickerUtil$GetStickerSetListener;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/StickerUtil$GetStickerSetListener;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/bzbs/lib/survey/util/http/RQListener;Ljava/lang/Object;)V

    .line 120
    return-void
.end method
