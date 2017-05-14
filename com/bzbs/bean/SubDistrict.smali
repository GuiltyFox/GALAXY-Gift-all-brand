.class public Lcom/bzbs/bean/SubDistrict;
.super Ljava/lang/Object;
.source "SubDistrict.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public Active:Z

.field public CaptionString:Ljava/lang/String;

.field public CityId:Ljava/lang/String;

.field public DistrictCode:Ljava/lang/String;

.field public DistrictName:Ljava/lang/String;

.field public DistrictName_EN:Ljava/lang/String;

.field public ProvinceCode:Ljava/lang/String;

.field public ProvinceName:Ljava/lang/String;

.field public ProvinceName_EN:Ljava/lang/String;

.field public SubDistrictCode:Ljava/lang/String;

.field public SubDistrictName:Ljava/lang/String;

.field public SubDistrictName_EN:Ljava/lang/String;

.field public ZipCode:Ljava/lang/String;

.field public locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->CityId:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->SubDistrictCode:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->SubDistrictName:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->SubDistrictName_EN:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->ZipCode:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->DistrictCode:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->DistrictName:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->DistrictName_EN:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->ProvinceCode:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->ProvinceName:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->ProvinceName_EN:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/bean/SubDistrict;->Active:Z

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->CaptionString:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "1033"

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->locale:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "CityId"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->CityId:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "SubDistrictCode"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->SubDistrictCode:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "SubDistrictName"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->SubDistrictName:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "SubDistrictName_EN"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->SubDistrictName_EN:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "ZipCode"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->ZipCode:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "DistrictCode"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->DistrictCode:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "DistrictName"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->DistrictName:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "DistrictName_EN"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->DistrictName_EN:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "ProvinceCode"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->ProvinceCode:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "ProvinceName"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->ProvinceName:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "ProvinceName_EN"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/SubDistrict;->ProvinceName_EN:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "Active"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/SubDistrict;->Active:Z

    .line 60
    iput-object p2, p0, Lcom/bzbs/bean/SubDistrict;->locale:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static GetArrayList(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/SubDistrict;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 67
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/SubDistrict;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/bzbs/bean/SubDistrict;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 65
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 72
    :cond_1b
    return-object v1

    .line 68
    :catch_1c
    move-exception v2

    goto :goto_18
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bzbs/bean/SubDistrict;->CaptionString:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bzbs/bean/SubDistrict;->CaptionString:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 32
    iget-object v0, p0, Lcom/bzbs/bean/SubDistrict;->CaptionString:Ljava/lang/String;

    .line 37
    :goto_11
    return-object v0

    .line 34
    :cond_12
    iget-object v0, p0, Lcom/bzbs/bean/SubDistrict;->locale:Ljava/lang/String;

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 35
    iget-object v0, p0, Lcom/bzbs/bean/SubDistrict;->SubDistrictName:Ljava/lang/String;

    goto :goto_11

    .line 37
    :cond_20
    iget-object v0, p0, Lcom/bzbs/bean/SubDistrict;->SubDistrictName_EN:Ljava/lang/String;

    goto :goto_11
.end method
