.class public Lcom/bzbs/lib/survey/bean/Place;
.super Ljava/lang/Object;
.source "Place.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public buzz:I

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
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/Place;->id:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v1, "id"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Place;->id:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "name"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Place;->name:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "category"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Place;->category:Ljava/lang/String;

    .line 47
    :try_start_1f
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "street"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Place;->street:Ljava/lang/String;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_2f} :catch_ed

    .line 53
    :goto_2f
    :try_start_2f
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "city"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Place;->city:Ljava/lang/String;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3f} :catch_f2

    .line 59
    :goto_3f
    :try_start_3f
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Place;->state:Ljava/lang/String;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_4f} :catch_f7

    .line 65
    :goto_4f
    :try_start_4f
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "zip"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Place;->zip:Ljava/lang/String;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_5f} :catch_fc

    .line 71
    :goto_5f
    :try_start_5f
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "country"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Place;->country:Ljava/lang/String;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_6f} :catch_101

    .line 78
    :goto_6f
    :try_start_6f
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "latitude"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/lib/survey/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/lib/survey/bean/Place;->latitude:F
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_87} :catch_108

    .line 85
    :goto_87
    :try_start_87
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "longitude"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/lib/survey/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/lib/survey/bean/Place;->longitude:F
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_9f} :catch_106

    .line 90
    :goto_9f
    const-string/jumbo v1, "checkins"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Place;->checkins:J

    .line 91
    const-string/jumbo v1, "were_here_count"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Place;->were_here_count:J

    .line 92
    const-string/jumbo v1, "talking_about_count"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Place;->talking_about_count:J

    .line 94
    const-string/jumbo v1, "isBuzzeBeesPlace"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/Place;->isBuzzeBeesPlace:Z

    .line 95
    const-string/jumbo v1, "rank"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/lib/survey/bean/Place;->rank:I

    .line 96
    const-string/jumbo v1, "distance"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    long-to-float v1, v2

    iput v1, p0, Lcom/bzbs/lib/survey/bean/Place;->distance:F

    .line 97
    const-string/jumbo v1, "rating"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/lib/survey/bean/Place;->rating:I

    .line 98
    const-string/jumbo v1, "buzz"

    invoke-static {p1, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/lib/survey/bean/Place;->buzz:I

    .line 99
    return-void

    .line 48
    :catch_ed
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/bzbs/lib/survey/bean/Place;->street:Ljava/lang/String;

    goto/16 :goto_2f

    .line 54
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_f2
    move-exception v0

    .line 55
    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/bzbs/lib/survey/bean/Place;->city:Ljava/lang/String;

    goto/16 :goto_3f

    .line 60
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_f7
    move-exception v0

    .line 61
    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/bzbs/lib/survey/bean/Place;->state:Ljava/lang/String;

    goto/16 :goto_4f

    .line 66
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_fc
    move-exception v0

    .line 67
    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/bzbs/lib/survey/bean/Place;->zip:Ljava/lang/String;

    goto/16 :goto_5f

    .line 72
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_101
    move-exception v0

    .line 73
    .restart local v0    # "e":Lorg/json/JSONException;
    iput-object v3, p0, Lcom/bzbs/lib/survey/bean/Place;->country:Ljava/lang/String;

    goto/16 :goto_6f

    .line 86
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_106
    move-exception v1

    goto :goto_9f

    .line 79
    :catch_108
    move-exception v1

    goto/16 :goto_87
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
