.class public Lcom/samsung/privilege/bean/PlaceNewDetail;
.super Ljava/lang/Object;
.source "PlaceNewDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buzz:J

.field public category:Ljava/lang/String;

.field public checkins:J

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public distance:F

.field public id:Ljava/lang/String;

.field public isBuzzeBeesPlace:Z

.field public latitude:F

.field public longitude:F

.field public name:Ljava/lang/String;

.field public rank:I

.field public rating:I

.field public state:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public talking_about_count:J

.field public were_here_count:J

.field public zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->id:Ljava/lang/String;

    .line 39
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 40
    const-string v1, "category"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->category:Ljava/lang/String;

    .line 43
    :try_start_1c
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "street"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->street:Ljava/lang/String;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_2a} :catch_d4

    .line 49
    :goto_2a
    :try_start_2a
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "city"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->city:Ljava/lang/String;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_38} :catch_d9

    .line 55
    :goto_38
    :try_start_38
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "state"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->state:Ljava/lang/String;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_46} :catch_de

    .line 61
    :goto_46
    :try_start_46
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "zip"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->zip:Ljava/lang/String;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_54} :catch_e3

    .line 67
    :goto_54
    :try_start_54
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "country"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->country:Ljava/lang/String;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_62} :catch_e8

    .line 74
    :goto_62
    :try_start_62
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "latitude"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_78} :catch_ef

    .line 82
    :goto_78
    :try_start_78
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "longitude"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_8e} :catch_ed

    .line 87
    :goto_8e
    const-string v1, "checkins"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->checkins:J

    .line 88
    const-string v1, "were_here_count"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->were_here_count:J

    .line 89
    const-string v1, "talking_about_count"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->talking_about_count:J

    .line 91
    const-string v1, "isBuzzeBeesPlace"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->isBuzzeBeesPlace:Z

    .line 92
    const-string v1, "rank"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->rank:I

    .line 93
    const-string v1, "distance"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    long-to-float v1, v2

    iput v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->distance:F

    .line 94
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->rating:I

    .line 95
    const-string v1, "buzz"

    invoke-static {p1, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->buzz:J

    .line 97
    return-void

    .line 44
    :catch_d4
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->street:Ljava/lang/String;

    goto/16 :goto_2a

    .line 50
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_d9
    move-exception v0

    .line 51
    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->city:Ljava/lang/String;

    goto/16 :goto_38

    .line 56
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_de
    move-exception v0

    .line 57
    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->state:Ljava/lang/String;

    goto/16 :goto_46

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_e3
    move-exception v0

    .line 63
    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->zip:Ljava/lang/String;

    goto/16 :goto_54

    .line 68
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_e8
    move-exception v0

    .line 69
    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/samsung/privilege/bean/PlaceNewDetail;->country:Ljava/lang/String;

    goto/16 :goto_62

    .line 83
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_ed
    move-exception v1

    goto :goto_8e

    .line 76
    :catch_ef
    move-exception v1

    goto :goto_78
.end method
