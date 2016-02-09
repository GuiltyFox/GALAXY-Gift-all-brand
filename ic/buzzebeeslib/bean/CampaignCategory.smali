.class public Lic/buzzebeeslib/bean/CampaignCategory;
.super Ljava/lang/Object;
.source "CampaignCategory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public Active:Z

.field public Cat:Ljava/lang/String;

.field public Count:I

.field public CreateDate:Ljava/lang/String;

.field public Detail:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public IsSelected:Z

.field public Mode:Ljava/lang/String;

.field public ModifyDate:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Name_En:Ljava/lang/String;

.field public Name_Th:Ljava/lang/String;

.field public subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignCategory;->subitems:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->subitems:Ljava/util/ArrayList;

    .line 57
    const-string v4, "id"

    invoke-static {p1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->ID:Ljava/lang/String;

    .line 58
    const-string v4, "name"

    invoke-static {p1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    .line 59
    const-string v4, "name_en"

    invoke-static {p1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->Name_En:Ljava/lang/String;

    .line 60
    const-string v4, "name_th"

    invoke-static {p1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->Name_Th:Ljava/lang/String;

    .line 66
    const-string v4, "count"

    invoke-static {p1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->Count:I

    .line 67
    const-string v4, "mode"

    invoke-static {p1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    .line 68
    const-string v4, "cat"

    invoke-static {p1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    .line 72
    :try_start_42
    const-string v4, "subitems"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 74
    .local v3, "jsonSubitems":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->subitems:Ljava/util/ArrayList;

    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_50
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_57

    .line 83
    .end local v1    # "i":I
    .end local v3    # "jsonSubitems":Lorg/json/JSONArray;
    :goto_56
    return-void

    .line 76
    .restart local v1    # "i":I
    .restart local v3    # "jsonSubitems":Lorg/json/JSONArray;
    :cond_57
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    .local v2, "jsonSub":Lorg/json/JSONObject;
    iget-object v4, p0, Lic/buzzebeeslib/bean/CampaignCategory;->subitems:Ljava/util/ArrayList;

    new-instance v5, Lic/buzzebeeslib/bean/CampaignCategory;

    invoke-direct {v5, v2}, Lic/buzzebeeslib/bean/CampaignCategory;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_65} :catch_68

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 80
    .end local v1    # "i":I
    .end local v2    # "jsonSub":Lorg/json/JSONObject;
    .end local v3    # "jsonSubitems":Lorg/json/JSONArray;
    :catch_68
    move-exception v0

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(JSONException|CampaignCategoty):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
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
    .line 47
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
