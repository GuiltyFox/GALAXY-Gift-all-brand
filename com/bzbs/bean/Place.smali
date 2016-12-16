.class public Lcom/bzbs/bean/Place;
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

.field public description:Ljava/lang/String;

.field public distance:F

.field public id:Ljava/lang/String;

.field public isBuzzeBeesPlace:Z

.field public latitude:F

.field public longitude:F

.field public mQueueItem:Lcom/bzbs/bean/QueueItem;

.field public name:Ljava/lang/String;

.field public rank:I

.field public rating:I

.field public services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/Place_Service;",
            ">;"
        }
    .end annotation
.end field

.field public state:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public talking_about_count:J

.field public were_here_count:J

.field public zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/Place;->services:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    .line 41
    iput-object p1, p0, Lcom/bzbs/bean/Place;->id:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/Place;->services:Ljava/util/ArrayList;

    .line 38
    iput-object v2, p0, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    .line 49
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->id:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->name:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "category"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->category:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "description"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->description:Ljava/lang/String;

    .line 55
    :try_start_31
    const-string/jumbo v0, "services"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/bean/Place_Service;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->services:Ljava/util/ArrayList;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_10c

    .line 61
    :goto_3e
    :try_start_3e
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "street"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->street:Ljava/lang/String;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4e} :catch_116

    .line 67
    :goto_4e
    :try_start_4e
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "city"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->city:Ljava/lang/String;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_5e} :catch_11b

    .line 73
    :goto_5e
    :try_start_5e
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "state"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->state:Ljava/lang/String;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_6e} :catch_120

    .line 79
    :goto_6e
    :try_start_6e
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "zip"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->zip:Ljava/lang/String;
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_7e} :catch_125

    .line 85
    :goto_7e
    :try_start_7e
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "country"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Place;->country:Ljava/lang/String;
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_8e} :catch_12a

    .line 92
    :goto_8e
    :try_start_8e
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "latitude"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->b(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Place;->latitude:F
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_a6} :catch_131

    .line 99
    :goto_a6
    :try_start_a6
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "longitude"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/BBUtil;->b(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Place;->longitude:F
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_a6 .. :try_end_be} :catch_12f

    .line 104
    :goto_be
    const-string/jumbo v0, "checkins"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/Place;->checkins:J

    .line 105
    const-string/jumbo v0, "were_here_count"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/Place;->were_here_count:J

    .line 106
    const-string/jumbo v0, "talking_about_count"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/Place;->talking_about_count:J

    .line 108
    const-string/jumbo v0, "isBuzzeBeesPlace"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Place;->isBuzzeBeesPlace:Z

    .line 109
    const-string/jumbo v0, "rank"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Place;->rank:I

    .line 110
    const-string/jumbo v0, "distance"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/bzbs/bean/Place;->distance:F

    .line 111
    const-string/jumbo v0, "rating"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Place;->rating:I

    .line 112
    const-string/jumbo v0, "buzz"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Place;->buzz:I

    .line 113
    return-void

    .line 56
    :catch_10c
    move-exception v0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/Place;->services:Ljava/util/ArrayList;

    goto/16 :goto_3e

    .line 62
    :catch_116
    move-exception v0

    .line 63
    iput-object v2, p0, Lcom/bzbs/bean/Place;->street:Ljava/lang/String;

    goto/16 :goto_4e

    .line 68
    :catch_11b
    move-exception v0

    .line 69
    iput-object v2, p0, Lcom/bzbs/bean/Place;->city:Ljava/lang/String;

    goto/16 :goto_5e

    .line 74
    :catch_120
    move-exception v0

    .line 75
    iput-object v2, p0, Lcom/bzbs/bean/Place;->state:Ljava/lang/String;

    goto/16 :goto_6e

    .line 80
    :catch_125
    move-exception v0

    .line 81
    iput-object v2, p0, Lcom/bzbs/bean/Place;->zip:Ljava/lang/String;

    goto/16 :goto_7e

    .line 86
    :catch_12a
    move-exception v0

    .line 87
    iput-object v2, p0, Lcom/bzbs/bean/Place;->country:Ljava/lang/String;

    goto/16 :goto_8e

    .line 100
    :catch_12f
    move-exception v0

    goto :goto_be

    .line 93
    :catch_131
    move-exception v0

    goto/16 :goto_a6
.end method

.method public static GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 119
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/Place;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/Place;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 117
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 124
    :cond_1b
    return-object v1

    .line 120
    :catch_1c
    move-exception v2

    goto :goto_18
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
